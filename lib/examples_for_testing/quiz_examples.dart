import 'package:eestech_challenge_app/examples_for_testing/quiz_questions_examples.dart';
import 'package:uuid/uuid.dart';

import '../domain/models/quiz_model.dart';

abstract class QuizExamples {
  static Quiz quizExample1 = Quiz(
    id: const Uuid().v4(),
    isCompleted: false,
    name: 'Первый тестовый квиз',
    quizQuestions: QuizQuestionExamples.quizQuestionsExample1,
  );
// static Quiz quizExample1 = Quiz(
//   id: const Uuid().v4(),
//   stringQuestion: 'Все работает?',
//   imageQuestion: 'https://www.interfax.ru/ftproot/photos/photostory/2022/04/29/week/week7_1100.jpg',
//   quizItems: QuizItemsExamples.quizItemsExample1,
// );
}
