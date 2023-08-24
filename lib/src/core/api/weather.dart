abstract class WeatherAPI {
  String get getSecretKey;
  String get getBaseURI;
  String get getWeatherPath;
}

class WeatherApiImpl implements WeatherAPI {
  static const _secretKey = 'e8a27a6517a79a986f247c69b90f0dfc';

  static const _baseURI = 'api.openweathermap.org';

  static const _weatherPath = 'data/2.5/forecast';

  @override
  get getSecretKey => _secretKey;

  @override
  String get getBaseURI => _baseURI;

  @override
  String get getWeatherPath => _weatherPath;
}
