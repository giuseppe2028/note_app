import 'package:flutter/material.dart';
import 'package:note_app/Classes/ListOfNotes.dart';
import 'package:note_app/Classes/Strings.dart';
import 'package:note_app/SecondPage.dart';

import 'Classes/Note.dart';
import 'ElementListView.dart';

//TODO considerare il List Tile al posto di questa lista
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  // ignore_for_file: prefer_const_constructors
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewWidget(),
    );
  }
}

class NewWidget extends StatefulWidget {
  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class _NewWidgetState extends State<NewWidget> {
  @override
  Widget build(BuildContext context) {
    print("ENTRO:..");
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.black87,
          title: Text(
            Stringhe.getTitleNote(),
            style: const TextStyle(fontSize: 25),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: ListOfNotes.size(),
                itemBuilder: (context, index) =>
                    ElementListView(ListOfNotes.getElement(index)),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(top: 10, bottom: 50, right: 20),
              child: FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondPage(
                                  addList: addList,
                                )));
                    print("${ListOfNotes.size()}");
                  });
                },
                child: Icon(
                  Icons.add,
                  color: Colors.black87,
                ),
              ),
            )
          ],
        ));
  }

  void addList(Note value) {
    setState(() {
      ListOfNotes.addLista(value);
    });
  }
}
