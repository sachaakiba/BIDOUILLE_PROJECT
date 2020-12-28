import 'package:bidouilleP5/pageAuth/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    String email = '';
    String password = '';

    final _keyForm = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Register()),
            );
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
        child: Form(
          key: _keyForm,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (val) => val.isEmpty ? 'Enter an email' : null,
                onChanged: (val) => email = val,
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                validator: (val) => val.length < 6
                    ? 'Enter a password with 6 characters or more'
                    : null,
                onChanged: (val) => password = val,
              ),
              FlatButton(
                onPressed: () {
                  if (_keyForm.currentState.validate()) {
                    print('ok');
                  }
                },
                color: Colors.amber,
                child: Text('Login'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
