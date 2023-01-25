import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title='Expanded Widget';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(title),
        ),
        body: const MyExpandedWidget(),
      ),
    );
  }
}

class MyExpandedWidget extends StatelessWidget {
  const MyExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.transparent,
            child: Center(
              child: RichText(
                text: const TextSpan(
                  text: 'Luxembourg',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.grey,
                  )
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.blue,
          ),
        )
      ],
    );
  } 
}