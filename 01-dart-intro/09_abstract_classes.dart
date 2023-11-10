void main() {
  // * Una clase abstracta no se puede instanciar
  // final windPlant = EnergyPlant();

  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  // windPlant.consumeEnergy(20);
  // print(windPlant);
  print('[Wind]: ${chargePhone(windPlant)}');
  print('[Wind]: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) throw Exception('Not enough energy');

  plant.consumeEnergy(10);
  return plant.energyLeft;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type; // nuclear, wind, water

//* Un constructor abstracto no tiene cuerpo
  EnergyPlant({required this.energyLeft, required this.type});
  void consumeEnergy(double amount);
}

// ? extends or implements
// extends --> herencia de clases
// implements --> implementa una interfaz
// La clase extiende de la abstracta y hereda todas sus propiedades y metodos
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) => energyLeft -= amount;
}

class NuclearPlant implements EnergyPlant {
  // La clase implementa de la abstracta y hereda todas sus propiedades y metodos
  // La diferencia con herencia es que aqui solamente puedo desear reescribir
  // solo un metodo y no todo lo que contenga la clase abstracta.
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) => energyLeft -= amount * 0.5;
}
