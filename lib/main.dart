// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_catalog/Pages/Login_Page.dart';
import 'package:flutter_catalog/Pages/home_page.dart';
import 'package:flutter_catalog/utils/Routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';
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
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: myRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        myRoutes.homeRoute:(context) =>  HomePage(),
        myRoutes.loginRoute:(context) => LoginPage(),
      },
    );
  }
}
