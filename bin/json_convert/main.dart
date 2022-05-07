import 'airline_model.dart';

void main() {
  final Map<String, dynamic> data = {
    'id': 1,
    'name': 'Quatar Airways',
    'logo': 'https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/300px-Qatar_Airways_Logo.svg.png',
    'website': 'www.qatarairways.com',
    'averagePrice': 849.59,
  };

  final Airline airline = Airline.fromJson(data);

  print('The average cost of "${airline.name}" tickets is:');
  print('${airline.averagePrice}\$');
}
