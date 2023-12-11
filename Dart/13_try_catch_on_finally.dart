// async - await
// async -> va a retornar un future
// await -> esperar a que el future se realice

// future -> representa principalmente el resultado de una operación asíncrona, promesa/acuerdo de que tendrás un valor
void main() async {
  print('inicio del programa');

  try {
    final value = await httpGet('https://google2.com');

    print('Éxito: $value');
  } on Exception catch (err) {
    print('Tenemos una Exception: $err');
  } catch (err) {
    print('OOPS!! algo terrible pasó: $err');
  } finally {
    // no importa si se ejecuta lo uno o lo otro se ejecuta igual
    print('Fin del try y catch');
  }

  print('fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw Exception('No hay parámetros en el URL');
//   throw 'Error en la petición';
//     return 'tenemos un valor de la petición';
}
