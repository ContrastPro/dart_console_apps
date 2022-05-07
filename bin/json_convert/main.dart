import 'logger/airline_logger.dart';
import 'models/airline_model.dart';
import 'repositories/airline_repository.dart';

void main() {
  _simpleObjectConvert();
  _fetchAndConvert();
}

void _simpleObjectConvert() {
  const AirlineLogger logger = AirlineLogger.instance;

  final Map<String, dynamic> data = {
    'id': 1,
    'name': 'Quatar Airways',
    'country': 'Quatar',
    'logo': 'http://tny.im/s4J',
    'slogan': 'Going Places Together',
    'website': 'www.qatarairways.com',
  };

  final AirlineModel airline = AirlineModel.fromJson(data);

  logger.info('The slogan of ${airline.name} "is: ${airline.slogan}"');
}

Future<void> _fetchAndConvert() async {
  const AirlineLogger logger = AirlineLogger.instance;

  final AirlineModel? airline = await AirlineRepository.getAirlineById(
    airlineId: 2,
  );

  if (airline != null) {
    logger.info('The slogan of ${airline.name} "is: ${airline.slogan}"');
  } else {
    logger.error('Airline not found');
  }
}
