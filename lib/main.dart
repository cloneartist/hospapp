import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hospapp/nform.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      theme: new ThemeData(
        primaryColor: Colors.blue,
        
      ),
      home: NewForm(),
    );
  }
}