// implementing Exception handling

void main(){
  String name="Salomon";
  try{
    name.indexOf(name[0], name.length - (name.length+2));
  } 
  on RangeError catch(exception){
    print('$exception');
  } 
  catch(exception){
    print('An error occurred !');
  } 
  finally{
    print('Mission completed !');
  }
}