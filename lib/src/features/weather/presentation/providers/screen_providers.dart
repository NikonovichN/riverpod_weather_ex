import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/weather_service.dart';
import '../../domain/entities/weather.dart';
import '../../../cities/presentation/providers/screen_providers.dart';

final weatherDataProvider = FutureProvider.autoDispose<Weather?>(
  (ref) async {
    // TODO: try to figure out is it right place/approach
    ref.watch(currentCityProvider);

    final weatherService = ref.watch(weatherServiceProvider);
    return await weatherService.fetchWeather();
  },
);
