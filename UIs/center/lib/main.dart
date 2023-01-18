import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title='Center Widget Demo';

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
        centerTitle: true,
        title: const Text('Center Example'),
      ),
      body: _buildCenterWidget(),
    );
  }

  Widget _buildCenterWidget(){
    return const Center(
      child: Text(
        'Top Five Spoken Languages - 2022',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          color: Colors.grey,
        ),
      ),
    );
  }
}