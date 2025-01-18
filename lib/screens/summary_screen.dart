import 'package:flutter/material.dart';

import '../main.dart';

class SummaryScreen extends StatelessWidget {
  final int score;
  final int coins;

  const SummaryScreen({Key? key, required this.score, required this.coins}) : super(key: key);

  String _getBadge(int score) {
    if (score >= 80) return 'Quiz Master';
    if (score >= 50) return 'Quiz Expert';
    return 'Quiz Novice';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Summary'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Score: $score',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              'Coins Earned: $coins',
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              'Badge: ${_getBadge(score)}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                      (route) => false,
                );
              },
              child: const Text('Return to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
