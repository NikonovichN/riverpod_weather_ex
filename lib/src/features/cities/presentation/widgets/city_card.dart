import 'package:flutter/material.dart';

import '../../domain/entities/cities.dart';

class CityCard extends StatelessWidget {
  final City city;

  const CityCard(this.city, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Text(
              city.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Latitude: ${city.coordinates.latitude}'),
                Text('Longitude: ${city.coordinates.longitude}'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
