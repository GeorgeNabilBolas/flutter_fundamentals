import 'package:flutter/material.dart';

class NoWeatherWidget extends StatelessWidget {
  const NoWeatherWidget({
    super.key,
    this.message,
  });
  final String? message;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Badge(
        offset: const Offset(-5, -10),
        alignment: Alignment.topCenter,
        backgroundColor: Colors.blue,
        label: const Icon(Icons.lightbulb, color: Colors.white),
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Card(
          elevation: 0,
          color: Colors.amber,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Text(
              softWrap: true,
              textAlign: TextAlign.center,
              message ?? 'Search to find weather details',
              style:
                  const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
