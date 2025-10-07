import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          Text(
            'Learn Flutter the Fun Way!',
            style: GoogleFonts.nunitoSans(
              color: const Color.fromARGB(255, 202, 200, 200),
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
