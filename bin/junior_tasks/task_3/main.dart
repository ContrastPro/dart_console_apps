void main(){
  final List<int> array = [5, 1, 4, 2, 8];
  final List<int> sortedArray = _bubbleSort(array);

  print(sortedArray);
}

List<int> _bubbleSort(List<int> array) {
  final int length = array.length;

  for (int i = 0; i < length - 1; i++) {
    for (int j = 0; j < length - i - 1; j++) {
      if (array[j] > array[j + 1]) {
        final int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
  return (array);
}