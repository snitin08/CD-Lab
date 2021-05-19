%{
    #include<stdio.h>
    #include "y.tab.h"
    extern yylval;
%}

identifier [_a-zA-z][_a-zA-z0-9]*
num [0-9]+;

%%
{identifier} return IDENTIFIER;
{num} {yylval = atoi(yytext);return NUM;};
%%