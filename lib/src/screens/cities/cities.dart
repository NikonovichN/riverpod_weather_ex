import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../repositories/repositories.dart';
import '../../entities/entities.dart';

final citiesData = FutureProvider.autoDispose<Cities>(
  (ref) async {
    final repository = ref.watch(citiesRepository);
    return await repository.fetchCities();
  },
);

class CitiesScreen extends HookConsumerWidget {
  const CitiesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Cities'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: Navigator.of(context).pop,
        ),
      ),
      body: Center(
        child: ref.watch(citiesData).map(
              data: (data) => ListView(
                children: data.value.cities
                    .map((city) => Text(city.toString()))
                    .toList(),
              ),
              error: (error) => Text(error.toString()),
              loading: (_) => const CircularProgressIndicator(),
            ),
      ),
    );
  }
}
