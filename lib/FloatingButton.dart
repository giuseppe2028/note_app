import 'package:flutter/material.dart';

import 'Classes/ColorHandler.dart';

class FloatingButton extends StatefulWidget {
  @override
  State<FloatingButton> createState() => _FloatingButtonState();
}

class _FloatingButtonState extends State<FloatingButton> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Color _backgroundColor = Colors.black87;
  final ColorHandler colorHandler = ColorHandler();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        onPressed: () => setState(() {
          colorHandler.setColor(Colors.white);
        }),
        backgroundColor: Colors.white,
      ),
    );
  }

  Color getColor() {
    return _backgroundColor;
  }
}
