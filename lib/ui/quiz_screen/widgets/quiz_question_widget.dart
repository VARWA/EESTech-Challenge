import 'package:cached_network_image/cached_network_image.dart';
import 'package:eestech_challenge_app/config/theme/theme_colors.dart';
import 'package:eestech_challenge_app/ui/quiz_screen/widgets/quiz_answers_list_widget.dart';
import 'package:flutter/material.dart';

import '../../../domain/models/quiz_model.dart';

class QuizQuestionWidget extends StatelessWidget {
  final Quiz quiz;
  final bool isLast;

  const QuizQuestionWidget(
      {super.key, required this.quiz, required this.isLast});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: Text(
              quiz.stringQuestion * 6,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
          ),
        ),
        if (quiz.imageQuestion != null)
             CachedNetworkImage(imageUrl: quiz.imageQuestion!),
        QuizAnswersListWidget(
          quizItems: quiz.quizItems,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(MyColors.blueOnLogo)),
                onPressed: () {},
                child: isLast
                    ? const Text('Закончить тест')
                    : const Row(
                        children: [
                          Text(
                            'Далее',
                          ),
                          Icon(Icons.navigate_next)
                        ],
                      ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
