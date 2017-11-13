chiffre[0-9]
letter[a-z]|[A-Z]
octal 0
hexa 0x
float e^
oct[0-7]
hex[0-9]|[a-f]|[A-F]

%%
[1-9]({chiffre})* {printf("chiffre accepté de langueur: %d",yyleng)}
{octal}({oct})* {printf("chiffre octal accepté de langueur: %d",yyleng)}
{hexa}({hex})* {printf("chiffre hexa accepté de langueur: %d",yyleng)}
{float}({chiffre})*,({chiffre})* {printf("chiffre accepté de langueur: %d",yyleng)}
%%

int main()
{
    yylex();
    return 0;
}