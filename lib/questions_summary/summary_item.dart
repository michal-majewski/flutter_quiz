import 'package:adv_basics/questions_summary/question_indentifier.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.itemData});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData['question'] as String,
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                  'Chosen: ${itemData['user_answer'] as String}',
                  style: const TextStyle(
                    color: Color.fromARGB(255, 211, 196, 180),
                  )),
              Text(
                'Correct: ${itemData['correct_answer'] as String}',
                style: const TextStyle(
                  color: Color.fromARGB(255, 250, 250, 17),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
