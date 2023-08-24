import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/api.dart';
import '../entities/entites.dart';

final weatherRepository = Provider(WeatherRepository.new);

class WeatherRepository {
  final Ref _ref;

  const WeatherRepository(Ref ref) : _ref = ref;

  Future<Weather> fetchWeather() async {
    final api = _ref.read(weatherAPI);
    final http = _ref.read(httpClient);

    final mockedCity = {
      'lat': '53.9006',
      'lon': '27.5590',
      'units': 'metric',
      'appid': api.getSecretKey,
    };

    final response = await http.get(
      Uri.https(api.getBaseURI, api.getWeatherPath, mockedCity),
    );

    return Weather.fromJson(jsonDecode(response.body));
  }
}
