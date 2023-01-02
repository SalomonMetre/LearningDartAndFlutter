// Creating a class

const numDays=7;
class DaysLeftInWeek
{
  int currentDay=0;
  DaysLeftInWeek()
  {
    currentDay=DateTime.now().weekDay.toInt();
  }

  int getDaysLeft()
  {
    return numDays-currentDay;
  }
}