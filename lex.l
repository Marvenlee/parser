%{
#define YYSTYPE double
#include "calcparse.tab.h"
#include <math.h>
extern double yylval;

%}
D       [0-9.]
%%
[ \t]   { ; }
exit    return EXIT;
log      return LOG;
pi      return PIVAL;
sin     return SIN;
cos     return COS;
tan     return TAN;
and     return AND;
not     return NOT;
xor     return XOR;
or      return OR;
ans     return ANS;
fix     return FIX;
sci     return SCI;
eng     return ENG;
{D}+    { sscanf( yytext, "%lf", &yylval ); return NUMBER ; }
"<<"    return LEFTSHIFT;
">>"    return RIGHTSHIFT;
"+"     return PLUS;
"-"     return MINUS;
"~"     return UNARYMINUS;
"/"     return DIV;
"*"     return MUL;
"^"     return POW;
"("     return OPENBRACKET;
")"     return CLOSEBRACKET;
"%"     return MOD;
"^^"     return XOR;
"!!"     return NOT;
"&&"    return LAND;
"||"    return OR;
"|"     return IOR;
"&"     return AND;
"~~"     return COMPLEMENT;
"\n"    return EOLN;
%%

