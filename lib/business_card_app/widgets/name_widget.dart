import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'George Nabil',
      style: TextStyle(
        fontSize: 40,
        fontFamily: 'Pacifico',
        color: Colors.black,
      ),
    );
  }
}
