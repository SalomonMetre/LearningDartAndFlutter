// Adding parameters to functions

void main(){
  printTimeWithDifference(7);
} 

void printTimeWithDifference(int difference){ 
  final timeNow=DateTime.now();
  final newTime=timeNow.add(Duration(hours:difference));
  print('New time : $newTime');
}