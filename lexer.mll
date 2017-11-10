{
open Parser
}

let num = ['0' - '9']
let num_head = ['1' '2' '3' '4' '5' '6' '7' '8' '9']

rule token = parse
| [' ' '\t' '\n']  { token lexbuf }
| ('0' | (num_head num *)) as str {INT (int_of_string str)}
| '+' { PLUS }
| '-' { MINUS }
| '*' { MUL }
| '/' { DIV }
| eof               { EOF }