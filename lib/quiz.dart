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
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = Background(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreens();
    }

    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 105, 77, 155),
            Color.fromARGB(255, 103, 24, 240)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Center(
          child: screenWidget,
        ));
  }
}
