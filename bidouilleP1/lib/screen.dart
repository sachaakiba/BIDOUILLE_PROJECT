import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  final Color color;

  Screen(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
