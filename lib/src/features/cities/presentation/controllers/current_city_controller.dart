import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/entities/cities.dart';
import '../../repositories/cities_repository.dart';

class CurrentCityController extends StateNotifier<City?> {
  final CitiesRepository _citiesRepository;

  CurrentCityController(CitiesRepository citiesRepository)
      : _citiesRepository = citiesRepository,
        super(null);

  void setCity(City city) {
    _citiesRepository.setCurrentCity = city;
    state = _citiesRepository.getCurrentCity;
  }
}
