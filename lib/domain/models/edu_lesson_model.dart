import 'package:freezed_annotation/freezed_annotation.dart';

part 'edu_lesson_model.freezed.dart';
@freezed
class EduLesson with _$EduLesson {

  const factory EduLesson(
      {required int id,
      required String title,
      required int theoryProgress,
      required int gameProgress}) = _EduLesson;
}
