import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/widget/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_catalog/utils/routes.dart';

void main() {
  runApp(MyApp());
}

// type stl to get this statelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // int days = 2;
    return MaterialApp(
      themeMode: ThemeMode.light,
      // theme: ThemeData(primarySwatch: Colors.blue),
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
