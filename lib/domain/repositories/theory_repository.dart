import 'package:eestech_challenge_app/domain/models/theory_article_model.dart';
import 'package:eestech_challenge_app/examples_for_testing/theory_examples.dart';

class TheoryRepository {
  TheoryRepository();

  TheoryArticle getTheoryArticle({required int id}) {
    return TheoryArticles()
        .list
        .firstWhere((theoryArticle) => theoryArticle.id == id);
  }
}
