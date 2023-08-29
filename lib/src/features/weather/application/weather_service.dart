import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../domain/entities/weather.dart';
import '../repositories/weather_repository.dart';
import '../../cities/repositories/cities_repository.dart';

final weatherServiceProvider = Provider(WeatherService.new);

class WeatherService {
  final Ref _ref;

  const WeatherService(Ref ref) : _ref = ref;

  Future<Weather?> fetchWeather() async {
    final currentCity = _ref.read(cityRepository).currentCity;

    if (currentCity == null) return null;

    return await _ref.read(weatherRepository).fetchWeather(currentCity);
  }
}
