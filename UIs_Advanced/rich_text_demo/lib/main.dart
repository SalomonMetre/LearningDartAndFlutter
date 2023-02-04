import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title='RichText Demo';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(title),
        ),
        body: const MyRichText(),
      ),
    );
  }
}

class MyRichText extends StatelessWidget {
  const MyRichText({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight=MediaQuery.of(context).size.height;
    return Container(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          children: [
            const TextSpan(
              text: 'Screen height : ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.blue,
              ),
            ),
            TextSpan(
              text: '$screenHeight',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
                color: Colors.amber,
              )
            ),
          ]
        ),
      ),
    );
  }
}