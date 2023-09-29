import 'package:eestech_challenge_app/examples_for_testing/quiz_examples.dart';
import 'package:logging/logging.dart';

import '../models/quiz_model.dart';

class QuizRepository {
  final log = Logger('Quiz repozitory');

  QuizRepository();

  Quiz getQuiz({required String id}) {
    final Quiz quiz = QuizExamples.quizExample1;
    log.info('Got the result: ${quiz.toString()}');
    return quiz;

    //   return TheoryArticles()
    //       .list
    //       .firstWhere((theoryArticle) => theoryArticle.id == id);
  }
}
