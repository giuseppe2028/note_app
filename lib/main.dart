import 'package:flutter/material.dart';
import 'package:note_app/Classes/Strings.dart';
import 'package:note_app/ElementListView.dart';
import 'package:note_app/SecondPage.dart';

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

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              child: ListView(
                children: [
                  ElementListView("titolo", Stringhe.getText()),
                  ElementListView("titolo2", Stringhe.getText()),
                  ElementListView("titolo3", Stringhe.getText()),
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(top: 10, bottom: 50, right: 20),
              child: FloatingActionButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage())),
                child: Icon(Icons.add),
              ),
            )
          ],
        ));
  }
}
