import 'package:bloc/bloc.dart';
import 'package:eestech_challenge_app/config/service_locator.dart';
import 'package:eestech_challenge_app/domain/repositories/quiz_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/quiz_model.dart';

part 'quiz_screen_bloc.freezed.dart';

part 'quiz_screen_event.dart';

part 'quiz_screen_state.dart';

class QuizScreenBloc extends Bloc<QuizScreenEvent, QuizScreenState> {
  late Quiz quiz;

  QuizScreenBloc() : super(const QuizScreenState.initial()) {
    on<GetQuiz>(_getQuiz);
  }

  _getQuiz(event, emit) {
    try {
      emit(const QuizScreenState.loading());
      quiz = serviceLocator<QuizRepository>().getQuiz(id: event.quizId);
      emit(QuizScreenState.loaded(quiz));
    } catch (e) {
      emit(QuizScreenState.error(e.toString()));
    }
  }
}
