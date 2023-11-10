void main() {
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneration');
  final Hero nonHero = Hero(name: 'Esteban');
  print('************');
  print(wolverine.toString());
  print(wolverine.name);
  print(wolverine.power);
  print('************');
  print('--------------');
  print('************');
  print(nonHero.toString());
  print(nonHero.name);
  print(nonHero.power);
  print('************');
}

class Hero {
  String name;
  String power;

  // Hero(String pName, String pPower)
  //     : this.name = pName,
  //       this.power = pPower;
// * Inicializacion controlada
  Hero({required this.name, this.power = 'Sin Poder'});

  @override
  String toString() => 'Hero: $name \nPower: $power';
}
