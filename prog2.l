
%{ 

%}

%%


a.*[a-zA-Z] {printf("%s\n",yytext);}
[^a].*[a-zA-Z] {printf("Nope.\n",yytext);}

%%


int yywrap(){}
int main()
{
yylex();
	return 0;
}