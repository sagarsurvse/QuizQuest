import 'package:flutter/material.dart';
import '../models/quiz_model.dart';
import 'summary_screen.dart';

class QuizScreen extends StatefulWidget {
  final dynamic quizData;

  const QuizScreen({Key? key, required this.quizData}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  int score = 0;
  int coins = 0;

  void _answerQuestion(bool isCorrect) {
    if (isCorrect) {
      score += 10;
      coins += 10;
    } else {
      coins = (coins - 5).clamp(0, coins);
    }

    if (currentQuestionIndex < widget.quizData['questions'].length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SummaryScreen(score: score, coins: coins),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = widget.quizData['questions'][currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text('Question ${currentQuestionIndex + 1}'),
      ),
      body: Column(
        children: [
          LinearProgressIndicator(
            value: (currentQuestionIndex + 1) / widget.quizData['questions'].length,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              question['description'],
              style: const TextStyle(fontSize: 18),
            ),
          ),
          ...question['options'].map<Widget>((option) {
            return ListTile(
              title: Text(option['description']),
              onTap: () => _answerQuestion(option['is_correct']),
            );
          }).toList(),
        ],
      ),
    );
  }
}
