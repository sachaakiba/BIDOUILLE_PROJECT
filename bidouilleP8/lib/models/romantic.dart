class RomanticMovieClass {
  final int id;
  final String image, title, note;

  RomanticMovieClass({this.id, this.note, this.image, this.title});
}

List<RomanticMovieClass> romantics = [
  RomanticMovieClass(
      id: 1,
      title: "50 nuances of grey",
      image: "assets/50nuances.jpg",
      note: "3.25/5"),
  RomanticMovieClass(
      id: 2, title: "After", image: "assets/after.png", note: "3.5/5"),
  RomanticMovieClass(
      id: 3,
      title: "Beauty and the beast",
      image: "assets/belleetbete.png",
      note: "4.05/5"),
  RomanticMovieClass(
      id: 4,
      title: "Coup de foudre à noël",
      image: "assets/coupdefoudrenoel.png",
      note: "3/5"),
  RomanticMovieClass(
      id: 5, title: "Titanic", image: "assets/heat.png", note: "4.75/5"),
  RomanticMovieClass(
      id: 6, title: "Safe Haven", image: "assets/safehaven.jpg", note: "4/5"),
  RomanticMovieClass(
      id: 7, title: "Twilight", image: "assets/twilight.png", note: "3.75/5"),
];
