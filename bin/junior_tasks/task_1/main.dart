/*
*   Напишите программу, которая выводит на консоль простые числа в промежутке от [2, 100].
*   Используйте для решения этой задачи оператор "%" (остаток от деления) и циклы
*/

void main() {
  for (int i = 2; i <= 100; i++) {
    bool isPrime = true;

    for (int j = 2; j < i; j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }

    if (isPrime) {
      print(i);
    }
  }
}
