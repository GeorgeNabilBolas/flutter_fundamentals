import 'package:flutter/material.dart';

class AddingPointWidget extends StatelessWidget {
  const AddingPointWidget({
    super.key,
    required this.numberOfPoints,
    required this.onPressed,
  });
  final int numberOfPoints;
  final void Function(int) onPressed;
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
        onPressed: () => onPressed(numberOfPoints),
        child: Text('Add $numberOfPoints Point'),
      ),
    );
  }
}
