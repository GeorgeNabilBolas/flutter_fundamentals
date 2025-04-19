import 'package:flutter/material.dart';

class CategoryTitleBuilder extends StatelessWidget {
  const CategoryTitleBuilder({
    super.key,
    required this.item,
  });
  final String item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            spreadRadius: 5,
            blurRadius: 50,
          )
        ],
        borderRadius: BorderRadius.circular(8),
        color: Colors.amber,
      ),
      padding: const EdgeInsets.all(8),
      child: Text(
        item,
        style: const TextStyle(
          fontSize: 10,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
