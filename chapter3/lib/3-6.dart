// Adding custom delay
import 'dart:io';

void main() async{
  int? userInput;
  while(userInput!=0){
    print("Enter a number : ");
    userInput= int.parse(stdin.readLineSync()??'5');
    await _customDelay(userInput).then((value){
      print('Printed after $value seconds');
    }
    );
  }
}

Future<int> _customDelay(int delay) async{
  try{
    await Future.delayed(Duration(seconds:delay));
    return delay;
  }
  catch (e){
    print(e);
    return delay;
  }
}