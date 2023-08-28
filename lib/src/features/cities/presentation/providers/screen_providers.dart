import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../controllers/current_city_controller.dart';
import '../../domain/entities/cities.dart';
import '../../repositories/cities_repository.dart';

final citiesDataProvider = FutureProvider.autoDispose<Cities>(
  (ref) async {
    final repository = ref.watch(citiesRepository);
    return await repository.fetchCities();
  },
);

final currentCityProvider = StateNotifierProvider<CurrentCityController, City?>(
  (ref) => CurrentCityController(ref.watch(citiesRepository)),
);
