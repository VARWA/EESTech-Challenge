import 'package:eestech_challenge_app/domain/models/quiz_question_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_model.freezed.dart';

@freezed
class Quiz with _$Quiz {
  const factory Quiz({
    required String id,
    required bool isCompleted,
    required String name,
    required List<QuizQuestion> quizQuestions,
  }) = _Quiz;
}
