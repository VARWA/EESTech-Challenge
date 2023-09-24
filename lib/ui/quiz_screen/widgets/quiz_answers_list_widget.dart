import 'package:flutter/material.dart';

import '../../../domain/models/quiz_item_model.dart';

class QuizAnswersListWidget extends StatelessWidget {
  final List<QuizItem> quizItems;

  const QuizAnswersListWidget({super.key, required this.quizItems});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: quizItems
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
                  e.text,
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
