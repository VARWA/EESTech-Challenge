import 'package:eestech_challenge_app/blocs/theory_article_screen/theory_article_screen_bloc.dart';
import 'package:eestech_challenge_app/ui/elements/custom_progress_indicator.dart';
import 'package:eestech_challenge_app/ui/theory_article_screen/widgets/main_text_widget.dart';
import 'package:eestech_challenge_app/ui/theory_article_screen/widgets/video_module_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TheoryArticleScreenWidget extends StatelessWidget {
  final int articleId;

  const TheoryArticleScreenWidget({super.key, required this.articleId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: TheoryArticleScreenBloc()
        ..add(TheoryArticleScreenEvent.getArticle(articleId: articleId)),
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              const SliverAppBar(
                floating: true,
                snap: true,
              )
            ];
          },
          body: BlocBuilder<TheoryArticleScreenBloc, TheoryArticleScreenState>(
            builder: (context, state) {
              return state.when(
                initial: () => const CustomProgressIndicator(),
                loading: () => const CustomProgressIndicator(),
                loaded: (theoryArticle) => SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Text(theoryArticle.name),
                        if (theoryArticle.videoUrl != null)
                          VideoModuleWidget(
                            theoryArticle: theoryArticle,
                          ),
                        const SizedBox(height: 20),
                        if (theoryArticle.mainText != null)
                          MainTextWidget(mainText: theoryArticle.mainText!),
                        const SizedBox(height: 100),
                      ],
                    ),
                  ),
                ),
                error: (e) => Center(
                  child: Text(e),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
