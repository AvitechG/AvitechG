import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:newapptest/widgets/drawer.dart';
import 'package:newapptest/models/Catalog.dart';
import 'package:newapptest/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var cataLogJson = await rootBundle.loadString("assests/files/catalog.json");
    var decodeData = jsonDecode(cataLogJson);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Remote Support"),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: dummyList.length, //CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index], //CatalogModel.items[index],
            );
          },
        ),
      ),
    );
  }
}
