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
    Color coloreTesto = Colors.white;
    Icon freccia = Icon(Icons.arrow_back, color: coloreTesto);
    int _maxLine;
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      _maxLine = 3;
    } else {
      _maxLine = 25;
    }
    if (back == Colors.black87) {
      coloreTesto = Colors.white;
    } else {
      coloreTesto = Colors.black87;
    }

    print("entrato");
    return MaterialApp(
      home: Scaffold(
        backgroundColor: back,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      onPressed: () => Navigator.pop(context), icon: freccia),
                ),
                ColorListView(
                  onPressed: changeBackgroundColor,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter a Title',
                      hintStyle: TextStyle(color: coloreTesto)),
                  style: TextStyle(color: coloreTesto),
                ),
                TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: _maxLine,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter your text here',
                    hintStyle: TextStyle(color: coloreTesto),
                  ),
                  style: TextStyle(color: coloreTesto),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: () => {},
                    child: Icon(
                      Icons.save,
                      color: Colors.black87,
                    ),
                    backgroundColor: Colors.white,
                  ),
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
