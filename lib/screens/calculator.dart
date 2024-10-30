import 'package:calculator/components/display.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Column(
        children: <Widget>[Display('123.45'), Text('keyboard')],
      ),
    );
  }
}