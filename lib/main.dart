import 'package:flutter/material.dart';
import 'package:flutter_catalog/Pages/Login_Page.dart';
import 'package:flutter_catalog/Pages/home_page.dart';
import 'package:flutter_catalog/utils/Routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.blue,
      fontFamily: GoogleFonts.lato().fontFamily,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        myRoutes.homeRoute:(context) => Homepage(),
        myRoutes.loginRoute:(context) => LoginPage(),
      },
    );
  }
}
