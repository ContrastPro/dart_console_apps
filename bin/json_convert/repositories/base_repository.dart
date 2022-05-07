import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class BaseRepository {
  BaseRepository() {
    api = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        validateStatus: (_) => true,
      ),
    );

    api.interceptors.addAll([
      PrettyDioLogger(
        requestBody: true,
      ),
    ]);
  }

  static const String baseUrl = 'https://api.instantwebtools.net/v1';

  late final Dio api;
}
