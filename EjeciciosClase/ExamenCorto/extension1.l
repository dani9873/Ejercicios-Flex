%{
#include <stdio.h>
#include <string.h>
int lina = 0;
%}


%%
(\$[a-zA-Z0-9_]*) {printf("Se encontro variable: %s en la linea %d\n", yytext, yylineno); }
ftp:            { printf("URL FTP encontrada: %s en la linea %d\n", yytext, yylineno);}
(\"[^\"]*\")      { printf("Cadena encontrada: %s en la linea %d\n", yytext, yylineno);}
([0-9]+)\.([0-9]+)\.([0-9]+)\.([0-9]+) { linea += atoi(yytext); }

%%

int main() {
    yylex();
    printf("La suma de los octetos de las direcciones IP es %d\n", linea);
    return 0;
}
