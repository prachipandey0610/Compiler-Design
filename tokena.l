%{
#undef yywrap
#define yywrap() 1
#include<stdio.h>
%}

%%


"for"|"if"|"int"|"else"|"printf"|"return"|"void"|"char"|     {printf("\n%s is keyword",yytext);}
["](.*)[""] {printf("\n%s",yytext);}
[a-zA-Z_][a-zA-Z0-9_]*    {printf("\n%s is identifier",yytext);}
"=="|">"|"<"|"++"|">="|"<="|"*"|"+"|"%" {printf("\n%s is a operator",yytext);}
[{}(),;]       {printf("\n%s is seperator",yytext);}
([0-9]*".")*+  {printf("\n%s is constant",yytext);}

%%
void main(int argc,char **argv)
{
  yyin = fopen("C:\\ss\\cd6a\\text.c","r");

  yylex();
}
