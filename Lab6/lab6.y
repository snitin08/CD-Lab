%{
    #include<stdio.h>
    #include<stdlib.h>
%}

%token NUM;
%left '+' '-'
%left '*' '/'

%%
S: var {printf("Result: %d\n",$$);};
var: var '+' var {$$=$1+$3;};
    | var '-' var {$$=$1-$3;};
    | var '*' var {$$=$1*$3;};
    | var '/' var {
        if($3==0)
            yyerror();
        else
            $$ = $1/$3;
    };
    | '(' var ')' {$$ = $2;};
    | NUM
    ;
%%

int main()
{
    yyparse();

}

int yyerror()
{
    printf("Invalid/Division by 0\n");
    exit(0);
}