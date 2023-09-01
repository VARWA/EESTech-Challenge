part of 'theory_article_screen_bloc.dart';

@freezed
class TheoryArticleScreenState with _$TheoryArticleScreenState {
  const factory TheoryArticleScreenState.initial() = Initial;
  const factory TheoryArticleScreenState.loading() = Loading;
  const factory TheoryArticleScreenState.loaded(TheoryArticle theoryArticle) =
      Loaded;
  const factory TheoryArticleScreenState.error(String message) = Error;
}
