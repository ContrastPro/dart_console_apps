void main() {
  const List<int> array = [5, 1, 4, 2, 8];
  final List<int> sortedArray = _insertionSort(array);

  print(array);
  print(sortedArray);
}

List<int> _insertionSort(List<int> data) {
  final List<int> array = [...data];
  final int length = array.length;

  int i;
  int j;

  for (i = 1; i < length; i++) {
    final int key = array[i];
    j = i - 1;

    // Compare key with each element on the left of it
    // until an element smaller than it is found.
    // For descending order, change key<array[j] to key>array[j].
    while (j >= 0 && key < array[j]) {
      array[j + 1] = array[j];
      --j;
    }

    // Place key at after the element just smaller than it.
    array[j + 1] = key;
  }

  return array;
}
