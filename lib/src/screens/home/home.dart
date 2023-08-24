import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../src/repositories/repositories.dart';
import '../../../src/entities/entites.dart';

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
    return Center(
      child: ref.watch(weatherData).map(
            data: (data) => ListView(
              children: data.value.weatherList
                  .map(
                    (e) => Text(e.toString()),
                  )
                  .toList(),
            ),
            error: (error) => Text(error.toString()),
            loading: (_) => const CircularProgressIndicator(),
          ),
    );
  }
}
