// Implementing a  constructor

class DaysLeftInWeek {
  static int numDays = 7;
  late int currentDay;
  DaysLeftInWeek() {
    print('A new instance of the DaysLeftInWeek class has been created...');
    currentDay = DateTime.now().weekday.toInt();
  }

  int getDaysLeft() {
    return numDays - currentDay;
  }
}

void main() {
  final objectDaysLeftInWeek = DaysLeftInWeek();
  print(objectDaysLeftInWeek.getDaysLeft());
}
