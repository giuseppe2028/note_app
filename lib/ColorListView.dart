import 'package:flutter/material.dart';

class ColorListView extends StatefulWidget {
  final Function(Color) onPressed;

  ColorListView({required this.onPressed});
  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(onPressed: () {
              widget.onPressed(Colors.white);
            }),
            FloatingActionButton(onPressed: () {
              widget.onPressed(Colors.white);
            }),
            FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                  widget.onPressed(Colors.white);
                }),
            FloatingActionButton(onPressed: () {
              widget.onPressed(Colors.white);
            }),
            FloatingActionButton(onPressed: () {
              widget.onPressed(Colors.white);
            }),
          ],
        ),
      ),
    );
  }
}
