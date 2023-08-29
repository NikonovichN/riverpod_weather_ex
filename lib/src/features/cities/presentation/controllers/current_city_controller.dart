import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/cities.dart';
import '../../repositories/cities_repository.dart';

class CurrentCityController extends StateNotifier<City?> {
  final Ref _ref;

  CurrentCityController(Ref ref)
      : _ref = ref,
        super(null);

  void setCity(City city) {
    final repository = _ref.read(cityRepository);

    repository.setCurrentCity(city);
    state = repository.currentCity;
  }
}
