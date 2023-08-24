abstract class CitiesAPI {
  String get getSecretKey;
  String get getBaseURI;
  String get getCitiesPath;
  String get getDefaultCountry;
  String get getTypeData;
  String get getDefaultLimitCities;
}

class CitiesApiImpl implements CitiesAPI {
  static const _secretKey =
      '98c77f2e1bmsh9467157beede6fbp1339ecjsn08f93dee3885';

  static const _baseURI = 'spott.p.rapidapi.com';

  static const _citiesPath = 'places/autocomplete';

  static const _defaultCountry = 'BY';

  static const _limitCities = '50';

  static const _typeData = 'CITY';

  @override
  String get getSecretKey => _secretKey;

  @override
  String get getBaseURI => _baseURI;

  @override
  String get getCitiesPath => _citiesPath;

  @override
  String get getDefaultCountry => _defaultCountry;

  @override
  String get getDefaultLimitCities => _limitCities;

  @override
  String get getTypeData => _typeData;
}
