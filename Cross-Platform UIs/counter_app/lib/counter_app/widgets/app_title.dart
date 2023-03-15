import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Icon(
          Icons.remove,
          color: Colors.redAccent,
        ),
        Text(
          'Enhanced Counter App',
        ),
        Icon(
          Icons.add,
          color: Colors.lightGreen,
        ),
      ],
    );
  }
}