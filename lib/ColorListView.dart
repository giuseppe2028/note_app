import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/FloatingButton.dart';

class ColorListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingButton(),
            FloatingButton(),
            FloatingButton(),
            FloatingButton(),
            FloatingButton(),
          ],
        ),
      ),
    );
  }
}
