void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 6, 7, 8, 9, 9, 10];
  print('[List Original]: $numbers');
  print('[Length]: ${numbers.length}');
  print('[Index 0]: ${numbers[0]}');
  print('[First]: ${numbers.first}');
  print('[Last]: ${numbers.last}');
  print('[Reverse]: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('[Iterable]: ${reversedNumbers}');
  print('[List]: ${reversedNumbers.toList()}');
  print('[Set]: ${reversedNumbers.toSet()}');
  // ? Diferencia entre una lista y un set:
  // Lista: Puede tener elementos repetidos.
  // Set: No puede tener elementos repetidos.

  // * Eliminar duplicados de manera facil:
  final numbersWithoutDuplicates = numbers.toSet().toList();
  print('[List without duplicates]: $numbersWithoutDuplicates');

  final numbersGreaterThan5 = numbers.where((int number) {
    return number > 5;
  });

  print('[Numbers greater than 5]: $numbersGreaterThan5');
  print('[Numbers No Repeat]: ${numbersGreaterThan5.toSet()}');
}
