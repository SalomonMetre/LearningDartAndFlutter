import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title='SizedBox Widget Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizedBox Example'),
      ),
      body: _buildSizedBoxWidget(),
    );
  }

  Widget _buildSizedBoxWidget(){
    return SingleChildScrollView(
      controller: ScrollController(
        keepScrollOffset: true,
        initialScrollOffset: 300,
      ),
      child: Wrap(
        children: const [
          SizedBox(
            width: 200,
            height: 100,
            child: Card(
              color: Colors.amber,
              child: Center(
                child: Text('Developer'),
              ),
            ),
          ),
          SizedBox(
            width: 300,
            height: 100,
            child: Card(
              color: Colors.green,
              child: Center(
                child: Text('Flutter Framework'),
              ),
            ),
          ),
          SizedBox(
            width: 400,
            height: 100,
            child: Card(
              color: Colors.blue,
              child: Center(
                child: Text('Dart SDK'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}