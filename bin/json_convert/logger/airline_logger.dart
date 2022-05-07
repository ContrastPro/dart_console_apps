import 'package:logger/logger.dart';

class AirlineLogger {
  const AirlineLogger._();

  static const AirlineLogger instance = AirlineLogger._();

  static final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 3,
      printEmojis: false,
      lineLength: 90,
    ),
  );

  void info(String message) {
    _logger.i(message);
  }

  void error(String message) {
    _logger.w(message);
  }
}
