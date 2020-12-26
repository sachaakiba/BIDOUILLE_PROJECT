class Pant {
  final int id;
  final String image, title, price;

  Pant({this.id, this.price, this.image, this.title});
}

List<Pant> shoes = [
  Pant(id: 1, title: "Shoes", image: "assets/pants1.png", price: "55€"),
  Pant(id: 2, title: "Shoes", image: "assets/pants2.png", price: "158€"),
  Pant(id: 3, title: "Shoes", image: "assets/pants3.png", price: "83€"),
  Pant(id: 4, title: "Shoes", image: "assets/pants4.png", price: "102€"),
  Pant(id: 4, title: "Shoes", image: "assets/pants5.png", price: "49.99€"),
  Pant(id: 4, title: "Shoes", image: "assets/pants6.png", price: "95.99€"),
];
