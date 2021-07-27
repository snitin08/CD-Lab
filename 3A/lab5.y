%{
    #include<stdio.h>
    #include<stdlib.h>
    #include<string.h>
%}

%%
S: 'f''('')'S
| 'f''('')''{'S'}'
|
;

%%

int main()
{
    yyparse();
    printf("valid for loop\n");
    return 0;
}

int yyerror()
{
    printf("Invalid\n");
    exit(0);
}
