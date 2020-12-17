
%{
int line_number = 1;
%}
line .*\n
%%
{line}      { printf("%d %s", line_number++, yytext); }
%%
int main()
{
yylex();
return 0;
}
int yywrap()
{
    return 1;
}