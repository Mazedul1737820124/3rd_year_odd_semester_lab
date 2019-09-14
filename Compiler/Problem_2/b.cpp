
#include<iostream>
#include<stdio.h>
using namespace std;
// compiler problem no 2(a) using c++


int main(){


   int letter[26];
   letter[0] = 0;
   string str = "Munmun is the student of Computer Science & Engineering";

   for(int index = 0 ; index < str.size() ; index++){
       if(str[index] >= 'a' && str[index] <= 'z'){
            letter[str[index] - 'a']++;

       }

       else if(str[index] >= 'A' && str[index] <= 'Z'){
            letter[str[index] - 'A']++;


       }

   }

   printf("Vowels : ");
   for (int i = 0 ; i < 26 ; i++){
        if(letter[i] > 0 && (i ==  0 || i == 4 || i == 8 || i == 14 || i == 20))
             printf("%c",(char) (i+'A'));
   }
   printf("\nConsonents : ");
   for (int i = 0 ; i < 26 ; i++){
        if(letter[i] > 0 && !(i ==  0 || i == 4 || i == 8 || i == 14 || i == 20))
             printf("%c",(char) (i+'A'));
   }
return 0;
}
