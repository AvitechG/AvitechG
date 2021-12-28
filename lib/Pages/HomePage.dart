import 'package:flutter/material.dart';
import 'package:newapptest/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Remote Support"),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Text("Welcome to test"),
      ),
    );
  }
}
