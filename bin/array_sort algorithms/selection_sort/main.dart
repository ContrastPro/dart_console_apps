void main() {
  const List<int> array = [5, 1, 4, 2, 8];
  final List<int> sortedArray = _selectionSort(array);

  print(array);
  print(sortedArray);
}

List<int> _selectionSort(List<int> data) {
  final List<int> array = [...data];
  final int length = array.length;

  for (int i = 0; i < length - 1; i++) {
    int minIndex = i;

    for (int j = i + 1; j < length; j++) {

      // To sort in descending order, change > to < in this line.
      // Select the minimum element in each loop.
      if (array[j] < array[minIndex]) {
        minIndex = j;
      }
    }

    // Put min at the correct position
    array[i] = array[minIndex];
    array[minIndex] = array[i];
  }

  return array;
}
