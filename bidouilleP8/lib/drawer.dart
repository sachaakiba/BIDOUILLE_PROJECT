import 'package:bidouilleP8/actions_movie.dart';
import 'package:bidouilleP8/romantic_movie.dart';
import 'package:bidouilleP8/horror_movie.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  'MovieApp',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              )),
          ListTile(
            leading: Icon(Icons.movie),
            title: Text(
              'ACTION',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w200),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ActionMovie()));
            },
          ),
          ListTile(
            leading: Icon(Icons.movie),
            title: Text(
              'ROMANTIC',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w200),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RomanticMovie()));
            },
          ),
          ListTile(
            leading: Icon(Icons.movie),
            title: Text(
              'HORROR',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w200),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HorrorMovie()));
            },
          ),
        ],
      ),
    );
  }
}
