import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/weather_details_card.dart';
import '../providers/screen_providers.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Weather'),
      ),
      body: ref.watch(weatherDataProvider).map(
            data: (data) {
              final currentCity = ref.read(getCurrentCityProvider);

              return ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () =>
                            Navigator.of(context).pushNamed('/cities'),
                        child: const Text('Choose city to show weather'),
                      ),
                    ),
                  ),
                  if (currentCity != null)
                    Text(
                      currentCity.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  const SizedBox(height: 20),
                  if (data.value != null)
                    ...data.value!.weatherList
                        .map(
                          (weatherData) => WeatherDetailsCard(
                            key: ValueKey(weatherData.date),
                            weatherDetails: weatherData,
                          ),
                        )
                        .toList(),
                ],
              );
            },
            error: (error) => Center(child: Text(error.toString())),
            loading: (_) => const Center(child: CircularProgressIndicator()),
          ),
    );
  }
}
