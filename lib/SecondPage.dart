import 'package:flutter/material.dart';
import 'package:note_app/ColorListView.dart';

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Color back = Colors.black87;

  // ignore_for_file: prefer_const_constructors
  @override
  Widget build(BuildContext context) {
    print("entrato");
    return MaterialApp(
      home: Scaffold(
        backgroundColor: back,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                ColorListView(
                  onPressed: changeBackgroundColor,
                ),
                TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 30,
                ),
                FloatingActionButton(
                  onPressed: () => {},
                  child: Icon(Icons.save),
                )
              ],
            ),
          ),
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
