// mixins (algo muy especial de dart)
// los mixins son un tipo de especialización
// como son clases abstractas no se pueden instanciar, sino crear otras clases y abstract
abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

// se utiliza la palabra reservada mixin para indicar que va a ser utilizada con with
// usualmente se utiliza con métodos específicos y pequeños
abstract mixin class Volador {
  void volar() => print('estoy volando!');
}

abstract mixin class Caminante {
  void caminar() => print('estoy caminando!');
}

abstract mixin class Nadador {
  void nadar() => print('estoy nadando!');
}

// mixins -> crear una clase con otra extension, palabra reservada "with"
class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Volador, Caminante {}

class Pato extends Ave with Nadador, Volador, Caminante {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main() {
  final flipper = Delfin();
  flipper.nadar();

  final batman = Murcielago();
  batman.volar();
  batman.caminar();
}
