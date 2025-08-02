#![allow(unused_parens)]
#![allow(unused_variables)]
#![allow(non_snake_case)]
#![allow(unused_assignments)]

/**
 * To do:
 * Format resulting .s files better (Spacing is WHACK)
**/

pub mod parser;
use std::env;
use std::fs::File;
use std::io::Write;
use std::collections::HashMap;

static IF_FN : &str = "if_fn";
static ELSE_FN : &str = "else_fn";
static LOOP : &str = "loop";
static POST_LOOP : &str = "post_loop";
static CONTINUE : &str = "continue";

fn print_assembly(input : &String){
   println!("=====Resulting assembly=====\n{}", input);
   println!("=====End assembly=====");
}

fn exit_program() {
    std::process::exit(1);
}

fn generate_function(func : &parser::Function, list_of_func : &Vec<parser::Function>) -> String {
    let mut similar_count = 0;
    for chk in list_of_func.clone() {
        let counter = if (chk.params.len() > func.params.len()) {
            func.params.len()
        }
        else {
            chk.params.len()
        };

        for i in 0..counter {
            match chk.params.get(i).clone() {
                Some (x) => {
                    match func.params.get(i).clone() {
                        Some (y) => {
                            if (x.param_type != y.param_type) {
                                break;
                            }
                            else if (i == counter - 1){
                                if (chk.is_definition == true || chk.params.len() != func.params.len()) {
                                    similar_count += 1;
                                }                         
                            }
                        },
                        None => (),
                    }
                },
                None => (),
            }
        }
    }
    assert!(similar_count <= 1, "Found a function that is too similar.");



    result.push_str("    pushl    %ebp # Set up stack frame\n");
    result.push_str("    movl     %esp, %ebp\n");

    let mut var_map : HashMap<String, i32> = HashMap::new();
    let mut stack_index : i32 = 8;
    let mut fn_index : i32 = 0;  // I *should* use two numbers but quite frankly I don't think it matters...
    let mut cur_map : HashMap<String, i32> = HashMap::new();  // Each hashmap will be linked to its name as key and value as the assembly code

    for param in func.params.clone() {
        //Push new variable to hash map, decrement stack index.
        var_map.insert(param.name.clone(), stack_index.clone());
        cur_map.insert(param.name.clone(), stack_index.clone());
        stack_index += 4;
    }
    stack_index = 0;

    for blk in &func.list_of_blk {
        match blk.state.clone() {
            Some (x) => {
                let mut fake_var_map : HashMap<String, i32> = var_map.clone();
                let mut fake_stack_index : i32 = stack_index;
                result.push_str(generate_statement(&x, &mut fake_var_map, &mut fake_stack_index, &mut fn_index, &mut cur_map, &mut String::from(""), &mut String::from(""), &list_of_func).as_str());
            },
            None => {
                match blk.decl.clone() {
                    Some (y) => {
                        result.push_str(generate_declaration(&y, &mut var_map, &mut stack_index, &mut fn_index, &mut cur_map, &mut String::from(""), &mut String::from(""), &list_of_func).as_str());
                    },
                    None => (),
                }
            },
        }
    }

    result.push_str("    movl     $0, %eax # Default return value\n");
    result.push_str("    movl     %ebp, %esp # Deallocate any local variables on stack\n");
    result.push_str("    popl     %ebp\n");
    result.push_str("    ret\n");

    result
}


fn generate_fn_call(fn_call : &parser::FnCall, var_map : &mut HashMap<String, i32>, stack_index : &mut i32, fn_index : &mut i32, cur_map: &mut HashMap<String, i32>, loop_start : &mut String, loop_post : &mut String, list_of_func : &Vec<parser::Function>) -> String {
    let mut result = String::new();

    let mut exists = false;
    for chk in list_of_func.clone() {
        if (chk.name == fn_call.name && chk.params.len() == fn_call.args.len()) {
            exists = true;
        }
    }
    assert!(exists, "Incorrect number of params.");

    for arg in fn_call.clone().args.iter().rev() {
        result.push_str(generate_assignment(&arg, var_map, stack_index, fn_index, cur_map, loop_start, loop_post, list_of_func).as_str());
        result.push_str("    pushl    %eax\n");        
    }

    result.push_str(format!("    call     {}\n", fn_call.name).as_str());
    result.push_str(format!("    addl     ${}, %esp\n", fn_call.args.len() * 4).as_str());

    result
}


fn generate_compound(cmp : &parser::Compound, var_map : &mut HashMap<String, i32>, stack_index : &mut i32, fn_index : &mut i32, cur_map: &mut HashMap<String, i32>, loop_start : &mut String, loop_post : &mut String, list_of_func : &Vec<parser::Function>) -> String {
    let mut result = String::new();
    let mut new_cur_map : HashMap<String, i32> = HashMap::new();

    for blk in &cmp.list_of_blk {
        match blk.state.clone() {
            Some (x) => {
                let mut fake_var_map : HashMap<String, i32> = var_map.clone();
                let mut fake_stack_index : i32 = *stack_index;
                result.push_str(generate_statement(&x, &mut fake_var_map, &mut fake_stack_index, fn_index, &mut new_cur_map, loop_start, loop_post, list_of_func).as_str());
            },
            None => {
                match blk.decl.clone() {
                    Some (y) => {
                        result.push_str(generate_declaration(&y, var_map, stack_index, fn_index, &mut new_cur_map, loop_start, loop_post, list_of_func).as_str());
                    },
                    None => (),
                }
            },
        }
    }
    
    result.push_str(format!("    addl     ${}, %esp # Deallocate bytes\n", new_cur_map.len() * 4).as_str());

    result
}


fn generate_while(loop_type : &parser::While, var_map : &mut HashMap<String, i32>, stack_index : &mut i32, fn_index : &mut i32, cur_map: &mut HashMap<String, i32>, loop_start : &mut String, loop_post : &mut String, list_of_func : &Vec<parser::Function>) -> String {
    let mut result = String::new();

    *fn_index += 1;
    let while_index = *fn_index;

    *fn_index += 1;
    let continue_index = *fn_index;

    *fn_index += 1;
    let after_index = *fn_index;

    result.push_str(format!("\n{}{}:\n", LOOP, while_index).as_str());
    result.push_str(generate_assignment(&loop_type.exp, var_map, stack_index, fn_index, cur_map, loop_start, loop_post, list_of_func).as_str());
    result.push_str("    cmpl     $0, %eax\n");

    result.push_str(format!("    je       {}{}\n", POST_LOOP, after_index).as_str());

    *loop_post = format!("{}{}", POST_LOOP, after_index);
    *loop_start = format!("{}{}", CONTINUE, continue_index);
    result.push_str(generate_statement(&*loop_type.statement, var_map, stack_index, fn_index, cur_map, loop_start, loop_post, list_of_func).as_str());


    result.push_str(format!("\n{}{}:\n", CONTINUE, continue_index).as_str());
    
    result.push_str(format!("    jmp      {}{}\n", LOOP, while_index).as_str());

    result.push_str(format!("\n{}{}:\n", POST_LOOP, after_index).as_str());

    result
}


fn generate_for(loop_type : &parser::For, var_map : &mut HashMap<String, i32>, stack_index : &mut i32, fn_index : &mut i32, cur_map: &mut HashMap<String, i32>, loop_start : &mut String, loop_post : &mut String, list_of_func : &Vec<parser::Function>) -> String {
    let mut result = String::new();

    match (loop_type.optional_exp_1.clone()) {
        Some (x) => result.push_str(generate_assignment(&x, var_map, stack_index, fn_index, cur_map, loop_start, loop_post, list_of_func).as_str()),
        None => (),
    }

    *fn_index += 1;
    let for_index = *fn_index;
    result.push_str(format!("\n{}{}:\n", LOOP, for_index).as_str());

    *fn_index += 1;
    let continue_index = *fn_index;
    
    result.push_str(generate_assignment(&loop_type.exp, var_map, stack_index, fn_index, cur_map, loop_start, loop_post, list_of_func).as_str());
    result.push_str("    cmpl     $0, %eax\n");

    *fn_index += 1;
    let after_index = *fn_index;
    result.push_str(format!("    je       {}{}\n", POST_LOOP, after_index).as_str());
    *loop_post = format!("{}{}", POST_LOOP, after_index);
    *loop_start = format!("{}{}", CONTINUE, continue_index);
    result.push_str(generate_statement(&loop_type.statement, var_map, stack_index, fn_index, cur_map, loop_start, loop_post, list_of_func).as_str());
    
    result.push_str(format!("\n{}{}:\n", CONTINUE, continue_index).as_str());
    
    match (loop_type.optional_exp_2.clone()) {
        Some (x) => result.push_str(generate_assignment(&x, var_map, stack_index, fn_index, cur_map, loop_start, loop_post, list_of_func).as_str()),
        None => (),
    }
    result.push_str(format!("    jmp      {}{}\n", LOOP, for_index).as_str());
    result.push_str(format!("\n{}{}:\n", POST_LOOP, after_index).as_str());

    result
}


fn generate_for_decl(loop_type : &parser::ForDecl, var_map : &mut HashMap<String, i32>, stack_index : &mut i32, fn_index : &mut i32, cur_map: &mut HashMap<String, i32>, loop_start : &mut String, loop_post : &mut String, list_of_func : &Vec<parser::Function>) -> String {
    let mut result = String::new();
    let mut new_cur_map : HashMap<String, i32> = HashMap::new();

    result.push_str(generate_declaration(&loop_type.decl, var_map, stack_index, fn_index, &mut new_cur_map, loop_start, loop_post, list_of_func).as_str()); 

    *fn_index += 1;
    let for_index = *fn_index;
    result.push_str(format!("\n{}{}:\n", LOOP, for_index).as_str());

    *fn_index += 1;
    let continue_index = *fn_index;
    
    result.push_str(generate_assignment(&loop_type.exp, var_map, stack_index, fn_index, &mut new_cur_map, loop_start, loop_post, list_of_func).as_str());
    result.push_str("    cmpl     $0, %eax\n");

    *fn_index += 1;
    let after_index = *fn_index;
    result.push_str(format!("    je       {}{}\n", POST_LOOP, after_index).as_str());
    *loop_post = format!("{}{}", POST_LOOP, after_index);
    *loop_start = format!("{}{}", CONTINUE, continue_index);
    result.push_str(generate_statement(&loop_type.statement, var_map, stack_index, fn_index, &mut new_cur_map, loop_start, loop_post, list_of_func).as_str());

    result.push_str(format!("\n{}{}:\n", CONTINUE, continue_index).as_str());

    match (loop_type.optional_exp_2.clone()) {
        Some (x) => result.push_str(generate_assignment(&x, var_map, stack_index, fn_index, &mut new_cur_map, loop_start, loop_post, list_of_func).as_str()),
        None => (),
    }
    result.push_str(format!("    jmp      {}{}\n", LOOP, for_index).as_str());
    result.push_str(format!("\n{}{}:\n", POST_LOOP, after_index).as_str());
    result.push_str(format!("    addl     ${}, %esp # Deallocate bytes\n", new_cur_map.len() * 4).as_str());

    result
}


