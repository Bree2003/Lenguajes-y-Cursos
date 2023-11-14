//clases abstractas y enumeraciones
// Clases -> molde que sirve para crear otros moldes
// no se pueden instanciar, es un molde para crear clases
void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('wind: ${chargePhone(windPlant)}');
  print('wind: ${chargePhone(nuclearPlant)}');
}

// todos los tipos de planta que extiendan de energyplant va a funcionar
double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) {
    throw Exception('Not enough energy');
  }

  return plant.energyLeft - 10;
}

// enumeración cuando los tipos son definidios y especificos
enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
//   se define porque nunca va a cambiar
  final PlantType type; // nuclear, wind, water

//   constructor
  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

// extends or implements
// extender o heredar de otra clase
// implementar
class WindPlant extends EnergyPlant {
//   una forma de hacer los constructores
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// más especificos sobre lo que se quiere implementar
class NuclearPlant implements EnergyPlant {
//   otra forma de hacer los constructores
  @override
  double energyLeft;
//   recuerda que los valores que nunca cambian deben declararse con final
  @override
  final PlantType type = PlantType.nuclear;
//   hay que inicializarlo
  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount - 0.5);
  }
}
