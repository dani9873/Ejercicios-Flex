%{
#include <stdio.h>
int line_cont = 1; //Variable para llevar cuenta de la línea actual
%}


%%
[a-zA-Z]    {printf("Se encontro la letra '%c' en la linea %d\n", yytext[0], line_cont);}
\n          {line_cont++;} //Incrementar la variable line_num al final de cada línea
.           {}

%%
