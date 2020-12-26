class Shoe {
  final int id;
  final String image, title, price;

  Shoe({this.id, this.price, this.image, this.title});
}

List<Shoe> shoes = [
  Shoe(id: 1, title: "Shoes", image: "assets/shoes1.png", price: "25€"),
  Shoe(id: 2, title: "Shoes", image: "assets/shoes2.png", price: "58€"),
  Shoe(id: 3, title: "Shoes", image: "assets/shoes3.png", price: "85€"),
  Shoe(id: 4, title: "Shoes", image: "assets/shoes4.png", price: "130€"),
  Shoe(id: 4, title: "Shoes", image: "assets/shoes5.png", price: "49.99€"),
  Shoe(id: 4, title: "Shoes", image: "assets/shoes6.png", price: "99.99€"),
];
