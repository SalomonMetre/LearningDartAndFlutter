// Declaring anonymous functions

void main(){
  print('Sum of 2 and 3 is : ${sum(num1:2,num2:3)}');
  print('Difference of 2 and 3 is : ${difference(num1:2, num2:3)}');
}

num sum({num num1=0, num num2=0})=> num1+num2;
num difference({num num1=0, num num2=0})=>num1-num2;
