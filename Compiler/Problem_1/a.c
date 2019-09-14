#include<stdio.h>
#include<string.h>

int countWords = 0;
int countLetters = 1;
int countDigits = 0;
int countOther = 0;

// Compiler Problem 1(a)

int main(){

    char str[] = "Md. Tareq Zaman, Part-3, 2011";
    int len = strlen(str);
    for(int item = 0 ; item < len ; item++){
        if(str[item] == ' '){
            countWords++;
        }
        if(isalpha(str[item])){
            countLetters++;
        }
        if(isdigit(str[item])){
            countDigits++;
        }
        if(!isdigit(str[item]) && !isalpha(str[item]) && str[item] !=' '){
            countOther++;
        }

    }
    printf("No of Words = %d\n",countWords);
    printf("No of Letters = %d\n",countLetters);
    printf("No of Digits = %d\n",countDigits);
    printf("No of Others = %d\n",countOther);

return 0;
}
