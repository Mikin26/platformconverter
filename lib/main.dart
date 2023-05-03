import 'package:flutter/material.dart';
import 'package:platformconventor/Myapp.dart';

void main() {
  runApp(Platform());
}

class Platform extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Platform1(),
    );
  }
}