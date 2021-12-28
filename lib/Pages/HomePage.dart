import 'package:flutter/material.dart';
import 'package:newapptest/widgets/drawer.dart';
import 'package:newapptest/models/Catalog.dart';
import 'package:newapptest/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
            return ItemWidget();
          },
        ),
      ),
        
     );
  }
}
