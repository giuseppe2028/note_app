import 'package:flutter/material.dart';
import 'package:note_app/Classes/ColorHandler.dart';
import 'package:note_app/ColorListView.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Color back = Colors.black87;

  ColorHandler colorHandler = ColorHandler();
  // ignore_for_file: prefer_const_constructors
  @override
  Widget build(BuildContext context) {
    print("entrato");
    return MaterialApp(
      home: Scaffold(
        backgroundColor: back,
        body: ColorListView(
          onPressed: changeBackgroundColor,
        ),
      ),
    );
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      back = color;
    });
  }
}
