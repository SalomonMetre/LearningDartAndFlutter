// iterating through a list of items

void main(){
  for(int i=0; i<10; i++){
    print('Current number is : $i');
  }

  // using an iterable
  const mySiblings=['Joseph','Bénédicte','Marie-Reine','Pascaline','Michel-Vainqueur','Vincent','Judith'];
  mySiblings.forEach(print);

  // Another way
  for(final sibling in mySiblings){
    print('Name : $sibling');
  }
}