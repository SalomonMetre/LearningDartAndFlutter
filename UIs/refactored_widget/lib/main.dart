import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Image Widget';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: MyContainerWidget(),
      ),
    );
  }
}

class DataItem {
  final String title, subtitle, url;
  const DataItem(
      {required this.title, required this.subtitle, required this.url});
}

class DataView {
    final DataItem item = const DataItem(
    title: 'Hello',
    subtitle: 'Subtitle',
    url: 'https://www.picsum.photos/250?image=9',
  );
}

class MyContainerWidget extends StatelessWidget {
  MyContainerWidget({super.key});
  final DataView data = DataView();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 180,
      color: Colors.black,
      child: Column(
        children: [
          Image.network(data.item.url),
          Text(
            data.item.title,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
          Text(
            data.item.subtitle,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
