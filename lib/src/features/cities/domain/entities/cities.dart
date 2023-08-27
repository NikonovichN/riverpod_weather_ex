import 'package:freezed_annotation/freezed_annotation.dart';

part 'cities.freezed.dart';
part 'cities.g.dart';

@freezed
class Cities with _$Cities {
  const factory Cities({
    required List<City> cities,
  }) = _Cities;

  factory Cities.fromJson(Map<String, dynamic> json) =>
      _$CitiesFromJson(json);
}

@freezed
class City with _$City {
  const factory City({
    required String name,
    required Coordinates coordinates,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) =>
      _$CityFromJson(json);
}

@freezed
class Coordinates with _$Coordinates {
  const factory Coordinates({
    required double latitude,
    required double longitude,
  }) = _Coordinates;

  factory Coordinates.fromJson(Map<String, double> json) =>
      _$CoordinatesFromJson(json);
}
