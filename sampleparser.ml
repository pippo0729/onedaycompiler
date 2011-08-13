open Camlp4.PreCast

let expression = Gram.Entry.mk "expression"


EXTEND Gram
	GLOBAL: expression;
	expression: [ [ INT ] ];
END


let _ = Gram.parse_string expression (Loc.mk "<string>") (read_line ())
