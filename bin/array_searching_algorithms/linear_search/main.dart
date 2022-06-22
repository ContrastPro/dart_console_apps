void main() {
  const List<int> array = [5, 1, 4, 2, 8];
  final int index = _linearSearch(
    data: array,
    value: 2,
  );

  print(array);
  print(index);
}

int _linearSearch({
  required List<int> data,
  required int value,
}) {
  for (int i = 0; i < data.length; i++) {
    if (data[i] == value) {
      return i;
    }
  }

  return -1;
}
