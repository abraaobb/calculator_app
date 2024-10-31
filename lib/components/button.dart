import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  const Button({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Text(text));
  }
}
