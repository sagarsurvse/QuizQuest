import 'package:assignment_sagar/screens/quiz_screen.dart';
import 'package:flutter/material.dart';
import '../services/api_service.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz App'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            final quizData = await ApiService.fetchQuizData();
            if (quizData != null) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizScreen(quizData: quizData),
                ),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Failed to load quiz data.')),
              );
            }
          },
          child: const Text('Start Quiz'),
        ),
      ),
    );
  }
}


