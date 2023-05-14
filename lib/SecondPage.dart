import 'package:flutter/material.dart';
import 'package:note_app/ColorListView.dart';

class SecondPage extends StatelessWidget {
  // ignore_for_file: prefer_const_constructors
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.black87, body: ColorListView()),
    );
  }
}
