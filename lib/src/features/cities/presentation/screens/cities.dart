import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/current_city.dart';
import '../widgets/city_card.dart';
import '../providers/screen_providers.dart';

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
      body: ref.watch(citiesDataProvider).map(
            data: (data) => ListView(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 16,
              ),
              children: [
                const CurrentCity(),
                const SizedBox(height: 20),
                ...data.value.cities
                    .map(
                      (city) => GestureDetector(
                        key: ValueKey(city.coordinates.toString()),
                        onTap: () => ref
                            .read(currentCityProvider.notifier)
                            .setCity(city),
                        child: CityCard(city),
                      ),
                    )
                    .toList(),
              ],
            ),
            error: (error) => Center(child: Text(error.toString())),
            loading: (_) => const Center(child: CircularProgressIndicator()),
          ),
    );
  }
}
