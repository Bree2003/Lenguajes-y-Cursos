// los streams pueden ser retornados y usados como obbjetos
// funciones o métodos, son un flujo de información que puede
// estar emitiendo valores periódicamente, una única vez, o nunca

void main() {
  emitNumbers().listen((value) {
    print('Stream value $value');
  });
}

// flujo de datos
Stream<int> emitNumbers() {
//   el periodico empieza desde el cero
  return Stream.periodic(const Duration(seconds: 1), (value) {
//     print('desde periodic $value');
    return value;
  }).take(5);
}
