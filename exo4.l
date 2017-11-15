car [a-z]|[A-Z]|[0-9]
word [\t ]
ligne[\n]
stop [;]
done [/]
%{
int i=0; 
int s=0;
int t=0;
%}
%%
({car}) {i=i+1;}

({word}) {  s=s+1;} 

({ligne}) {  t=t+1;} 

({stop}) {t=t+1; s=s+1;} {printf("\nthe charachters nbr: %d",i);printf("\nthe words nbr: %d",s);
printf("\nthe lignes nbr: %d",t); t=-1; s=0; i=0;}

({done}) {exit(0);}
%%
int main(){
yylex();
return 0;
}
