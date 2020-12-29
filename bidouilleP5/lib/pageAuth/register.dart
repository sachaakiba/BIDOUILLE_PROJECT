import 'package:bidouilleP5/pageAuth/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser currentUtil;

  final CollectionReference collectionUtil =
      Firestore.instance.collection('users');

  String name = '';
  String email = '';
  String password = '';
  String confirmpassword = "";

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    FirebaseAuth.instance.currentUser().then((FirebaseUser util) {
      setState(() {
        this.currentUtil = util;
      });
    });

    String _idUtil() {
      if (currentUtil != null) {
        return currentUtil.uid;
      } else {
        return "no current util";
      }
    }

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
                onPressed: () async {
                  if (_formKey.currentState.validate()) {
                    AuthResult res = await _auth.createUserWithEmailAndPassword(
                        email: email, password: password);
                    await collectionUtil.document(_idUtil()).setData({
                      'idUtil': _idUtil(),
                      'name': name,
                      'email': email,
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );

                    if (res == null) {
                      print("Error");
                    }
                  }
                },
                color: Colors.amber,
                child: Text('Register'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              OutlineButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                borderSide: BorderSide(width: 1.0, color: Colors.black),
                color: Colors.amber,
                child: Text('Already have an account ?'),
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
