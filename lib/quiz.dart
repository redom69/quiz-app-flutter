import 'package:flutter/material.dart';
import 'package:quiz_app/background.dart';
import 'package:quiz_app/questions_screens.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = Background(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreens();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 105, 77, 155),
          Color.fromARGB(255, 103, 24, 240)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Center(child: activeScreen),
    );
  }
}
