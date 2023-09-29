import 'package:cached_network_image/cached_network_image.dart';
import 'package:eestech_challenge_app/config/theme/theme_colors.dart';
import 'package:eestech_challenge_app/ui/quiz_screen/widgets/quiz_answers_list_widget.dart';
import 'package:flutter/material.dart';

import '../../../domain/models/quiz_model.dart';

class QuizQuestionWidget extends StatelessWidget {
  final Quiz quiz;

  const QuizQuestionWidget({
    super.key,
    required this.quiz,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: Text(
              quiz.quizQuestions[0].stringQuestion,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
          ),
        ),
        if (quiz.quizQuestions[0].imageQuestion != null)
          CachedNetworkImage(imageUrl: quiz.quizQuestions[0].imageQuestion!),
        QuizAnswersListWidget(
          quizAnswers: quiz.quizQuestions[0].quizAnswers,
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
                      MaterialStateProperty.all(MyColors.blueOnLogo),
                ),
                onPressed: () {},
                child: false
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
