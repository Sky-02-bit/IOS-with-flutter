import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// type stl to get this statelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 5;
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(child: Text('Welcome to day $days of Flutter')),
        ),
      ),
    );
  }
}
