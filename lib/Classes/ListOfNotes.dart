import 'Colori.dart';
import 'Note.dart';
import 'Strings.dart';

class ListOfNotes {
  static List<Note> _lista = [
    Note("titolo", Stringhe.getText(), Colori.colore1()),
    Note("titolo2", Stringhe.getText(), Colori.colore3()),
    Note("titolo3", Stringhe.getText(), Colori.colore5())
  ];

  static void addLista(Note value) {
    _lista.add(value);
  }

  static Note getElement(int idx) {
    return _lista.elementAt(idx);
  }

  static int size() {
    return _lista.length;
  }
}
