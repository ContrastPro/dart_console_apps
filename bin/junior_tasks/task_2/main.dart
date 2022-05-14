/*
*   Дан массив целых чисел и ещё одно целое число.
*   Удалите все вхождения этого числа из массива (пропусков быть не должно)
*/

void main() {
  final int pattern = 2;
  final List<int> firstList = [0, 1, 2, 2, 3, 0, 4, 2];

  print('Pattern: $pattern');
  print('Original list: $firstList');

  firstList.removeWhere((e) => e == pattern);

  print('Modified list: $firstList');
}
