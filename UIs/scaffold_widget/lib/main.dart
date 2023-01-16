import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Example';

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
        title: const Text('Scaffold Example'),
        backgroundColor: Colors.blueGrey,
      ),
      bottomNavigationBar: const BottomAppBar(
        color: Colors.blueAccent,
        shape: CircularNotchedRectangle(),
        child: SizedBox(
          height: 100,
          child: Center(
            child: Text('bottomNavigationBar'),
          ),
        ),
      ),
      body: _buildCardWidget(),
    );
  }
}

/// returns a custom card  widget
Widget _buildCardWidget() {
  return const SizedBox(
    height: 400,
    child: Card(
      child: Center(
        child: Text('Top Level Card'),
      ),
    ),
  );
}
