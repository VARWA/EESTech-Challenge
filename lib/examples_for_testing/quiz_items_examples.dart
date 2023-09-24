import '../domain/models/quiz_item_model.dart';

abstract class QuizItemsExamples {
  static const List<QuizItem> quizItemsExample1 = [
    QuizItem(
      text: 'Да',
      isAnswer: true,
    ),
    QuizItem(
      text: 'Почти все',
      isAnswer: false,
    ),
    QuizItem(
      text: 'Малая часть',
      isAnswer: false,
    ),
    QuizItem(
      text: 'Нет',
      isAnswer: false,
    ),
  ];
}
