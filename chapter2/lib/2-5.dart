// Using an enumerator

enum degreeYears {first, second, third, fourth}

void main(){ 
  // enum values
  print(degreeYears.values);

  // accessing by index
  print(degreeYears.values[0]);

  // accessing "by name"
  print(degreeYears.values.byName('second'));
}