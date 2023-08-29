import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../cities/domain/entities/cities.dart';
import 'package:riverpod_weather_ex/src/providers/api.dart';
import '../domain/entities/weather.dart';

final weatherRepository = Provider(WeatherRepository.new);

class WeatherRepository {
  final Ref _ref;

  const WeatherRepository(Ref ref) : _ref = ref;

  Future<Weather> fetchWeather(City city) async {
    final api = _ref.read(weatherAPI);
    final http = _ref.read(httpClient);

    final response = await http.get(
      Uri.https(
        api.getBaseURI,
        api.getWeatherPath,
        {
          'lat': city.coordinates.latitude.toString(),
          'lon': city.coordinates.longitude.toString(),
          'units': 'metric',
          'appid': api.getSecretKey,
        },
      ),
    );

    return Weather.fromJson(jsonDecode(response.body));
  }
}
