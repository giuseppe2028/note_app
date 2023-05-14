import 'package:flutter/material.dart';

class ElementListView extends StatelessWidget {
  String _title, _contenuto;
  ElementListView(this._title, this._contenuto);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(_contenuto),
          ],
        ),
      ),
    );
  }
}
