import 'package:flutter/material.dart';

class ListTileItem {
  final String monthItem;
  const ListTileItem({required this.monthItem});
}

class ListDataItem {
  final List<String> monthItems = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  ListDataItem();
}

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'My Awesome App';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: MyListView(),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  MyListView({super.key});
  final ListDataItem item = ListDataItem();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: item.monthItems.length,
      itemBuilder: (context, index) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(item.monthItems[index]),
          const SizedBox(width: 10.0,),
        ],
      ),
    );
  }
}
