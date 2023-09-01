part of 'theory_article_screen_bloc.dart';

@freezed
class TheoryArticleScreenEvent with _$TheoryArticleScreenEvent {
  const factory TheoryArticleScreenEvent.started() = Started;

  factory TheoryArticleScreenEvent.getArticle({required int articleId}) =
      GetArticle;
}
