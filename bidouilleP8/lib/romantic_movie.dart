import 'package:bidouilleP8/models/romantic.dart';
import 'package:flutter/material.dart';
import 'package:bidouilleP8/constants.dart';
import 'package:bidouilleP8/drawer.dart';

class RomanticMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Romantic Movies",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: DrawerWidget(),
      body: GridView.builder(
          padding: EdgeInsets.all(kDefaultPadding),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.75),
          itemCount: romantics.length,
          itemBuilder: (context, index) =>
              RomanticMovieCard(romantic: romantics[index])),
    );
  }
}

class RomanticMovieCard extends StatelessWidget {
  final RomanticMovieClass romantic;

  const RomanticMovieCard({Key key, this.romantic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 50.0, left: kDefaultPadding, right: kDefaultPadding),
      child: Column(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(romantic.image), fit: BoxFit.cover)),
          )),
          Padding(
            padding: EdgeInsets.all(kDefaultPadding / 4),
            child: Text(
              romantic.title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  Icon(
                    Icons.star_outline,
                    color: Colors.orange,
                  ),
                  Text(
                    romantic.note,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
