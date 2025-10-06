import 'package:flutter/material.dart';

class MainLanding extends StatelessWidget {
  const MainLanding(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
          ),
          const SizedBox(height: 50),
          const Text(
            'Learn Flutter the Fun Way!',
            style: TextStyle(
              color: Color.fromARGB(255, 202, 200, 200),
              fontSize: 24,
            ),
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt_sharp),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
