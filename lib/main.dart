import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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

           Column(
             children: <Widget>[
               SizedBox(
                 height: 100.0,
               ),
               Padding(
                 padding: EdgeInsets.all(10.0),
                 child: Text(
                   "FACIO",
                   textAlign: TextAlign.center,
                   style: TextStyle(
                       fontSize: 60.0,
                       color: Colors.white,
                       fontWeight: FontWeight.bold),
                 ),
               ),
               Padding(
                 padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                 child: TextField(
                   style: TextStyle(color: Colors.white,),
                   decoration: InputDecoration(
                     labelText: "Email",
                     prefixIcon: Icon(Icons.email,color: Colors.white,),
                     enabledBorder:OutlineInputBorder(
                       borderSide: BorderSide(
                         width: 1.0,
                         style: BorderStyle.solid,
                         color: Colors.grey,
                       ),
                     ) ,
                     border: OutlineInputBorder(
                       borderSide: BorderSide(
                         width: 1.0,
                         color: Colors.red,
                       ),
                         borderRadius:
                         BorderRadius.all(Radius.circular(6.0))
                     ),
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
                     hintStyle: TextStyle(color: Colors.white) ,
                     prefixIcon: Icon(Icons.lock_outline,color: Colors.white,),
                     enabledBorder:OutlineInputBorder(
                       borderSide: BorderSide(
                         width: 1.0,
                         style: BorderStyle.solid,
                         color: Colors.grey,
                       ),
                     ) ,
                     border: OutlineInputBorder(
                       borderSide: BorderSide(
                         width: 1.0,
                         style: BorderStyle.solid,
                         color: Colors.grey,
                       ),
                     ) ,
                   ),
                 ),
               ),
               Container(
                 height: 50.0,
                 width: 50.0,

                 decoration: BoxDecoration(
                 shape: BoxShape.circle,

                 ),
               )
             ],
           ),
          ],
        ));
  }
}
