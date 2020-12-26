class Suit {
  final int id;
  final String img, title, price;

  Suit({this.id, this.price, this.img, this.title});
}

List<Suit> suits = [
  Suit(id: 1, title: "Suits", img: "assets/suit1.png", price: "250€"),
  Suit(id: 2, title: "Suits", img: "assets/suit2.png", price: "300€"),
  Suit(id: 3, title: "Suits", img: "assets/suit3.png", price: "185€"),
  Suit(id: 4, title: "Suits", img: "assets/suit4.png", price: "130€"),
  Suit(id: 4, title: "Suits", img: "assets/suit5.png", price: "117.99€"),
  Suit(id: 4, title: "Suits", img: "assets/suit6.png", price: "249€"),
];
