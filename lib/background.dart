import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background(this.startQuiz, {super.key});

  final void Function() startQuiz;

  final background = 'assets/images/quiz-logo.png';

  nothing() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: 0.6,
          child: Image.asset(
            background,
            width: 300,
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        const Text('Learn Flutter the fun way!',
            style: TextStyle(
                color: Color.fromARGB(255, 247, 242, 255), fontSize: 30)),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 247, 242, 255),
          ),
          icon: const Icon(Icons.arrow_right_alt_outlined),
          label: const Text('Start Quiz'),
        )
      ],
    );
  }
}
