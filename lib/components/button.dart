import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonName;
  const Button({
    required this.buttonName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 130),
      decoration: BoxDecoration(
        color: const Color(0xffeeb365),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          buttonName,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
