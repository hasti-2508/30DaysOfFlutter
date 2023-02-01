import 'package:flutter/material.dart';
import 'package:flutter_catalog/Pages/Login_Page.dart';
import 'package:flutter_catalog/Pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.pink),
      routes: {
        "/": (context) => Homepage(),
        "/login":(context) => LoginPage(),
      },
    );
  }
}
