import 'package:bidouilleP_1/home.dart';
import 'package:bidouilleP_1/screens/pants.dart';
import 'package:bidouilleP_1/screens/shoes.dart';
import 'package:bidouilleP_1/screens/suits.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bidouille Project n°1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  Widget _home = Home();
  Widget _suits = Suits();
  Widget _shoes = Shoes();
  Widget _pants = Pants();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bidouille Project n°1"),
      ),
      body: this.getBody(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: this.selectedIndex,
        items: [
          BottomNavigationBarItem(
            title: Text("Home"),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text("Suits"),
            icon: Icon(Icons.brightness_1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.brightness_1),
            title: Text("Shoes"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.brightness_1),
            title: Text("Pants"),
          )
        ],
        onTap: (int index) {
          this.onTapHandler(index);
        },
      ),
    );
  }

  Widget getBody() {
    if (this.selectedIndex == 0) {
      return this._home;
    } else if (this.selectedIndex == 1) {
      return this._suits;
    } else if (this.selectedIndex == 2) {
      return this._shoes;
    } else {
      return this._pants;
    }
  }

  void onTapHandler(int index) {
    this.setState(() {
      this.selectedIndex = index;
    });
  }
}
