import 'package:counter_app/counter_app/counter_app_body.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EnhancedCounterApp());
}

class EnhancedCounterApp extends StatelessWidget {
  const EnhancedCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterAppBody(),
      debugShowCheckedModeBanner: false,
    );
  }
}
