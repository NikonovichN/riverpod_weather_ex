abstract class WeatherAPI {
  String get getSecretKey;
  String get getBaseURI;
  String get getWeatherPath;
}

class WeatherApiImpl implements WeatherAPI {
  static const secretKey = 'e8a27a6517a79a986f247c69b90f0dfc';

  static const baseURI = 'api.openweathermap.org';

  static const weatherPath = 'data/2.5/forecast';

  @override
  get getSecretKey => secretKey;

  @override
  String get getBaseURI => baseURI;

  @override
  String get getWeatherPath => weatherPath;
}
