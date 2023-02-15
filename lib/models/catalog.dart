// ignore_for_file: non_constant_identifier_names


class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image
      };
}


class CatalogModel {
  static final catModel = CatalogModel._internal();

  CatalogModel._internal();

  factory CatalogModel() => catModel;

  static List<Item> items = [
    Item(
        id: 1,
        name: "Tshirt",
        desc: "comfortable tshirt for women",
        price: 30,
        color: "black",
        image: "https://m.media-amazon.com/images/I/51ZeW4RBJaS._UX425_.jpg")
  ];

    // Get Item by ID
  static Item getById(int id) =>
      items.firstWhere((element) => element.id == id, orElse: null);

  // Get Item by position
  static Item getByPosition(int pos) => items[pos];
}
