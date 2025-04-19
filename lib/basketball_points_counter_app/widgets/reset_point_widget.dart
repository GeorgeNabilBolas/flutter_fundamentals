import 'package:flutter/material.dart';

class ResetPointWidget extends StatelessWidget {
  const ResetPointWidget({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 3.5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        onPressed: onPressed,
        child: const Text('Reset'),
      ),
    );
  }
}
