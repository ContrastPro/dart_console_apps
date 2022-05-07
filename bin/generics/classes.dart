class ValuesNotLimited<T1, T2> {
  ValuesNotLimited({
    this.value1,
    this.value2,
  });

  final T1? value1;
  final T2? value2;
}

class ValuesLimited<T1 extends int, T2 extends String> {
  ValuesLimited({
    this.id,
    this.username,
  });

  final T1? id;
  final T2? username;
}

class CustomList<T> {
  final List<T> _list = [];

  void add(T value) => _list.add(value);

  void removeLast() => _list.removeLast();
}
