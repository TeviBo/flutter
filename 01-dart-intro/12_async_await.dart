void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://fernando-herrera.com');
    print(value);
  } catch (err) {
    print('There was an error: $err');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  throw 'No se pudo completar la petición';
  // return 'Http response';
}
