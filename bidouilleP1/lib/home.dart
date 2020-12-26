import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SvgPicture.asset("assets/Epitech.svg"),
          Text(
            "Project \'Clothes App'",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
