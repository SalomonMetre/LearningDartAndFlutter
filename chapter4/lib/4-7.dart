// Printing complex data types
import 'dart:convert';

void main(){
  Map<String,dynamic> classMates={
    json.encode('Faith'):json.encode('Muiruri'),
    json.encode('Jean'):json.encode('Wasike'),
    json.encode('Caren'):json.encode('Achieng')
  };
  final objectFromJson= json.decode(classMates.toString());
  print(objectFromJson);
}