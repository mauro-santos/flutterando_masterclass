void main(List<String> arguments) {
  String name = 'Jacob Moura';
  print(name.runes);
  print(name.codeUnits);
  print(String.fromCharCode(125));

/*
  var runes = name.runes;
  var codeUnits = name.codeUnits;

  codeUnits.add(6);
  */

  print(name.runes.elementAt(0));
  print(name.codeUnits.elementAt(0));
  print(name.codeUnitAt(0));
}
