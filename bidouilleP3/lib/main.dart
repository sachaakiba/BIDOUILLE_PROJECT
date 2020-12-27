import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bidouille Project n°3',
              style: TextStyle(fontSize: 29),
            ),
            Text(
              'Date Picker App',
              style: TextStyle(fontSize: 15),
            ),
            Container(child: SvgPicture.asset('assets/Epitech.svg')),
            Column(
              children: [
                Text(
                    _dateTime == null ? 'Choose a date' : _dateTime.toString()),
                RaisedButton(
                  child: Text('Pick a date'),
                  onPressed: () {
                    showDatePicker(
                            context: context,
                            initialDate:
                                _dateTime == null ? DateTime.now() : _dateTime,
                            firstDate: DateTime(2001),
                            lastDate: DateTime(2021))
                        .then((date) {
                      setState(() {
                        _dateTime = date;
                      });
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
