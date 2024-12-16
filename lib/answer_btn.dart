import 'package:flutter/material.dart';

class AnswerBtn extends StatelessWidget {
  const AnswerBtn(this.answerText, {super.key, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          backgroundColor: const Color.fromARGB(255, 33, 1, 95),
          foregroundColor: Colors.white),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
