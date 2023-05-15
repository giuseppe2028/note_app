import 'package:flutter/material.dart';

import 'Classes/Note.dart';

class ElementListView extends StatefulWidget {
  Note nota;
  ElementListView(this.nota);

  @override
  State<ElementListView> createState() => _ElementListViewState();
}

class _ElementListViewState extends State<ElementListView> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: widget.nota.getColore(),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.nota.getTitolo(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(widget.nota.getContenuto()),
              ],
            ),
          ),
          Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(bottom: 10),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.delete)))
        ],
      ),
    );
  }
}
