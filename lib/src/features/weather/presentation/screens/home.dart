import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

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
            data: (data) => ListView(
              children: data.value?.weatherList == null
                  ? [
                      ElevatedButton(
                        onPressed: () =>
                            Navigator.of(context).pushNamed('/cities'),
                        child: const Text('Choose city to show weather'),
                      ),
                    ]
                  : data.value!.weatherList
                      .map(
                        (e) => Text(e.toString()),
                      )
                      .toList(),
            ),
            error: (error) => Center(child: Text(error.toString())),
            loading: (_) => const Center(child: CircularProgressIndicator()),
          ),
    );
  }
}
