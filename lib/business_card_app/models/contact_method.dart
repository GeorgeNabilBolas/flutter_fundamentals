import 'package:flutter/material.dart' show Icons, IconData;

abstract class ContactType {
  final String title;
  final IconData icon;

  ContactType({
    required this.title,
    required this.icon,
  });
}

class PhoneType extends ContactType {
  PhoneType() : super(title: '01203558990', icon: Icons.phone);
}

class EmailType extends ContactType {
  EmailType() : super(title: 'georgenabil@gmail.com', icon: Icons.email);
}
