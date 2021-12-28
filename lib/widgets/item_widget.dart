import 'package:flutter/material.dart';
import 'package:newapptest/models/Catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, @required this.item})
      : assert(item != Null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ItemWidget,
      title: ItemWidget,
      subtitle: ItemWidget,t
      tileColor: ,
    );
  }
}
