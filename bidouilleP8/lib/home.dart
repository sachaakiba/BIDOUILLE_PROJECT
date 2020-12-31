import 'package:bidouilleP8/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text('Drawer Demo'),
      ),
      drawer: DrawerWidget(),
      body: Center(
        child: Text(
          "Welcome to the Movie App",
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
