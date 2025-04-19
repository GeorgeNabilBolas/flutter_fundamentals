import 'package:flutter/material.dart';

class CityInfoWidget extends StatelessWidget {
  const CityInfoWidget({
    super.key,
    required this.name,
    required this.lastUpdated,
  });

  final String name;
  final DateTime lastUpdated;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        Text('Updated at: ${lastUpdated.hour}:${lastUpdated.minute}'),
      ],
    );
  }
}
