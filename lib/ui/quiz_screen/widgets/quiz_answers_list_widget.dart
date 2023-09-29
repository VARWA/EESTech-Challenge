import 'package:eestech_challenge_app/domain/models/quiz_answer_model.dart';
import 'package:flutter/material.dart';


class QuizAnswersListWidget extends StatelessWidget {
  final List<QuizAnswer> quizAnswers;

  const QuizAnswersListWidget({
    super.key,
    required this.quizAnswers,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: quizAnswers
          .map(
            (e) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  // side: BorderSide(color: Colors.black),
                ),
                tileColor:
                    Theme.of(context).secondaryHeaderColor.withOpacity(0.4),
                title: Text(
                  e.answer,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
