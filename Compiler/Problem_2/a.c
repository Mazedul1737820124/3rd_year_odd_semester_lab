#include<iostream>
using namespace std;
// compiler problem no 2(a) using c++

int countVowels = 0;
int countConsonants = 0;



int main(){

   string str = "Munmun is the student of Computer Science & Engineering";
   for(int index = 0 ; index < str.size() ; index++){
       if(str[index] >= 'a' && str[index] <= 'z' || str[index] >= 'A' && str[index] <= 'A'){

         if(str[index] == 'a' || str[index] == 'e' ||str[index] == 'i' ||str[index] == 'o'
            str[index] == 'u' ||str[index] == 'A' ||str[index] == 'E' || str[index] == 'I' || str[index] == 'O' ||
            str[index] == 'U'  ){
                countVowel++;
            }
            else countConsonant++;
       }

   }

   cout<<"\nNo of vowels : "<<countVowels;
   cout<<"\nNo of consonants : "<<countConsonants;
return 0;
}
