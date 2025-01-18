import 'package:flutter/material.dart';

import '../models/quiz_model.dart';

class QuestionWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<bool> onOptionSelected;

  QuestionWidget({required this.question, required this.onOptionSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(question.description, style: TextStyle(fontSize: 18)),
        SizedBox(height: 20),
        ...question.options.map(
              (option) => ElevatedButton(
            onPressed: () => onOptionSelected(option.isCorrect),
            child: Text(option.description),
          ),
        ),
      ],
    );
  }
}
