import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';

import '../core/api/weather.dart';

final httpClient = Provider((_) => Client());

final weatherAPI = Provider((_) => WeatherApiImpl());
