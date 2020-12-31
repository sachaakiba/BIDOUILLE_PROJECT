class HorrorMovieClass {
  final int id;
  final String image, title, note;

  HorrorMovieClass({this.id, this.note, this.image, this.title});
}

List<HorrorMovieClass> horrors = [
  HorrorMovieClass(id: 1, title: "Ca", image: "assets/ca.png", note: "4.25/5"),
  HorrorMovieClass(
      id: 2, title: "Carrie", image: "assets/carrie.png", note: "3/5"),
  HorrorMovieClass(
      id: 3,
      title: "A Nightmare on Elm Street",
      image: "assets/griffe.png",
      note: "3.75/5"),
  HorrorMovieClass(id: 4, title: "Saw", image: "assets/saw.png", note: "4.7/5"),
  HorrorMovieClass(
      id: 5, title: "Chucky", image: "assets/chukky.png", note: "4.75/5"),
  HorrorMovieClass(
      id: 6, title: "Scream", image: "assets/scream.png", note: "4/5"),
];
