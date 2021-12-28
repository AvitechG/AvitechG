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
    final cataLogJson =
        await rootBundle.loadString("assests/files/catalog.json");
    final decodeData = jsonDecode(cataLogJson);
    var productData = decodeData["product"];
    List<Item> list = List.from(productData).map<Item>((item) => Item.fromMap(item).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Remote Support"),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          },
        ),
      ),
    );
  }
}
