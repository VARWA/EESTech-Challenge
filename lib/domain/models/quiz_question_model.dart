import 'package:eestech_challenge_app/domain/models/quiz_answer_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_question_model.freezed.dart';

@freezed
class QuizQuestion with _$QuizQuestion {
  const factory QuizQuestion({
    required String stringQuestion,
    String? imageQuestion,
    required List<QuizAnswer> quizAnswers,
  }) = _QuizQuestion;
}
