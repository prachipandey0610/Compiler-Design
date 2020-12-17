%{ 
int lc=0, sc=0, tc=0, ch=0; 
%} 


%% 
\n        {printf("\nNo. of lines=%d", ++lc); }
[ ]+     {printf("\nNo. of spaces=%d", ++sc); }
\t        {printf("\nNo. of tabs=%d", ++tc);}
. 	       {printf("\nNo. of other characters=%d", ++ch);} 
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