import 'package:bloc/bloc.dart';
import 'package:eestech_challenge_app/config/service_locator.dart';
import 'package:eestech_challenge_app/domain/models/theory_article_model.dart';
import 'package:eestech_challenge_app/domain/repositories/theory_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theory_article_screen_bloc.freezed.dart';

part 'theory_article_screen_event.dart';

part 'theory_article_screen_state.dart';

class TheoryArticleScreenBloc
    extends Bloc<TheoryArticleScreenEvent, TheoryArticleScreenState> {
  TheoryArticleScreenBloc() : super(const TheoryArticleScreenState.initial()) {
    on<GetArticle>(_getArticle);
  }

  _getArticle(event, emit) {
    try {
      emit(const TheoryArticleScreenState.loading());
      final theoryArticle = serviceLocator<TheoryRepository>()
          .getTheoryArticle(id: event.articleId);
      emit(TheoryArticleScreenState.loaded(theoryArticle));
    } catch (e) {
      emit(TheoryArticleScreenState.error(e.toString()));
    }
  }
}
