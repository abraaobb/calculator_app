import 'package:calculator/components/button.dart';
import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;
  const ButtonRow(this.buttons, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: buttons,
    );
  }
}