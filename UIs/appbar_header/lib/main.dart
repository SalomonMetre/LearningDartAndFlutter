import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget implements PreferredSizeWidget {
  const MyApp({super.key});
  final String titleAppBar = 'App Bar Demo';

  @override
  Size get preferredSize => const Size.fromHeight(100.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: titleAppBar,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: preferredSize,
          child: MyAppBar(
            title: titleAppBar,
          ),
        ),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) => Card(
            child: Text('Item number : $index'),
          ),
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        textAlign: TextAlign.center,
        softWrap: true,
      ),
      backgroundColor: Colors.blueGrey.shade900,
      elevation: 10.0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
        )
      ],
    );
  }
}
