void main() async {
  print('Inicio del programa');

  try {
    final value = await httpGet('https://fernando-herrera.com');
    print(value);
  } on Exception catch (err) {
    print('We had an exception: $err');
  } catch (err) {
    print('Oops something went wrong: $err');
  } finally {
    print('Fin try catch');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 2));

  throw Exception('There is no parameters on url');
}
