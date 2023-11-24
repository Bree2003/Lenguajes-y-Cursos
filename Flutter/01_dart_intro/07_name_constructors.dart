void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };

//   final ironman = Hero(
//   isAlive: rawJson['isAlive2'] ?? false,
//   name: 'Tony Stark',
//   power: 'Money');

  final ironman = Hero.fromJson(rawJson);

  print(ironman.toString());
}

class Hero {
  String name;
  String power;
  bool isAlive;

  //constructor
  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    //condición ternaria
    return '$name, $power, isAlive: ${isAlive ? 'YES!' : 'Nope'}';
  }
}
