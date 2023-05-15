import 'package:flutter/material.dart';

class ColorListView extends StatefulWidget {
  /*Uso Function in modo tale da accettare una funzione come parametro. (funzione chiamata onpressed).
  //questa funzione sarà, in verità, la funzione che richiama una funzione della classe second Page.
  Infatti, chiamiamo la funzione setColor, della classe secondPage che setta il colore.
  Inoltre usiamo la classe widget per accedere funzioni della classe che estende la stateful widget. Infatti quando
  facciamo la stateful widget, stiamo dividendo la classe in due sottoclassi. Con widget accediamo ai metodi della classe principale
  che estende stateful widget.

  Color rappresenta cosa accetta l
*/
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
            FloatingActionButton(
                backgroundColor: Color.fromRGBO(244, 184, 160, 10),
                onPressed: () {
                  widget.onPressed(Color.fromRGBO(244, 184, 160, 10));
                }),
            FloatingActionButton(
                backgroundColor: Color.fromRGBO(236, 240, 174, 10),
                onPressed: () {
                  widget.onPressed(Color.fromRGBO(236, 240, 174, 10));
                }),
            FloatingActionButton(
                backgroundColor: Color.fromRGBO(205, 240, 174, 10),
                onPressed: () {
                  widget.onPressed(Color.fromRGBO(205, 240, 174, 10));
                }),
            FloatingActionButton(
                backgroundColor: Color.fromRGBO(159, 223, 235, 10),
                onPressed: () {
                  widget.onPressed(Color.fromRGBO(159, 223, 235, 10));
                }),
            FloatingActionButton(
                backgroundColor: Color.fromRGBO(232, 158, 185, 10),
                onPressed: () {
                  widget.onPressed(Color.fromRGBO(232, 158, 185, 10));
                }),
          ],
        ),
      ),
    );
  }
}
