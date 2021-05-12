%{
    #include<stdio.h>
    #include<stdlib.h>
    #include<string.h>
%}

%%
S:A B
;
A:'a'A'b'
|
;
B:'b'B'c'
|
;
%%

int main()
{
    yyparse();
    printf("Vaild string\n");
    return 0;
}

int yyerror()
{
    printf("Invalid string\n");
    exit(0);
}
