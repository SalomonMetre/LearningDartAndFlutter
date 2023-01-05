// Using optional parameters

void main(){
  addAndPrintSum(13,5);
  addAndPrintSumWithNamedParameters(num1:12,num2:34);
}

void addAndPrintSum(int num1, [int num2=0]){
  print('Sum is : ${num1+num2}');
}

void addAndPrintSumWithNamedParameters({required int num1, required int num2}){
  print('Sum is : ${num1+num2}');
}