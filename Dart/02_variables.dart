// no esperes valor de retorno
void main() {
  final String pokemon = 'Ditto';
  final int hp = 180;
  final bool isAlive = true;
  //final abilities = ['impostor']; //infiere el tipo de dato
  final List<String> abilities = ['impostor'];
  final sprites = <String>['ditto', 'imposto'];

  //bool? isAlive -> null, true, false

  //dynamic == null
  dynamic errorMessage = 'Hola';

  //me va a imprimir todo lo que esté dentro
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);
}
