import 'package:flutter/material.dart';

import 'screens/home/home.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(body: HomeScreen()));
  }
}
