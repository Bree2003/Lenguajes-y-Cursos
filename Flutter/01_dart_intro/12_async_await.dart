// async - await
// async -> va a retornar un future
// await -> esperar a que el future se realice

// future -> representa principalmente el resultado de una operación asíncrona, promesa/acuerdo de que tendrás un valor
void main() async {
  print('inicio del programa');

  try {
    final value = await httpGet('https://google2.com');

    print(value);
  } catch (err) {
    print('Tenemos un error: $err');
  }

  print('fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw 'Error en la petición';
//     return 'tenemos un valor de la petición';
}
