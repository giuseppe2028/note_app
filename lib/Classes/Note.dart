import 'dart:ui';

class Note {
  String _titolo, _contenuto;
  Color _colore;
  Note(this._titolo, this._contenuto, this._colore);
  String getTitolo() {
    return _titolo;
  }

  String getContenuto() {
    return _contenuto;
  }

  Color getColore() {
    return _colore;
  }
}
