import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_event.dart';
part 'quiz_state.dart';
part 'quiz_bloc.freezed.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  int currentIndex = 0;
  late int levelsCount;
  int correctAnswers = 0;
  QuizBloc() : super(const QuizState.initial()) {
    on<QuizEvent>((event, emit) {
    });
  }
  _goToNextQuestion(event, emit) {
    currentIndex++;
    emit(currentIndex);
    if (currentIndex == levelsCount) {
    } else {}
  }
}
