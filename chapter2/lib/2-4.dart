// Conditional statements based on a value

void main(){
  String dayOfTheWeek='Thursday';
  switch(dayOfTheWeek){
    case 'Monday':
      print('First Day');
      break;
    case 'Tuesday':
      print('Second Day');
      break;
    case 'Wednesday':
      print('Third Day');
      break;
    case 'Thursday':
      print('Fourth Day');
      break;
    case 'Friday':
      print('Fifth Day');
      break;
    case 'Saturday':
      print('Sixth Day');
      break;
    case 'Sunday':
      print('Seventh Day');
      break;
    default:
      print('We don\'t know what you\'re saying');
      break;
  }
}