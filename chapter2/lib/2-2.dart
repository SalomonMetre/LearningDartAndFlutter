// Loop until a condition is met

void main(){
  bool canContinueCounting=true;
  int number=0;
  while(canContinueCounting)
  {
    print('Number is $number');
    if(++number==10)
    {
      canContinueCounting=false;
    }
  }
}