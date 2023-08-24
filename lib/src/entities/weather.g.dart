// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      weatherList: (json['list'] as List<dynamic>)
          .map((e) => WeatherDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'list': instance.weatherList,
    };

_$_WeatherDetails _$$_WeatherDetailsFromJson(Map<String, dynamic> json) =>
    _$_WeatherDetails(
      date: json['dt'] as num,
      main: MainWeatherInfo.fromJson(json['main'] as Map<String, dynamic>),
      status: (json['weather'] as List<dynamic>)
          .map((e) => WeatherStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_WeatherDetailsToJson(_$_WeatherDetails instance) =>
    <String, dynamic>{
      'dt': instance.date,
      'main': instance.main,
      'weather': instance.status,
    };

_$_MainWeatherInfo _$$_MainWeatherInfoFromJson(Map<String, dynamic> json) =>
    _$_MainWeatherInfo(
      temp: json['temp'] as num,
      tempFeelsLike: json['feels_like'] as num,
    );

Map<String, dynamic> _$$_MainWeatherInfoToJson(_$_MainWeatherInfo instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.tempFeelsLike,
    };

_$_WeatherStatus _$$_WeatherStatusFromJson(Map<String, dynamic> json) =>
    _$_WeatherStatus(
      main: json['main'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$_WeatherStatusToJson(_$_WeatherStatus instance) =>
    <String, dynamic>{
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };
