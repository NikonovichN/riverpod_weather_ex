import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entities/cities.dart';
import '../../repositories/cities_repository.dart';

final citiesData = FutureProvider.autoDispose<Cities>(
  (ref) async {
    final repository = ref.watch(citiesRepository);
    return await repository.fetchCities();
  },
);
