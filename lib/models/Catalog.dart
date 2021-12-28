class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.id, this.name, this.desc, this.price, this.color, this.image});
}

final products = [
  Item(
      id: "1",
      name: "Iphone 12 ",
      desc: "Apple 12 64 GB",
      price: 999,
      color: "#33505a",
      image:
          "https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn.dxomark.com%2Fwp-content%2Fuploads%2Fmedias%2Fpost-62280%2Fiphone-12-pro-blue-hero.jpg&imgrefurl=https%3A%2F%2Fwww.dxomark.com%2Fapple-iphone-12-pro-selfie-review-solid-with-cinematic-potential%2F&tbnid=JrMWC_dxsdd3HM&vet=12ahUKEwiHl8fa7oX1AhVNNLcAHVHYCMgQMygAegUIARDPAg..i&docid=e7nYgMvoQd8oDM&w=588&h=441&itg=1&q=iphone%2012%20image&ved=2ahUKEwiHl8fa7oX1AhVNNLcAHVHYCMgQMygAegUIARDPAg")
];
