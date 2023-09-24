import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_item_model.freezed.dart';

@freezed
class QuizItem with _$QuizItem {
  const factory QuizItem({
    required String text,
    required bool isAnswer,
  }) = _QuizItem;
}
