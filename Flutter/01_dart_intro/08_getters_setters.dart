void main() {
  final mySquare = Square(side: 10);

//   mySquare.side = 5; si es negativo se transforma en positio

  print('Área: ${mySquare.area}');
}

class Square {
  //con guión bajo es privado
  double _side; //side * side
  //final cuando no se cambia

  Square({required double side})
      : assert(side >= 0, 'side must be >= 0'),
        //primero las aserciones, y lo puede acompañar un mensaje de error
        _side = side;

  //crear getter
  double get area {
    return _side * _side;
  }

  //crear setter
  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be >= 0';

    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
