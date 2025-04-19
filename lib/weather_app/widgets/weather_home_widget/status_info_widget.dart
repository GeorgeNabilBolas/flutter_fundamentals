import 'package:flutter/material.dart';

class StatusInfoWidget extends StatelessWidget {
  const StatusInfoWidget({
    super.key,
    required this.status,
  });

  final String status;

  @override
  Widget build(BuildContext context) {
    return Text(status, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold));
  }
}
