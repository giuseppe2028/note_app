import 'package:flutter/material.dart';

class ElementListView extends StatelessWidget {
  String _title, _contenuto;
  Color _colore;

  ElementListView(this._title, this._contenuto, this._colore);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: _colore,
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
