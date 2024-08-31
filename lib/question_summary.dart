import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summaryData.map((data) {
        return Row(
          children: [
            Text((summaryData.indexOf(data) + 1)
                .toString()), // Muestra el número de la pregunta basado en su índice en la lista
            const SizedBox(
                width: 10), // Añadir un espacio entre el número y la pregunta
            Expanded(
              child: Column(
                children: [
                  Text(data['question'] as String),
                  const SizedBox(height: 5),
                  Text('Tu respuesta: ${data['user_answer'] as String}'),
                  Text(
                      'Respuesta correcta: ${data['correct_answer'] as String}'),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
