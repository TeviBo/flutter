abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

mixin Flyer {
  void fly() => print('I\'m flying');
}

mixin Walker {
  void walk() => print('I\'m walking');
}

mixin Swimmer {
  void swim() => print('I\'m swimming');
}

class Dolphin extends Mammal with Swimmer {}

class Bat extends Mammal with Walker, Flyer {}

class Cat extends Mammal with Walker {}

class Dove extends Bird with Walker, Flyer {}

class Duck extends Bird with Walker, Flyer, Swimmer {}

class Shark extends Fish with Swimmer {}

class FlyingFish extends Fish with Swimmer, Flyer {}

void main() {
  print('***[Dolphin]***');
  final flipper = Dolphin();
  flipper.swim();

  print('***[Bat]***');
  final batman = Bat();
  batman.fly();
  batman.walk();

  print('***[Duck]***');
  final namor = Duck();
  namor.fly();
  namor.swim();
  namor.walk();
}
