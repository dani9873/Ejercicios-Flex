%{
#include<math.h>
#define PI 3.14159

float numero,area; 

float calcular_area(float radio){
    return PI*radio*radio; 
}

%}

ENTERO [0-9]+

%%

{ENTERO}\.{ENTERO} { numero=atof(yytext);area = calcular_area(numero); printf("Area: %f",area);}
.             {}          kn     


%%