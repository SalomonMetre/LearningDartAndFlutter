import 'package:counter_app/counter_app/widgets/app_title.dart';
import 'package:counter_app/counter_app/widgets/history.dart';
import 'package:flutter/material.dart';

class CounterAppBody extends StatefulWidget {
  const CounterAppBody({super.key});

  @override
  State<CounterAppBody> createState() => _CounterAppBodyState();
}

class _CounterAppBodyState extends State<CounterAppBody> {
  int counter = 0;
  List<int> increasesHistory = [];

  void increase() {
    setState(() {
      counter++;
      increasesHistory = List<int>.from(increasesHistory)..add(counter);
    });
  }

  void decrease() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const AppTitle(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: decrease,
                  child: const Text('-'),
                ),
                Text('$counter'),
                ElevatedButton(
                  onPressed: increase,
                  child: const Text('+'),
                ),
              ],
            ),
            HistoryWidget(increasesHistory: increasesHistory),
          ],
        ),
      ),
    );
  }
}
