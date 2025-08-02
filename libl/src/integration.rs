#![allow(unused_parens)]
#![allow(unused_variables)]
#![allow(while_true)]

pub mod lexer;
use std::fs;

pub struct Program { 
    pub list_of_fnc : Vec<Function>,
}

pub struct Function {
    pub name : String,
    pub return_type : String,
    pub list_of_blk : Vec<BlockItem>,
    pub params : Vec<Parameter>,
    pub is_definition : bool,
}

pub struct Parameter {
    pub name : String,
    pub param_type : String,
}

pub struct FnCall {
    pub name : String,
    pub args : Vec<Assignment>,
}

pub struct BlockItem {
    pub state : Option<Statement>, 
    pub decl : Option<Declaration>,
}

pub struct Compound {
    pub list_of_blk : Vec<BlockItem>,
}

pub struct For {
    pub optional_exp_1 : Option<Assignment>,
    pub exp : Assignment,
    pub optional_exp_2 : Option<Assignment>,
    pub statement : Box<Statement>,
}

pub struct ForDecl {
    pub decl : Declaration,
    pub exp : Assignment,
    pub optional_exp_2 : Option<Assignment>,
    pub statement : Box<Statement>,
}

pub struct While {
    pub exp : Assignment,
    pub statement : Box<Statement>,
}

pub struct DoWhile {
    pub statement : Box<Statement>,
    pub exp : Assignment,
}

pub struct Break {
    // Empty
}

pub struct Continue {
    // Empty
}

pub struct Statement {
    pub name : String,
    pub compound : Option<Compound>,
    pub exp : Option<Assignment>,
    pub _if : Option<If>,
    pub _for : Option<For>,
    pub _for_decl : Option<ForDecl>,
    pub _while : Option<While>,
    pub _do : Option<DoWhile>,
    pub _break : Option<Break>,
    pub _continue : Option<Continue>,
}

pub struct Assignment {
    pub var : Option<Variable>,
    pub assign : Option<Box<Assignment>>,
    pub exp : Option<ConditionalExp>,
    pub op : String,
}

pub struct ConditionalExp {
    pub exp : OrExpression,
    pub true_exp : Option<Box<Assignment>>,
    pub false_exp : Option<Box<ConditionalExp>>,
}

pub struct Declaration {
    pub var : Variable,
    pub exp : Assignment,
    pub var_type : String,
}

pub struct Variable {
    pub var_name : String,
}

pub struct If {
    pub cond : Assignment,
    pub state : Option<Box<Statement>>,
    pub else_state : Option<Box<Statement>>,
}

pub struct OrExpression {
    pub op : String,
    pub left_exp : Option<Box<OrExpression>>,
    pub left_and_exp : Option<Box<AndExpression>>,
    pub right_and_exp : Option<Box<AndExpression>>,
}

pub struct AndExpression {
    pub op : String,
    pub left_exp : Option<Box<AndExpression>>,
    pub left_child : Option<Box<BitOr>>,
    pub right_child : Option<Box<BitOr>>,
}

pub struct BitOr {
    pub op : String,
    pub left_exp : Option<Box<BitOr>>,
    pub left_child : Option<Box<BitXor>>,
    pub right_child : Option<Box<BitXor>>,
}

pub struct BitXor {
    pub op : String,
    pub left_exp : Option<Box<BitXor>>,
    pub left_child : Option<Box<BitAnd>>,
    pub right_child : Option<Box<BitAnd>>,
}

pub struct BitAnd {
    pub op : String,
    pub left_exp : Option<Box<BitAnd>>,
    pub left_child : Option<Box<EqualityExp>>,
    pub right_child : Option<Box<EqualityExp>>,
}

pub struct EqualityExp {
    pub op : String,
    pub left_exp : Option<Box<EqualityExp>>,
    pub left_relation_exp : Option<Box<RelationalExp>>,
    pub right_relation_exp : Option<Box<RelationalExp>>,
}

pub struct RelationalExp {
    pub op : String,
    pub left_exp : Option<Box<RelationalExp>>,
    pub left_child : Option<Box<BitShift>>,
    pub right_child : Option<Box<BitShift>>,
}

pub struct BitShift {
    pub op : String,
    pub left_exp : Option<Box<BitShift>>,
    pub left_child : Option<Box<AdditiveExp>>,
    pub right_child : Option<Box<AdditiveExp>>,
}

pub struct AdditiveExp {
    pub op : String,
    pub left_exp : Option<Box<AdditiveExp>>,
    pub left_term : Option<Box<Term>>,
    pub right_term : Option<Box<Term>>,
}

pub struct Term {
    pub op : String,
    pub left_term : Option<Box<Term>>,
    pub left_child : Option<Box<PostFixUnary>>,
    pub right_child : Option<Box<PostFixUnary>>,
}

pub struct Factor {
    pub op : String,
    pub unary : Option<Box<Unary>>,
    pub postfix_unary : Option<Box<PostFixUnary>>,
    pub exp : Option<Box<Assignment>>,
    pub val : Option<i32>,
    pub var : Option<Variable>,
    pub fn_call : Option<FnCall>,
}

pub struct Unary {
    pub op : String,
    pub child : Option<Box<Factor>>,
}

pub struct PostFixUnary {
    pub op : String,
    pub child : Option<Box<Factor>>,
}

impl Program { 
    pub fn new () -> Program {
        Program {
            list_of_fnc : Vec::new(),
        }
    }
}

impl Function {
    pub fn new () -> Function {
        Function {
            name : String::new(),
            return_type : String::new(),
            list_of_blk : Vec::new(),
            params : Vec::new(),
            is_definition : false,
        }
    }
}

impl FnCall {
    pub fn new () -> FnCall {
        FnCall {
            name : String::new(),
            args : Vec::new(),
        }
    }
}

impl BlockItem {
    pub fn new () -> BlockItem {
        BlockItem {
            state : None,
            decl : None,
        }
    }
}

impl Parameter {
    pub fn new() -> Parameter {
        Parameter {
            name : String::new(),
            param_type : String::new(),
        }
    }
}

impl Compound {
    pub fn new () -> Compound {
        Compound {
            list_of_blk : Vec::new(),
        }
    }    
}

impl For {
    pub fn new() -> For {
        For {
            exp : Assignment::new(),
            optional_exp_1 : None,
            optional_exp_2 : None,
            statement : Box::new(Statement::new()),
        }
    }
}

impl ForDecl {
    pub fn new() -> ForDecl {
        ForDecl {
            exp : Assignment::new(),
            decl : Declaration::new(),
            optional_exp_2 : None,
            statement : Box::new(Statement::new()),            
        }
    }
}

impl DoWhile {
    pub fn new() -> DoWhile {
        DoWhile {
            exp : Assignment::new(),
            statement : Box::new(Statement::new()),
        }
    }
}

impl Break {
    pub fn new() -> Break {
        Break {

        }
    }
}

impl Continue {
    pub fn new() -> Continue {
        Continue {

        }
    }
}

impl While {
    pub fn new() -> While {
        While {
            exp : Assignment::new(),
            statement : Box::new(Statement::new()),
        }
    }
}

impl Statement {
    pub fn new () -> Statement {
        Statement {
            name : String::new(),
            compound : None,
            exp : None,
            _if : None,
            _for : None,
            _for_decl : None,
            _do : None,
            _break : None,
            _continue : None,
            _while : None,
        }
    }
}

impl Assignment {
    pub fn new() -> Assignment {
        Assignment {
            var : None,
            assign : None,
            exp : None,
            op : String::new(),
        }
    }

    pub fn set_to_zero() -> Assignment {
        Assignment {
            var : None,
            assign : None,
            exp : Some(ConditionalExp::set_to_zero()),
            op : String::new(),
        }
    }

    pub fn set_to_one() -> Assignment {
        Assignment {
            var : None,
            assign : None,
            exp : Some(ConditionalExp::set_to_one()),
            op : String::new(),
        }
    }
}

impl Declaration {
    pub fn new() -> Declaration {
        Declaration {
            var : Variable::new(),
            exp : Assignment::new(),
            var_type : String::new(),
        }
    }
}
