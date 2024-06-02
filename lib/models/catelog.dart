class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {this.id = '',
      this.name = '',
      this.desc = '',
      this.price = 11,
      this.color = '',
      this.image = ''});
}

class CatalogModel {
  List<Item> products = [
    Item(
        // id: '1',
        // name: 'product1',
        // desc: 'desc1',
        // price: 10.0,
        // color: 'red',
        // image: 'https://picsum.photos/200/300?random=1',
        id: '1',
        name: "Smartphone",
        desc:
            "A high-end smartphone with a sleek design and powerful features.",
        price: 799.99,
        color: "Black",
        image: "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9")
  ];
}
