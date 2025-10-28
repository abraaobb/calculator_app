import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const Color dark = Color.fromRGBO(82, 82, 82, 1);
  static const Color defaultColor = Color.fromRGBO(112, 112, 112, 1);
  static const Color operationColor = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  const Button({
    required this.text,
    this.big = false,
    this.color = defaultColor,
    required this.cb,
    super.key,
  });

  const Button.big({
    required String text,
    required void Function(String) cb,
    Color color = defaultColor,
    Key? key,
  }) : this(text: text, big: true, color: color, cb: cb, key: key);

  const Button.operation({
    required String text,
    required void Function(String) cb,
    Color color = operationColor,
    Key? key,
  }) : this(text: text, big: false, color: color, cb: cb, key: key);

  static const TextStyle _textStyle = TextStyle(
    color: Colors.white,
    fontSize: 32,
    fontWeight: FontWeight.w200,
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: big ? 2 : 1,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            onPressed: () => cb(text),
            child: Text(
              text,
              style: _textStyle,
            )));
  }
}
