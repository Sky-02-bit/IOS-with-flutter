import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(child: Text('Welcome to day $days of Flutter')),
      ),
      drawer: Drawer(), 
    );
  }
}
