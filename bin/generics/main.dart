import 'classes.dart';
import 'functions.dart';

void main() {
  final int? fetchedValue = getValue<int>(2);

  printValue(fetchedValue);

  final ValuesNotLimited<String, double> value1 = ValuesNotLimited(
    value1: 'test',
    value2: 25.0,
  );

  final ValuesNotLimited value2 = ValuesNotLimited<String, double>(
    value1: 'test',
    value2: 25.0,
  );

  final ValuesNotLimited<String, double> value3 =
      ValuesNotLimited<String, double>(
    value1: 'test',
    value2: 25.0,
  );

  final ValuesLimited<int, String> valuesLimited1 = ValuesLimited(
    id: 498498984,
    username: 'my_username',
  );

  final CustomList<int> customList = CustomList();
  customList
    ..add(1)
    ..add(2)
    ..add(3)
    ..add(4)
    ..add(5)
    ..add(6)
    ..add(7)
    ..add(8)
    ..add(9)
    ..add(10);

  customList.removeLast();

  // Exception, because set generic type as int
  // customList.add('');
}
