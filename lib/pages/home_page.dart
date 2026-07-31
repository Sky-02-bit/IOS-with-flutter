import 'package:flutter/material.dart';
import 'package:flutter_catalog/widget/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 2;

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Catalog App"), 
      backgroundColor: Colors.white,
      elevation: 0.0,
      ),
      body: Center(
        child: Container(
          child: Text('Welcome to day $days of Flutter')     
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
