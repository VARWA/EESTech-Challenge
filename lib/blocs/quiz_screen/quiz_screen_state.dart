part of 'quiz_screen_bloc.dart';

@freezed
class QuizScreenState with _$QuizScreenState {
  const factory QuizScreenState.initial() = Initial;
  const factory QuizScreenState.loading() = Loading;
  const factory QuizScreenState.loaded(Quiz quiz) = Loaded;
  const factory QuizScreenState.error(String message) = Error;

}
