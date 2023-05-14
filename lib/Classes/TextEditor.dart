import 'package:flutter/material.dart';

class TextEditor extends StatelessWidget {
  int _size;
  int _color;
  String _text;

  TextEditor(this._size, this._color, this._text);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
        fontSize: _size.toDouble(),
        color: Color(_color),
      ),
    );
  }
}
