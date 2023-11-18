%{
#include <stdio.h>
int linea = 1;
%}
%%

\$[a-zA-z0-9]     {printf("Se encontro la variable: '%f'\n", yytext[0], linea);}
[ftp://]           {printf("Se encontro la url ftp: '%f'\n en la linea %d",yytext[0], linea);}
\".*?\"            {printf("Se encontro la cadena: '%f'\n en la linea %d",yytext[0], linea);}
([0-9]+)\.([0-9]+)\.([0-9]+)\.([0-9]+)  {printf("Se encontro la cadena: '%f'\n en la linea %d",yytext[0], linea);}
\n                 {linea++;}
.                  {}
%%
int main() {
  yylex();
  return 0;
}
