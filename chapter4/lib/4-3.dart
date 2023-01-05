// Adding complex datatypes to a list

void main(){
  final siblings=<Map<int, String>>[];
  final first={1:'Joseph'}, second={2:'Benedict'}, third={3:'Marie-Reine'};
  siblings.addAll([first, second, third]);
  print('Here are the ${siblings.length} siblings : ');
  siblings.forEach(print);
}