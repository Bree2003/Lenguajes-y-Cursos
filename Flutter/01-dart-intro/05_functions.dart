main() {
  print(greetEveryone());
  print('Suma ${addTwoNumbers(10, 20)}');
  print(greetPerson(name: 'Brisa', message: 'Hi, '));
}

// String greetEveryone() {
//   return 'Hello everyone!';
// }

//funcion lambda
String greetEveryone() => 'Hello everyone!';

//valor opcional por las llaves
int addTwoNumbers(int a, [int b = 0]) {
  //condicional
  //b = b ?? 0;
//   b ??= 0;

  return a + b;
}

// int addTwoNumbers(int a, int b) => a + b;

String greetPerson({required String? name, String? message = 'Hola,'}) {
  return '$message $name';
}
