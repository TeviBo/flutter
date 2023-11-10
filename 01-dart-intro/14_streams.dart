void main() {
  emitNumbers().listen((event) {
    print('Stream value: $event');
  });
}

Stream<int> emitNumbers() {
// take es para indicar hasta cuando se va a ejecutar el stream.
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(5);
}
