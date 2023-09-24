import 'package:freezed_annotation/freezed_annotation.dart';

part 'theory_article_model.freezed.dart';

@freezed
class TheoryArticle with _$TheoryArticle {
  const factory TheoryArticle({
    required String id,
    required String name,
    String? videoUrl,
    String? videoDescription,
    String? mainText,
    List<String>? otherResources,
  }) = _TheoryArticle;
}
