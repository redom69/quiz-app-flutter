import 'package:flutter/material.dart';
import 'package:quiz_app/background.dart';

class ColorContainer extends StatelessWidget {
  const ColorContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 105, 77, 155),
          Color.fromARGB(255, 103, 24, 240)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: const Center(child: Background()),
    );
  }
}
