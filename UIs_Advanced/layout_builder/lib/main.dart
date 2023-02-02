import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title='LayoutBuilder';

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
        title: const Text('Layout Builder Example'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          if(constraints.maxWidth>800){
            return _buildTripleContainers();
          }
          else{
            if(constraints.maxWidth>600 && constraints.maxWidth<800){
              return _buildDoubleContainers();
            }
            else{
              return _buildSingleContainer();
            }
          }
        },
      ),
    );
  }
}

Widget _buildSingleContainer(){
  return Center(
    child: Container(
      height: 400.0,
      width:100.0,
      color:Colors.red,
    ), 
  );
}

Widget _buildDoubleContainers(){
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 400.0,
          width: 100.0,
          color: Colors.yellow,
        ),
        Container(
          height: 400.0,
          width: 100.0,
          color: Colors.yellow,
        ),
      ],
    ),
  );
}

Widget _buildTripleContainers(){
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for(int i=0;i<3;i++)
        Container(
          height: 400.0,
          width: 100.0,
          color: Colors.green,
        )
      ],
    ),
  );
}