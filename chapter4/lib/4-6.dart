// Checking if key exits

void main(){
  final moreMonths={2:'February',3:'March',4:'April', 5:'May', 6:'June'};
  print('Does key 8 exist in moreMonths ? ${moreMonths.containsKey(8)?'yes':'no'}');
}