// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.blueGrey),
            elevation: 0.0,
            titleTextStyle:
                TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold,fontSize: 25)),
      );

      static ThemeData darkTheme(BuildContext context) => ThemeData(
       brightness: Brightness.dark
      );

      static Color creamColor = Color(0xfff5f5f5);
     static Color darkBluishColor = Color(0xff403b58);
}
