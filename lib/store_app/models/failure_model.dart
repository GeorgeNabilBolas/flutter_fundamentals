import 'package:flutter/widgets.dart';

class FailureModel {
  final String? title;
  final String? subtitle;
  final IconData? icon;
  final int? statusCode;

  FailureModel({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.statusCode,
  });
}
