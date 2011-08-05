{
let special = ['$' '@' '<' '^' '(' ')' '=' ':' '%']
let nq = ("\\\""|[^'"'])
let sym = ['-' '_' '.' '/' 'a'-'z''A'-'Z''0'-'9']*
}

rule token = parse
		' '*											{ token lexbuf }
	|	('#' [^'\n']*)? ('\n'+)		{ ("EOL", "")	}
	| '\t'											{	("TAB", "")	}
