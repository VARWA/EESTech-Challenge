import 'package:eestech_challenge_app/blocs/quiz_screen/quiz_screen_bloc.dart';
import 'package:eestech_challenge_app/ui/quiz_screen/widgets/quiz_question_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/models/quiz_model.dart';
import '../elements/custom_progress_indicator.dart';

class QuizScreenWidget extends StatelessWidget {
  final String themeId;

  const QuizScreenWidget({super.key, required this.themeId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          QuizScreenBloc()..add(QuizScreenEvent.getQuiz(quizId: themeId)),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<QuizScreenBloc, QuizScreenState>(
          builder: (context, state) {
            return state.when(
              initial: () => const CustomProgressIndicator(),
              loading: () => const CustomProgressIndicator(),
              error: (error) => Center(
                child: Text(error),
              ),
              loaded: (Quiz quiz) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    Center(
                      child: QuizQuestionWidget(
                        quiz: quiz,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
