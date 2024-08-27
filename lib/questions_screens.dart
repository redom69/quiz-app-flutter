import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreens extends StatefulWidget {
  const QuestionsScreens({super.key});

  @override
  State<QuestionsScreens> createState() {
    return _QuestionsScreensState();
  }
}

class _QuestionsScreensState extends State<QuestionsScreens> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.text,
                style: const TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ...currentQuestion.answers.map((item) {
                return AnswerButton(
                  text: item,
                  onTap: () {},
                );
              })
            ],
          ),
        ));
  }
}
