import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ElevatedButton(
            child: Text('9'),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
