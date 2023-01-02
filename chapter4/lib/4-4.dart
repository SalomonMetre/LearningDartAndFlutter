// Handling key/value pairings

void main()
{
  final mapMonths=<int, String>{};
  mapMonths[1]='January';
  final moreMonths={2:'February',3:'March',4:'April', 5:'May', 6:'June'};
  mapMonths.addEntries(moreMonths.entries);
  print(mapMonths);
}