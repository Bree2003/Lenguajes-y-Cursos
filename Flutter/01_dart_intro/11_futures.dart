// future -> representa principalmente el resultado de una operación asíncrona, promesa/acuerdo de que tendrás un valor
void main() {
  print('inicio del programa');
  httpGet('https://google2.com').then((value) {
    print(value);
  }).catchError((error) {
    //controlamos el error
    print('Error: $error');
  });

  print('fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error en la petición http';
//     return 'respuesta de la petición http';
  });
}
