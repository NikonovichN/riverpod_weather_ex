import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:riverpod_weather_ex/src/providers/api.dart';
import '../domain/entities/cities.dart';

final cityRepository = Provider((ref) => CityRepository());

final citiesRepository = Provider((ref) => CitiesRepository(ref));

class CityRepository {
  City? currentCity;

  CityRepository() : currentCity = null;

  void setCurrentCity(City city) => currentCity = city;
}

class CitiesRepository {
  final Ref _ref;

  CitiesRepository(Ref ref) : _ref = ref;

  Future<Cities> fetchCities() async {
    final api = _ref.read(citiesAPI);
    final http = _ref.read(httpClient);

    final response = await http.get(
      Uri.https(api.getBaseURI, api.getCitiesPath, {
        'limit': api.getDefaultLimitCities,
        'country': api.getDefaultCountry,
        'type': api.getTypeData,
      }),
      headers: {
        "X-RapidAPI-Host": api.getBaseURI,
        "X-RapidAPI-Key": api.getSecretKey,
      },
    );

    return Cities.fromJson({'cities': jsonDecode(response.body)});
  }
}
