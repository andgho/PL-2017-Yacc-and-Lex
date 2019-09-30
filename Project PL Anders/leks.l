%{
#include <stdio.h>
#include "yaks.tab.h"
%}
%%

"DECLARATION" return _DECLARATION_;
"OF" return _OF_;
"CONST" return _CONST_;
"VAR" return _VAR_;
"END" return _END_;
"PROCEDURE"	return _PROCEDURE_;
"FUNCTION" return _FUNCTION_;
"TYPE" return _TYPE_;
"ARRAY" return _ARRAY_; 
"IMPLEMENTATION" return _IMPLEMENTATION_;
"CALL" return _CALL_;
"IF" return _IF_;
"THEN" return _THEN_;
"END IF" return _END_IF_;
"WHILE" return _WHILE_;
"DO" return _DO_;	
"END DO" return _END_DO_;
"END WHILE" return _END_WHILE_;
"FOR" return _FOR_;
"END FOR" return _END_FOR_;
"BEGIN" return _BEGIN_;
":=" return _ASSIGN_;
";"	return _SEMICOLON_;
"["	return '[';
"]"	return ']';
"{"	return '{';
"}"	return '}';
"("	return '(';
")"	return ')';
"."	return '.';
","	return ','; 
"="	return '=';
"*"	return '*';
"/"	return '/';
"+"	return '+';			
"-"	return '-';
":"	return ':';
".." return _DOTDOT_;
[0-9]+ return _NUMBER_;
[a-zA-Z]+ return _IDENT_;
[ \t]+;
%%