%{
	open Ast
%}

%token <int> INT
%token PLUS, MINUS, MUL, DIV
%token EOF
%type <Ast.t> main
%start main

%%

main:
| expr EOF { $1 }

expr:
| INT { Int $1 }
| expr PLUS expr { Plus ($1, $3) }
| expr MINUS expr { Minus ($1, $3) }
| expr MUL expr { Mul ($1, $3) }
| expr DIV expr { Div ($1, $3) }