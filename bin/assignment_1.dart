import 'package:assignment_1/sol.dart';

void main(List<String> arguments) {
  final stack = PancakeHandler();
  stack.push(Pancake(1, true, 1));
  stack.push(Pancake(2, true, 2));
  stack.push(Pancake(3, false, 3));
  stack.push(Pancake(4, false, 4));
  stack.push(Pancake(5, true, 5));
  stack.push(Pancake(6, true, 6));
  stack.push(Pancake(7, false, 7));
  print(stack.remove(4, 6).serialNumber);
  print(stack.pop().serialNumber);
  print(stack.pop().serialNumber);
}
