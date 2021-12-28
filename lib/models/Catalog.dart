class CatalogModel {
  static final items = [
    Item(
      1,
      "phone 12 ",
      "Apple 12 64 GB",
      999,
      "#33505a",
      "data:image/jpeg;base64,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",
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(map["id"], map["name"], map["desc"], map["price"], map["color"],
        map["image"]);
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}
