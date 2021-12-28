import 'package:flutter/material.dart';

import 'package:newapptest/Pages/HomePage.dart';
import 'package:newapptest/Pages/LoginPage.dart';
import 'package:newapptest/routes/routers.dart';
import 'package:newapptest/widgets/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lighTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRouter,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRouter: (context) => HomePage(),
        MyRoutes.loginRouter: (context) => LoginPage(),
      },
    );
  }
}
