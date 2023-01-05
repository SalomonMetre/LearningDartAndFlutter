// printing out content of map

void main(){
  final mapMonths={1:'January', 2:'February',3:'March',4:'April', 5:'May', 6:'June'};
  mapMonths.forEach((key, value){
    print('Key : $key -- Value : $value');
  });
}