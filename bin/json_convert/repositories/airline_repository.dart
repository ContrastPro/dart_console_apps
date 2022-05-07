import 'package:dio/dio.dart';

import '../models/airline_model.dart';
import 'base_repository.dart';

class AirlineRepository {
  const AirlineRepository._();

  static final BaseRepository _baseRepository = BaseRepository();
  static final Dio _api = _baseRepository.api;

  static Future<AirlineModel?> getAirlineById({
    required int airlineId,
  }) async {
    final Response response = await _api.get(
      '/airlines/$airlineId',
    );

    if (response.statusCode == 200) {
      return AirlineModel.fromJson(
        response.data,
      );
    }

    return null;
  }
}
