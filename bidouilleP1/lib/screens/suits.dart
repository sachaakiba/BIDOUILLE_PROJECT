import 'package:bidouilleP_1/constants.dart';
import 'package:bidouilleP_1/models/suits.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Suits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(kDefaultPadding),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.75),
        itemCount: suits.length,
        itemBuilder: (context, index) => SuitCard(suit: suits[index]));
  }
}

class SuitCard extends StatelessWidget {
  final Suit suit;

  const SuitCard({Key key, this.suit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Column(
        children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(image: AssetImage(suit.img))),
          )),
          Padding(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            child: Text(suit.title),
          ),
          Container(
            child: Text(
              suit.price,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
