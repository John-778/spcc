%{
 #include<stdio.h>
%}
LETTER[a-z][A-Z]
DIGIT[0-9]
%%
[\n] {printf("Hello World\n");}
begin { printf("Recognized Keyword: %s\n", yytext);}
if {printf("Recognised Keyword: %s\n", yytext);}
{LETTER}({LETTER}|{DIGIT})* {printf("Recognized ID: %s\n",yytext);}
%%
int main()
{
yylex();
}


/*output:
$ lex test.l
$ gcc lex.yy.c -ll
$ ./a.out
hello

helloHello World
