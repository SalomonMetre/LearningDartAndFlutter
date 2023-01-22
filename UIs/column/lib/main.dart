import 'package:flutter/cupertino.dart';
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
        title: const Text('Center Example'),
      ),
      body: _buildCenterWidget(),
    );
  }
}

Widget _buildCenterWidget(){
  return Column(
    children: [
      const SizedBox(
        height: 10.0,
      ),
      const Center(
        child: Text(
          'Top Five Spoken Languages - 2022',
          style: TextStyle(
            fontSize: 30,
            color: Colors.grey,
          ),
        ),
      ),
      const SizedBox(
        height: 20.0,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 100.0,
                  child: Text('English'),
                ),
                Container(
                  width: 600.0,
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      '1.3 Billion',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),  
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 100.0,
                  child: Text('Mandarin'),
                ),
                Container(
                  width: 550.0,
                  color: Colors.orange,
                  child: const Center(
                    child: Text(
                      '1 Billion',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),  
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 100.0,
                  child: Text('Hindi'),
                ),
                Container(
                  width: 300.0,
                  color: Colors.pink,
                  child: const Center(
                    child: Text(
                      '600 Million',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),  
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 100.0,
                  child: Text('Spanish'),
                ),
                Container(
                  width: 280.0,
                  color: Colors.cyan,
                  child: const Center(
                    child: Text(
                      '540 Million',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 100,
                  child: Text('Arabic'),
                ),
                Container(
                  width: 140.0,
                  color: Colors.deepPurple,
                  child: const Center(
                    child: Text(
                      '270 Million',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      )
    ],
  );
}