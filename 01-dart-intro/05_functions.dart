void main() {
  print(greetEveryone1());
  print(greetEveryone());

  print('[Suma]: ${addTwoNumbers(1, 2)}}');
  print('[Suma Simplificada]: ${addTwoNumbers1(1, 5)}}');
  print('[Suma Opcional]: ${addTwoNumbers1(1, 5)}}');

  print(greetPerson(name: 'Esteban'));
  print(greetPerson(name: 'Esteban', message: 'Tu nombre es:'));
  print(greetPerson(message: 'Hi, ', name: 'Esteban'));
}

String greetEveryone1() {
  return 'Hello everyone!';
}

// * Forma simplificada.
String greetEveryone() => 'Hello everyone Simplified !';

// * Las funciones de flecha unicamente retornan un valor.
// * No pueden tener cuerpo
// String greetEveryone() => {
//   return 'Hello everyone!';
// }

int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbers1(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int b = 0]) {
  // b = b ?? 0;
  //  * Si b es null, entonces b = 0. Forma simplificada:
  // b ??= 0;
  return a + b;
}

// * Funciones con argumentos de posicion aleatoria.
// Al usar {} se convierte en un argumento opcional y puede ser enviado en
// cualquier posicion siempre que se indique el nombre de la variable.
// Ejemplo:
// greetPerson(name: 'Esteban', message: 'Hola,');
String greetPerson({required String name, String message = 'Hola,'}) {
  return '$message $name';
}
