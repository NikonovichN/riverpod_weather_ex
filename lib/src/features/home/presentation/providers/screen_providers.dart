import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../repositories/weather_repository.dart';
import '../../domain/entities/weather.dart';

final weatherData = FutureProvider.autoDispose<Weather>(
  (ref) async {
    final repository = ref.watch(weatherRepository);
    return await repository.fetchWeather();
  },
);
