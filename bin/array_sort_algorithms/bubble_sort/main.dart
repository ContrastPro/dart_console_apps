void main() {
  const List<int> array = [5, 1, 4, 2, 8];
  final List<int> sortedArray = _bubbleSort(array);

  print(array);
  print(sortedArray);
}

List<int> _bubbleSort(List<int> data) {
  final List<int> array = [...data];
  final int length = array.length;

  // Loop to access each array element
  for (int i = 0; i < length - 1; i++) {

    // Loop to compare array elements
    for (int j = 0; j < length - i - 1; j++) {

      // Compare two adjacent elements
      // change > to < to sort in descending order
      if (array[j] > array[j + 1]) {

        // Swapping occurs if elements
        // are not in the intended order
        final int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }

  return array;
}
