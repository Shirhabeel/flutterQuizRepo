import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const btnText = 'Start Quiz';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Main Image
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),

          const SizedBox(height: 80),

          // Description Line
          Text(
            'Learn Flutter the Fun Way!!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(225, 237, 223, 252),
              fontSize: 24,
            ),
          ),

          const SizedBox(height: 30),

          // Imported from start_btn.dart file.
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(btnText),
          ),
        ],
      ),
    );
  }
}
