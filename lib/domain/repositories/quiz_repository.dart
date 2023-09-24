import 'package:eestech_challenge_app/domain/models/quiz_item_model.dart';
import 'package:eestech_challenge_app/domain/models/quiz_model.dart';
import 'package:eestech_challenge_app/examples_for_testing/quiz_examples.dart';
import 'package:eestech_challenge_app/examples_for_testing/quiz_items_examples.dart';
import 'package:uuid/uuid.dart';

class QuizRepository {
  QuizRepository();

  Quiz getQuiz({required String id}) {
    return QuizExamples.quizExample1;

    //   return TheoryArticles()
    //       .list
    //       .firstWhere((theoryArticle) => theoryArticle.id == id);
  }
}
