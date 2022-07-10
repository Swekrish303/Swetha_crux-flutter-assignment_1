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
  bool get isEmpty => throw UnimplementedError();

  @override
  int get length => throw UnimplementedError();

  @override
  T pop() {
    // TODO: implement pop
    throw UnimplementedError();
  }

  @override
  void push(T) {
    // TODO: implement push
  }

  @override
  T top() {
    // TODO: implement top
    throw UnimplementedError();
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

// TODO: implement PancakeHandler class which extends Stack
class PancakeHandler extends Stack<Pancake> {
  // TODO: Override `pop` method
  @override
  Pancake pop([int n = 1]) {
    return _plates.first;
  }

  Pancake remove(int from, int to) {
    return _plates.removeAt(from);
  }
}

extension ChefsPancakeHandler on PancakeHandler {
  int inspect(bool Function(Pancake) predicate) {
    // TODO: implement inspect
    throw UnimplementedError();
  }
}
