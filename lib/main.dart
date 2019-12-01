import 'dart:ui' as prefix0;

import 'package:circular_check_box/circular_check_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            'login.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black54),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100.0,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: RichText(
                    maxLines: 4,
                    text: TextSpan(children: [
                      TextSpan(
                          text: "FACI",
                          style: TextStyle(
                              fontSize: 50.0, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "O",
                          style: TextStyle(
                              color: Colors.greenAccent,
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold)),
                    ]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.0,
                          style: BorderStyle.solid,
                          color: Colors.grey,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1.0,
                            color: Colors.red,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.0,
                          style: BorderStyle.solid,
                          color: Colors.grey,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.0,
                          style: BorderStyle.solid,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          setState(() {
                            _value = !_value;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: _value
                              ? Icon(
                                  Icons.check,
                                  size: 30.0,
                                  color: Color(0xFF64DD17),
                                )
                              : Icon(
                                  Icons.check_box_outline_blank,
                                  size: 30.0,
                                  color: Color(0xFF64DD17),
                                ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          "Keep me logged in.",
                          style: TextStyle(
                              fontSize: 18.0,
                              letterSpacing: 1.2,
                              color: Color(0xFFEEEEEE)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: RaisedButton(
                        color: Color.fromRGBO(40, 216, 161, 0.95),
                        onPressed: () {},
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Forgot password?",
                        style: TextStyle(color: Colors.grey, fontSize: 16.0),
                      ),
                      Text(
                        "Recover here",
                        style: TextStyle(color: Colors.green, fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 200.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Signup here",
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
