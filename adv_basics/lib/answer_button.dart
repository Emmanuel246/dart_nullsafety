import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer({required this.onTap, required this.answerText, super.key});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10,  horizontal: 40),
        backgroundColor: const Color.fromARGB(225, 33, 1, 95),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40)
        )
      ) ,
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
