import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/screen_providers.dart';

class CurrentCity extends HookConsumerWidget {
  const CurrentCity({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentCity = ref.watch(currentCityProvider);

    return Text(
      'Current city: ${currentCity?.name ?? 'non choose yet'}',
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
