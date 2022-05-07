void main() {
  final String? s1 = null.toString();
  final String? s2 = null?.toString();

  print(s1.runtimeType);
  print(s2.runtimeType);

  final DateTime utc = DateTime.now().toUtc();
  final DateTime local = utc.toLocal();

  print('\n\nUTC: $utc');
  print('Iso8601: ${utc.toIso8601String()}');
  print('TO LOCAL: $local');

  int a = 5;
  String t = 'String: $a';
  print(t);
}
