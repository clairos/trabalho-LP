{
module Parser where

import Lexer 
}

%name parser 
%tokentype { Token }
%error { parserError } 

%left '+'

%token 
    num         { TokenNum $$ }
    '+'         { TokenAdd }
    '-'         { TokenSub }
    '*'         { TokenMul }
    '=='        { TokenEqual }
    '>'         { TokenGreat }
    '<'         { TokenLess }
    '&&'        { TokenAnd }
    '||'        { TokenOr }
    true        { TokenTrue }
    false       { TokenFalse }
    if          { TokenIf }
    then        { TokenThen }
    else        { TokenElse }
    var         { TokenVar $$ }
    '\\'        { TokenLam }
    '->'        { TokenArrow }
    '('         { TokenLParen }
    ')'         { TokenRParen }
    '='         { TokenEq }
    let         { TokenLet }
    in          { TokenIn }
    Bool        { TokenBoolean }
    Num         { TokenNumber }
    ':'         { TokenColon }
    Tuple       { TokenTuple }
    Tuple3      { TokenTuple3 }
    ','         { TokenComma }

%%

Exp         : num                            { Num $1 }
            | true                           { BTrue }
            | false                          { BFalse }
            | Exp '+' Exp                    { Add $1 $3 }
            | Exp '-' Exp                    { Sub $1 $3 }
            | Exp '*' Exp                    { Mul $1 $3 }
            | Exp '==' Exp                   { Equal $1 $3 }
            | Exp '>' Exp                    { Great $1 $3 }
            | Exp '<' Exp                    { Less $1 $3 }
            | Exp '&&' Exp                   { And $1 $3 }
            | Exp '||' Exp                   { Or $1 $3 }
            | if Exp then Exp else Exp       { If $2 $4 $6 }
            | var                            { Var $1 }
            | '\\' var ':' Type '->' Exp     { Lam $2 $4 $6 }
            | Exp Exp                        { App $1 $2 }
            | '(' Exp ')'                    { Paren $2 }
            | let var '=' Exp in Exp         { Let $2 $4 $6 }
            | '(' Expr ',' Expr ')'          { Tuple $2 $4 }
            | '(' Expr ',' Expr ',' Expr ')' { Tuple3 $2 $4 $6 }

Type    : Bool                              { TBool }
        | Num                               { TNum }
        | '(' Type '->' Type ')'            { TFun $2 $4 }


{

parserError :: [Token] -> a 
parserError _ = error "Syntax error!"

}