// Returning a value

void main()
{
  print(getTimeFromNow(days:2, hours:5));
}

DateTime getTimeFromNow({int days=0, int hours=0, int minutes=0, int seconds=0})
{
  final timeNow=DateTime.now();
  final newTime=timeNow.add(Duration(days:days, hours:hours, minutes:minutes, seconds:seconds));
  return newTime;
}