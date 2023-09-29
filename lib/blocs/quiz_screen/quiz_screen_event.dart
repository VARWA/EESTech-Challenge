part of 'quiz_screen_bloc.dart';

@freezed
class QuizScreenEvent with _$QuizScreenEvent {
  const factory QuizScreenEvent.started() = Started;
  const factory QuizScreenEvent.getQuiz({required String quizId}) = GetQuiz;
}
