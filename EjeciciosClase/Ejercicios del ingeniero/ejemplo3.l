%{
int linea = 1;
int a=0, b=0, c=0, d=0, e=0, z=0, h=0;
%}

%%
\n  {linea = linea+1;   }
a   {printf("vocal a en linea %d\n", linea); a++;}
b   {printf("vocal e en linea %d\n", linea); b++;}
c   {printf("vocal i en linea %d\n", linea); c++;}
d   {printf("vocal o en linea %d\n", linea); d++;}
e   {printf("vocal u en linea %d\n", linea); e++;}
z   {printf("vocal z en linea %d\n", linea); z++;}
h   {printf("vocal h en linea %d\n", linea); h++;}
.   {}
%%
int main(){
    yylex();
    printf("total a = %i\n",a);
    printf("total b = %i\n",b);
    printf("total c = %i\n",c);
    printf("total d = %i\n",d);
    printf("total e = %i\n",e);
    printf("total z = %i\n",z);
    printf("total h = %i\n",h);
    return 0;
}
