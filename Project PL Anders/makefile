YACC = bison
GCC = gcc
EXECUTABLE = QUENYARGOLINT
LEXFILE = leks.l	
FLEX = flex
YACCFILE = yaks.y 
CFILES = yaks.tab.c lex.yy.c 

$(EXECUTABLE): $(CFILES)
	$(GCC) -ansi $(CFILES) -o $(EXECUTABLE)

lex.yy.c: $(LEXFILE) 
	$(FLEX) $(LEXFILE)

yaks.tab.c: $(YACCFILE)
	$(YACC) --report=state -d $(YACCFILE)

clean:
	touch $(EXECUTABLECUTABLE) $(CFILES) touch.output touch.tab.h
	rm $(EXECUTABLE) $(CFILES) *.output *.tab.h