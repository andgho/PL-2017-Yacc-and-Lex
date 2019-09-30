%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

extern FILE* yyin;
int yywrap()
{
        return 1;
} 
void yyerror(const char *str)
{
        fprintf(stderr,"error: %s\n",str);
}
main(/*int argc, char *argv[]*/)
{
		//yydebug = 1;
/*
		FILE *filepointer;
		int place = 1;
		filepointer = fopen(argv[1], "r");
		if(!filepointer){
			fprintf(stderr, "error opening file: %s\n", argv[1]);
			exit(1);
		}
		*/
		//yyin = filepointer;
		//printf("%d\n", place);
		//fclose(filepointer);

		int code;
        code = yyparse();
        return code;
} 
%}

%token _DECLARATION_ _DO_ _END_ _BEGIN_ _CALL_ _CONST_ _END_DO_ _END_IF_ _ARRAY_ 
%token _NUMBER_ _IDENT_ _DOTDOT_ _PROCEDURE_ _TYPE_  _END_FOR_ _END_WHILE_ _VAR_  
%token _WHILE_ _ASSIGN_ _SEMICOLON_ _FOR_ _FUNCTION_ _IF_ _IMPLEMENTATION_ _THEN_ _OF_
%start basic_program
%%

basic_program:
		declaration_unit
		implementation_unit
		{printf("basic_program completed. VERY GOOD JOB!!!\n");}
	;
optional_const:
		_CONST_	constant_declaration
		{printf("optional_const\n");}
	|
		{}
	;
optional_var:
		_VAR_ variable_declaration
		{printf("option_var\n");}
	|
		{}

	;
optional_type_declaration:
		type_declaration
		{printf("optional_type_declaration\n");}
	|
		{}
	;
optional_procedure_interface:
		procedure_interface
		{printf("optional_procedure_interface\n");}
	|
		{}
	;
optional_function_interface:
		function_interface
		{printf("optional_function_interface\n");}
	|
		{}
	;
declaration_unit:
		_DECLARATION_ _OF_ ident 
			optional_const optional_var 
			optional_type_declaration 
			optional_procedure_interface
			optional_function_interface 
		_DECLARATION_ _END_
		{printf("declaration_unit\n");}
	;
procedure_interface:
		_PROCEDURE_ ident
		{printf("procedure_interface\n");}
	|	_PROCEDURE_ ident formal_parameters
		{printf("procedure_interface\n");}
	;
function_interface:
		_FUNCTION_ ident
		{printf("function_interface\n");}
	| 	_FUNCTION_ ident formal_parameters 
		{printf("function_interface\n");}
	;
type_declaration:
		_TYPE_ ident ':' type _SEMICOLON_
		{printf("type_declaration\n");}
	;
ident_semicolon:
		ident	
	|	ident_semicolon _SEMICOLON_ ident
		{printf("ident_semicolon\n");}
	;	
formal_parameters:
		'(' ident_semicolon ')'
		{printf("formal_parameters\n");}
	;
constant_loop:
		ident '=' number
		{printf("constant_loop\n");}
	| 	constant_loop ',' ident '=' number
		{printf("constant_loop\n");}
	;
constant_declaration:
		constant_loop _SEMICOLON_
		{printf("constant_declaration\n");}
	;

variable_loop:
		ident ':' ident
		{printf("variable_loop\n");}
	| 	variable_loop ',' ident ':' ident
		{printf("varible_loop\n");}
	;
variable_declaration:
		variable_loop _SEMICOLON_
		{printf("variable_declaration\n");}
	;
type:
		basic_type
		{printf("type\n");}
	|
		array_type
		{printf("type\n");}
	;
basic_type:
		ident
		{printf("basic_type\n");}
	|
		enumerated_type
		{printf("basic_type\n");}
	|
		range_type
		{printf("basic_type\n");}
	;
ident_list:
		ident
	|	ident_list ',' ident
		{printf("ident_list\n");}
	;
enumerated_type:
		'{' ident_list '}'
		{printf("enumerated_type\n");}
	;
range_type:
		'[' range ']'
		{printf("[ range ]\n")}
	;
array_type:
		_ARRAY_ ident '[' range ']' _OF_ type
		{printf("array_type\n")}
	;
range:
		number _DOTDOT_ number
		{printf("range\n")}
	;
implementation_unit: 
		_IMPLEMENTATION_ _OF_ ident block '.'
		{printf("implementation_unit\n")}
	;
block: 
		specification_part implementation_part
		{printf("block\n")}
	;
specification_part:
		_CONST_ constant_declaration
		{printf("specification_part\n")}
	|	_VAR_ variable_declaration
	|	procedure_declaration
	|	function_declaration
	| {}
	;
procedure_declaration:
		_PROCEDURE_ ident _SEMICOLON_ block _SEMICOLON_
		{printf("procedure_declaration\n")}
	;
function_declaration:
		_FUNCTION_ ident _SEMICOLON_ block _SEMICOLON_
		{printf("function_declaration\n")}
	;
implementation_part:
		statement
		{printf("implementation_part\n")}
	;
statement:
		assignment | procedure_call | if_statement | while_statement | do_statement
	|	for_statement | compound_statement
		{printf("statement\n")}
	;
assignment:
		ident _ASSIGN_ expression
		{printf("assignment\n")}
	;
procedure_call:
		_CALL_ ident
		{printf("procedure_call\n")}
	;
if_statement:
		_IF_ expression _THEN_ statement _END_IF_
		{printf("if_statement\n")}
	;
while_statement:
		_WHILE_ expression _DO_ statement_loop _END_WHILE_
		{printf("while_statement\n")}
	;
do_statement:
		_DO_ statement_loop _WHILE_ expression _END_DO_
		{printf("do_statement\n")}
	;
for_statement:
		_FOR_ ident _ASSIGN_ expression _DO_ statement_loop _END_FOR_
		{printf("for_statement\n")}
	;
compound_statement:
		_BEGIN_ statement_loop _END_
		{printf("compound_statement\n")}
	;
statement_loop:
		statement
		{printf("statement\n")}
	|
		statement_loop _SEMICOLON_ statement
		{printf("statement ; statement\n")}
	;
expression:
		term
		{printf("term\n")} 
	|
		expression '+' term
		{printf("term + term\n")}

	| 
		expression '-' term		
		{printf("term - term\n")}
	;
term:
		id_num
		{printf("id_num\n")} 
	|
		term '*' id_num
		{printf("id_num * id_num\n")}

	| 
		term '/' id_num		
		{printf("id_num / id_num\n")}
	;
id_num:
		ident
		{ printf("id_num\n") } 
	| 
		number
		{ printf("id_num\n") }
	;
number:
	_NUMBER_
	{ printf("number\n"); }
	;
ident: 
	_IDENT_
	{ printf("ident\n"); }
	;
%%