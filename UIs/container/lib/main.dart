import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title='Container Widget Demo';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: const MyContainerWidget(),
      ),
    );
  }
}

class MyContainerWidget extends StatelessWidget {
  const MyContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200,
      width: 200,
      color: Colors.red[300],
      child: Container(
        height: 100,
        width: 100,
        color: Colors.yellow,
      ),
    );
  }
}