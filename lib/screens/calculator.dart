import 'package:calculator/components/display.dart';
import 'package:calculator/components/keyboard.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  _onPressed(String text) {
    print(text);
  }

  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [const Display('123.45'), Keyboard(_onPressed)],
      ),
    );
  }
}
