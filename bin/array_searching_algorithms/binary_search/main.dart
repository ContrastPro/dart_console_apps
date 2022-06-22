void main() {
  // Binary search work properly if list sorted
  const List<int> array = [1, 2, 4, 5, 8];

  final int index = _binarySearch(
    data: array,
    value: 2,
  );

  print(array);
  print(index);
}

int _binarySearch({
  required List<int> data,
  required int value,
}) {
  int min = 0;
  int max = data.length - 1;

  while (min <= max) {
    final int mid = ((min + max) / 2).floor();
    if (value == data[mid]) {
      return mid;
    } else if (value < data[mid]) {
      max = mid - 1;
    } else {
      min = mid + 1;
    }
  }

  return -1;
}
