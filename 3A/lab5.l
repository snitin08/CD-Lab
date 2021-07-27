%{
    #include<stdio.h>
    #include "y.tab.h"
%}

%%
"for" return 'f';
"(" return '(';
")" return ')';
"{" return '{';
"}" return '}';
. return yytext[0];
"end" return 0;
%%
