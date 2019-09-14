#include<stdio.h>
#include<string.h>

// Compiler Problem 1(b)

int main(){

    char str[] = "Md. Tareq Zaman, Part-3, 2011";
    int len = strlen(str);

    printf("Letters are : ");
    for(int item = 0 ; item < len ; item++){

        if(isalpha(str[item])){
            printf("%c",str[item]);
        }
    }
    printf("\nDigits are : ");
    for(int item = 0 ; item < len ; item++){

        if(isdigit(str[item])){
            printf("%c",str[item]);
        }
    }
    printf("\nOther characters are : ");
    for(int item = 0 ; item < len ; item++){

        if(!isalpha(str[item]) && !isdigit(str[item]) && str[item] != ' '){
            printf("%c",str[item]);
        }
    }


return 0;
}

