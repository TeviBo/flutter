void main() {
  final Square mySquare = Square(side: -10.0);
  // mySquare.side = -5;
  print('[Area]: ${mySquare.area}');
}

class Square {
  double _side; // side * side

  Square({required double side})
      : assert(side > 0, 'Side must be >=0'),
        _side = side;

  double get area => _side * _side;

  set side(double value) {
    print('***Setting new value $value***');
    if (value < 0) throw 'Side can\'t be negative';
    _side = value;
  }

  double calculateArea() => _side * _side;
}
