import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_answer_model.freezed.dart';

@freezed
class QuizAnswer with _$QuizAnswer {
  const factory QuizAnswer({
    required String answer,
    required bool isTrue,
  }) = _QuizAnswer;
}
