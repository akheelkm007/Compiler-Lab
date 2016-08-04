%{
#include<stdio.h>
%}

%%

\/\/.* ;
\/\*(.*\n)*.*\*\/ ;
[\t] ;

%%

main()
{
	yyin=fopen("mypgm.c","r");
	yylex();
}

int yywrap()
{
	return 1;
}
