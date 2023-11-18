%{
int numero = 0;
int cuadrado = 0; 
%}

%%

[0-9]+      {numero = atoi(yytext); cuadradro = numero * numero;}
printf("Entero \n");
.            { }
%%

