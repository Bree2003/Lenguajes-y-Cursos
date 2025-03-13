void main() {
//   final wolverine = Hero('Logan', 'Regeneración');
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneración');

  print(wolverine.toString());
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  //  recordar colocar tipo de dato
  String name;
  String power;

  //no pueden las intancias ser nulos a menos que se diga '?'
  //por eso hay que inicializarlas y usar el constructor

//   Hero(this.name, this.power);

  Hero({required this.name, this.power = 'Sin poder'});

  @override
  String toString() {
    return '$name - $power';
  }

//   Hero(String pName, String pPower) {
//     this.name = name;
//     this.power = power;
//     name = pName;
//     power = pPower;}

//   Hero(String pName, String pPower)
//     : name = pName,
//       power = pPower;
}
