%{
  // compiler problem no 4
%}
%option noyywrap
%%
[i-nI-N][a-zA-Z0-9]* printf("Integer variable : %s\n",yytext);
[1-9] |
[1-9][0-9] |
[1-9][0-9][0-9] |
[1-9][0-9][0-9][0-9] printf("ShortInt Number : %s\n",yytext);
[1-9][0-9][0-9][0-9][0-9]+ ("LongInt Number : %s\n",yytext);
[a-zA-Z0-9] printf("Invalid input or Undefined\n");
%%

int main(){
   
   yylex();
   
return 0;
}