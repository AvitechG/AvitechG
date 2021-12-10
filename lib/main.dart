import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newapptest/Pages/HomePage.dart';
import 'package:newapptest/Pages/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      routes: {
        "/": (context) => LoginPage(),
        "/homepage": (context) => HomePage(),
      },
    );
  }
}
