import 'package:flutter/material.dart';

class ColorHandler {
  Color _colore = Colors.blue;

  void setColor(Color input) {
    _colore = input;
    print(_colore.toString());
  }

  Color getColor() {
    return _colore;
  }
}
