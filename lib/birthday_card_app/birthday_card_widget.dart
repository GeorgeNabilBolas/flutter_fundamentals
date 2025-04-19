import 'package:flutter/material.dart';

class BirthdayCardWidget extends StatelessWidget {
  const BirthdayCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD2BCD5),
        elevation: 0,
      ),
      body: const Image(
        width: double.infinity,
        fit: BoxFit.fill,
        image: AssetImage('lib/birthday_card_app/images/image.png'),
      ),
    );
  }
}
