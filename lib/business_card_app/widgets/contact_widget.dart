import 'package:flutter/material.dart';
import 'package:flutter_fundamentals/business_card_app/models/contact_method.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key, required this.type});
  final ContactType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Icon(
          type.icon,
          color: const Color(0xffC9E0FD),
        ),
        title: Text(
          type.title,
          style: const TextStyle(
            color: Color(0xffC9E0FD),
          ),
        ),
      ),
    );
  }
}
