void main() {
  //mapa -> pares de valores
  //final pokemon = { ->acepta cualquier valor
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': <int, String>{1: 'ditto/front.png', 2: 'ditto/back.png'}
  };

  print(pokemon);

  //acceder a un valor del mapa
  print("""
  'Name: ${pokemon['name']}'
 
  'Front: ${pokemon['sprites'][1]}'
  'Back: ${pokemon['sprites'][2]}
  """);
}
