import 'dart:math';

void applyOperation(List<int> data, int Function(int) handler) {
  for (var value in data) {
    print('$value → ${handler(value)}');
  }
}

void main() {
  List<int> listA = [1, 2, 3, 4, 5];
  List<int> listB = [10, 20, 30, 40, 50];

  print('Squares of values in List B:');
  applyOperation(listB, (n) => pow(n, 2).toInt());

  print('\nRunning custom expression: n(n+1) + n² on List A:');
  applyOperation(listA, (n) => n * (n + 1) + pow(n, 2).toInt());

  print('\nSum of squares up to n (List B):');
  applyOperation(listB, (n) => (n * (n + 1) * (2 * n + 1)) ~/ 6);

  print('\nSum of cubes up to n (List A):');
  applyOperation(listA, (n) => pow((n * (n + 1) ~/ 2), 2).toInt());
}
