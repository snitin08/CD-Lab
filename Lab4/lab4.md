# Lab 4

Write a program to recognize the strings of the form a<sup>n</sup>b<sup>n+m</sup>c<sup>m</sup> where n>=0 and m>=0.

## Grammar
S -> AB

A -> aAb | epsilon

B -> bBc | epsilon

## Execution
```bash
lex lab4.l

yacc lab4.y

cc lex.yy.c y.tab.c -ll

./a.out
```