LINK:= gcc
CC:= gcc
CPP:= g++
OBJDUMP:= objdump
CFLAGS:= -Wall -O2 -std=c99 -I.
YFLAGS:= -d

DEPEND:= makedepend 
APPLINK:= gcc
APPLDFLAGS:= 


.PHONY : all
.PHONY : depend
.PHONY : clean
.PHONY : dump

all:	parser
    
%.o : %.c
	$(CC) -c $(CFLAGS) $< -o $@

calcparse.tab.h : calcparse.tab.c

calcparse.tab.c : calcparse.y
	bison $(YFLAGS) calcparse.y
    
lex.yy.c: lex.l calcparse.tab.h
	flex lex.l

# $(patsubst %.c,%.o, $(wildcard *.c))

PARSER_OBJ +=  \
              calcparse.tab.c \
              lex.yy.c
              
parser:  $(PARSER_OBJ) 
	$(LINK) $(PARSER_OBJ) -lgcc -o parser -lm -lfl

clean :
	rm -f parser
	rm -f *.o
	rm -f makefile.bak
	rm -f calcparse.tab.c calcparse.tab.h lex.yy.c
	

