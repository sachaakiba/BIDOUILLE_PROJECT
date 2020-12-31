class ActionMovieClass {
  final int id;
  final String image, title, note;

  ActionMovieClass({this.id, this.note, this.image, this.title});
}

List<ActionMovieClass> actions = [
  ActionMovieClass(
      id: 1,
      title: "Avengers Endgame",
      image: "assets/avengers.png",
      note: "4.25/5"),
  ActionMovieClass(
      id: 2,
      title: "Batman, Dark Knight Rises",
      image: "assets/batman.png",
      note: "4/5"),
  ActionMovieClass(
      id: 3, title: "Aquaman", image: "assets/aquaman.png", note: "4.05/5"),
  ActionMovieClass(
      id: 4, title: "Greenland", image: "assets/greenland.png", note: "4/5"),
  ActionMovieClass(
      id: 5, title: "Heat", image: "assets/heat.png", note: "2.5/5"),
  ActionMovieClass(
      id: 6, title: "Joker", image: "assets/joker.png", note: "4.5/5"),
  ActionMovieClass(
      id: 7, title: "Tenet", image: "assets/tenet.png", note: "3/5"),
];
