import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../src/repositories/repositories.dart';
import '../../entities/entities.dart';

final weatherData = FutureProvider.autoDispose<Weather>(
  (ref) async {
    final repository = ref.watch(weatherRepository);
    return await repository.fetchWeather();
  },
);

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Weather'),
      ),
      body: ListView(
        children: [
          ref.watch(weatherData).map(
                data: (data) => Column(
                  children: [
                    ElevatedButton(
                      onPressed: () =>
                          Navigator.of(context).pushNamed('/cities'),
                      child: const Text('Go to cities'),
                    ),
                    const SizedBox(height: 20),
                    ...data.value.weatherList
                        .map(
                          (e) => Text(e.toString()),
                        )
                        .toList(),
                  ],
                ),
                error: (error) => Center(child: Text(error.toString())),
                loading: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
        ],
      ),
    );
  }
}
