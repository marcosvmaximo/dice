import 'package:dadoos/dadoos.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.shade700,
        appBar: AppBar(
          title: Text('Dadoos'),
          backgroundColor: Colors.red.shade900,
        ),
        body: Dadoos(),
      ),
    );
  }
}
