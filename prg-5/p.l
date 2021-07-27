%{
#include<stdio.h>
#include "p.tab.h"
#include<stdlib.h>
extern char *yytext;
%}

ALPHA [A-Za-z]
DIGIT [0-9]
%%

{ALPHA}({ALPHA}|{DIGIT})* return ID;
{DIGIT}+ {yylval=atoi(yytext); return NUM;}
[\n\t] yyterminate();
[' '] ;
. return yytext[0];
%%

int yywrap(){}
