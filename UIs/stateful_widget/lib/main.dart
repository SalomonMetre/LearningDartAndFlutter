import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Stateful Widget Demo';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: const MyTextWidget(),
      ),
    );
  }
}

class MyTextWidget extends StatefulWidget {
  const MyTextWidget({super.key});

  @override
  State<MyTextWidget> createState() => _MyTextWidgetState();
}

class _MyTextWidgetState extends State<MyTextWidget> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Text('Click Me : $count')
        ),
      onTap: () {
        setState(() {
          count++;
        });
      },
    );
  }
}
