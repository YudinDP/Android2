import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Юдин Данила Павлович (вар 5)'),
          backgroundColor: Colors.amber,
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  dynamic strings = ['Юдин', 'Данила', 'Павлович', '21.03.2004', 'ВМК-22', '3 курс'];
  @override 
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Wrap(
  spacing: 8.0,
  runSpacing: 8.0,
  children: List.generate(6, (index) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.primaries[index % Colors.primaries.length],
      
      child: Center(child: Text(strings[index])),
      
    );
  }),)
        ],
      ),
    );
  }
}


