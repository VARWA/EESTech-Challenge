import 'dart:developer';

import 'package:beamer/beamer.dart';
import 'package:eestech_challenge_app/ui/education_screen/education_screen_widget.dart';
import 'package:eestech_challenge_app/ui/main_test_module_screen/main_test_module_screen_widget.dart';
import 'package:eestech_challenge_app/ui/main_theory_module_screen/main_theory_module_screen_widget.dart';
import 'package:eestech_challenge_app/ui/quiz_screen/quiz_screen_widget.dart';
import 'package:eestech_challenge_app/ui/theory_article_screen/theory_article_screen_widget.dart';
import 'package:flutter/material.dart';

class EducationLocation extends BeamLocation<BeamState> {
  EducationLocation(super.routeInformation);

  @override
  List<String> get pathPatterns => ['/education/:eduModule/:id/:contentId'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    List<BeamPage> pages = [
      const BeamPage(
        key: ValueKey('education'),
        title: 'База знаний',
        type: BeamPageType.noTransition,
        child: EducationScreenWidget(
            // label: 'A',
            // detailsPath: '/a/details',
            ),
      ),
    ];
    String? eduModule = state.pathParameters['eduModule'];
    String? stringContentId = state.pathParameters['contentId'];
    String? stringEduContentModuleId = state.pathParameters['id'];
    if (eduModule == 'theory' && stringEduContentModuleId != null) {
      final int? eduTheoryModuleId = int.tryParse(stringEduContentModuleId);
      if (eduTheoryModuleId != null) {
        pages.add(
          BeamPage(
            key: ValueKey('education/theory/$eduTheoryModuleId}'),
            title: 'Теория по модулю',
            child: MainTheoryModuleScreenWidget(
              id: eduTheoryModuleId,
            ),
          ),
        );
        if (stringContentId != null) {
          final String? contentId = stringContentId;
          log('ContentId: $contentId');
          if (contentId != null) {
            pages.add(
              BeamPage(
                key: ValueKey('education/theory/$eduTheoryModuleId/$contentId'),
                title: 'Теория по модулю',
                child: TheoryArticleScreenWidget(
                  articleId: contentId,
                ),
              ),
            );
          }
        }
      }
    } else if (eduModule == 'tests' && stringEduContentModuleId != null) {
      final String eduTestModuleId = stringEduContentModuleId;
      if (eduTestModuleId != null) {
        pages.add(
          BeamPage(
            key: ValueKey('education/tests/$eduTestModuleId}'),
            title: 'Теория по модулю',
            child: MainTestModuleScreenWidget(
              id: eduTestModuleId,
            ),
          ),
        );
        if (stringContentId != null) {
          final String? contentId = stringContentId;
          if (contentId != null) {
            pages.add(
              BeamPage(
                key: ValueKey('education/theory/$eduTestModuleId/$contentId'),
                title: 'Теория по модулю',
                child: QuizScreenWidget(
                  themeId: contentId,
                ),
              ),
            );
          }
        }
      }
    }
    return pages;
  }
}
