import 'package:eestech_challenge_app/blocs/quiz_screen/quiz_screen_bloc.dart';
import 'package:eestech_challenge_app/examples_for_testing/quiz_examples.dart';
import 'package:eestech_challenge_app/ui/quiz_screen/widgets/quiz_question_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuizScreenWidget extends StatelessWidget {
  final String themeId;

  const QuizScreenWidget({super.key, required this.themeId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuizScreenBloc(),
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Center(
                child: QuizQuestionWidget(
                  quiz: QuizExamples.quizExample1,
                  isLast: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
