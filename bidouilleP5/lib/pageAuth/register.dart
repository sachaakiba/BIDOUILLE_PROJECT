import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String name = '';
  String email = '';
  String password = '';
  String confirmpassword = "";

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Text(
                  'Create Account',
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Name', border: OutlineInputBorder()),
                validator: (val) => val.isEmpty ? 'Enter a name' : null,
                onChanged: (val) => name = val,
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Email', border: OutlineInputBorder()),
                validator: (val) => val.isEmpty ? 'Enter a email' : null,
                onChanged: (val) => email = val,
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Password', border: OutlineInputBorder()),
                validator: (val) => val.length < 6
                    ? 'Enter a password with 6 characters or more'
                    : null,
                onChanged: (val) => password = val,
                obscureText: true,
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder()),
                onChanged: (val) => confirmpassword = val,
                validator: (val) => confirmpassword != password
                    ? 'Enter the same password'
                    : null,
                obscureText: true,
              ),
              FlatButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    print('ok');
                  }
                },
                color: Colors.amber,
                child: Text('Register'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              OutlineButton(
                onPressed: () {},
                borderSide: BorderSide(width: 1.0, color: Colors.black),
                child: Text('Need an new account ?'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
