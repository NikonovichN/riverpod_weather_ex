import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    @JsonKey(name: 'list') required List<WeatherDetails> weatherList,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@freezed
class WeatherDetails with _$WeatherDetails {
  const factory WeatherDetails({
    @JsonKey(name: 'dt') required num date,
    required MainWeatherInfo main,
    @JsonKey(name: 'weather') required List<WeatherStatus> status,
  }) = _WeatherDetails;

  factory WeatherDetails.fromJson(Map<String, dynamic> json) =>
      _$WeatherDetailsFromJson(json);
}

@freezed
class MainWeatherInfo with _$MainWeatherInfo {
  const factory MainWeatherInfo({
    required num temp,
    @JsonKey(name: 'feels_like') required num tempFeelsLike,
  }) = _MainWeatherInfo;

  factory MainWeatherInfo.fromJson(Map<String, dynamic> json) =>
      _$MainWeatherInfoFromJson(json);
}

@freezed
class WeatherStatus with _$WeatherStatus {
  const factory WeatherStatus({
    required String main,
    required String description,
    required String icon,
  }) = _WeatherStatus;

  factory WeatherStatus.fromJson(Map<String, dynamic> json) =>
      _$WeatherStatusFromJson(json);
}
