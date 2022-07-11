abstract class StackInterface<T> {
  void push(T);
  T pop();
  T top();
  bool get isEmpty;
  int get length;
}

/// actually the PlatesHandler but renamed
class Stack<T> implements StackInterface<T> {
  /// You can only use this list for implementing the methods
  final _plates = <T>[];
  @override
  bool get isEmpty => _plates.isEmpty;

  @override
  int get length => _plates.length;

  @override
  T pop() {
    if (_plates.isEmpty) {
      throw Exception("Stack Empty");
    } else {
      return _plates.removeLast();
    }
    //throw UnimplementedError();
  }

  @override
  void push(T) {
    _plates.add(T);
    //throw UnimplementedError();
  }

  @override
  T top() {
    if (_plates.isEmpty) {
      throw Exception("Stack Empty");
    } else {
      return _plates.last;
    }
    //throw UnimplementedError();
  }
}

class Pancake {
  final double weight;
  final bool hasTopping;
  final int serialNumber;
  Pancake(this.weight, this.hasTopping, this.serialNumber);
  @override
  bool operator ==(Object other) {
    return (other is Pancake) && other.serialNumber == serialNumber;
  }

  @override
  int get hashCode => serialNumber;
}

class PancakeHandler extends Stack<Pancake> {
  @override
  Pancake pop([int n = 1]) {
    if (_plates.isNotEmpty) {
      _plates.length = _plates.length - (n - 1);
      return _plates.removeLast();
    } else {
      throw Exception("Stack Empty");
    }
    //return _plates.first;
  }

  Pancake remove(int from, int to) {
    if (_plates[to].hasTopping || _plates[from - 1].hasTopping) {
      throw Exception("Has Syrup");
    } else {
      _plates.removeRange(from + 1, to + 1);
    }
    return _plates.removeAt(from);
  }
}

extension ChefsPancakeHandler on PancakeHandler {
  int inspect(bool Function(Pancake) check) {
    int n1 = _plates.length;
    _plates.removeWhere((Pancake p) => check(p) == false);
    return (n1 - _plates.length);

    //throw UnimplementedError();
  }
}
