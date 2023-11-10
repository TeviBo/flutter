void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Peter Parker',
    'power': 'Throw webs',
    'isAlive': true,
  };

  // final Hero ironman = Hero(
  //     name: 'Tony Stark', power: 'Money', isAlive: rawJson['isAlive'] ?? false);

  final Hero ironman = Hero(name: 'Tony Stark', power: 'Money', isAlive: false);
  final spiderman = Hero.fromJson(rawJson);
  print(spiderman);
  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  // Hero(String pName, String pPower)
  //     : this.name = pName,
  //       this.power = pPower;
// * Inicializacion controlada
  Hero({required this.name, this.power = 'Sin Poder', required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name',
        power = json['power'] ?? 'No power',
        isAlive = json['isAlive'] ?? false;

  @override
  String toString() =>
      'Hero: $name \nPower: $power \nAlive: ${isAlive ? "YES!" : "Nope"}';
}
