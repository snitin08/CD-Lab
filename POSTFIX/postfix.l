%option noyywrap 
%{
#include<stdio.h>
%}

%%
[0-9] return DIGIT;

%%