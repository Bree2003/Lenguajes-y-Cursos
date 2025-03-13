void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('List original $numbers');
  print("""
  'Length ${numbers.length}'
  'Index 0: ${numbers[0]}'
  'First: ${numbers.first}'
  'Reversed(iterable): ${numbers.reversed}'
  """);

  final reversedNumbers = numbers.reversed;

  print('List: ${reversedNumbers.toList()}');

  print('Set: ${reversedNumbers.toSet()}');

  final numbersGreaterThan5 = numbers.where((num) {
    return num > 5; //true
  });

  print('>5: $numbersGreaterThan5');
}
