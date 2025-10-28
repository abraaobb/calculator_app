import 'package:calculator/components/button.dart';
import 'package:calculator/components/button_row.dart';
import 'package:calculator/config/keyboard_layout.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;

  const Keyboard(this.cb, {super.key});

  Button _buildButton(ButtonConfig config) {
    final String text = config.text;
    final String? type = config.type;
    final String? colorType = config.color;

    if (type == 'big') {
      return Button.big(
        text: text,
        color: colorType == 'dark' ? Button.dark : Button.defaultColor,
        cb: cb,
      );
    } else if (type == 'operation') {
      return Button.operation(text: text, cb: cb);
    }

    return Button(
      text: text,
      color: colorType == 'dark' ? Button.dark : Button.defaultColor,
      cb: cb,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        children: KeyboardLayout.buttonRows.map((row) {
          return Flexible(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 1),
              child: ButtonRow(row.map(_buildButton).toList()),
            ),
          );
        }).toList(),
      ),
    );
  }
}
