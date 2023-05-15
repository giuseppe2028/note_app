import 'package:flutter/material.dart';
import 'package:note_app/Classes/ListOfNotes.dart';
import 'package:note_app/ColorListView.dart';

import 'Classes/Note.dart';

class SecondPage extends StatefulWidget {
  final Function(Note) addList;
  SecondPage({required this.addList});
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Color back = Colors.black87;
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();

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
                  controller: _controller1,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter a Title',
                      hintStyle: TextStyle(color: coloreTesto)),
                  style: TextStyle(color: coloreTesto),
                ),
                //TODO: Mettere il numero di righe varibili; in modo tale che si adatti al dispositivo
                TextField(
                  controller: _controller2,
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
                    onPressed: () {
                      //creo l'oggett:

                      widget.addList(
                          Note(_controller1.text, _controller2.text, back));
                      Navigator.pop(context);
                      print("${_controller2.text}");
                    },
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.save,
                      color: Colors.black87,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void addElementList(Note nota) {
    ListOfNotes.addLista(nota);
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      back = color;
    });
  }
}
