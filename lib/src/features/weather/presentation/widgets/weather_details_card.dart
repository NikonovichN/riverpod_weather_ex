import 'package:flutter/material.dart';

import '../../domain/entities/weather.dart';

class WeatherDetailsCard extends StatelessWidget {
  final WeatherDetails weatherDetails;

  const WeatherDetailsCard({super.key, required this.weatherDetails});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Text(
              weatherDetails.getLocalDate(),
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(weatherDetails.getLocalTime()),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(text: 'Temperature: '),
                  TextSpan(
                    text: weatherDetails.tempToCelsius(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const TextSpan(text: ' Feels like: '),
                  TextSpan(
                    text: weatherDetails.feelsLikeToCelsius(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
