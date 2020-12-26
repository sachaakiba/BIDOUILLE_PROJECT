import 'package:bidouilleP_1/constants.dart';
import '../models/pants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Pants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(kDefaultPadding),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.75),
        itemCount: shoes.length,
        itemBuilder: (context, index) => PantsCard(shoe: shoes[index]));
  }
}

class PantsCard extends StatelessWidget {
  final Pant shoe;

  const PantsCard({Key key, this.shoe}) : super(key: key);

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
                image: DecorationImage(image: AssetImage(shoe.image))),
          )),
          Padding(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            child: Text(shoe.title),
          ),
          Container(
            child: Text(
              shoe.price,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
