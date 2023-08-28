import 'dart:developer';

import 'package:beamer/beamer.dart';
import 'package:eestech_challenge_app/ui/education_screen/education_screen_widget.dart';
import 'package:eestech_challenge_app/ui/main_theory_module_screen/main_theory_module_screen_widget.dart';
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
    String? stringEduTheoryModuleId = state.pathParameters['id'];
    log(state.pathParameters.toString());
    if (eduModule == 'theory' && stringEduTheoryModuleId != null) {
      final int? eduTheoryModuleId = int.tryParse(stringEduTheoryModuleId);
      if (eduTheoryModuleId != null) {
        final int? eduTheoryModuleId = int.tryParse(stringEduTheoryModuleId);
        if (eduTheoryModuleId != null) {
          pages.add(
            BeamPage(
              key:  ValueKey('education/theory/$eduTheoryModuleId}'),
              title: 'Теория по модулю',
              child: MainTheoryModuleScreenWidget(
                id: eduTheoryModuleId,
              ),
            ),
          );
          if (stringContentId != null) {
            final int? contentId = int.tryParse(stringContentId);
            log('ContentId: $contentId');
            if (contentId != null) {
              pages.add(
                 BeamPage(
                  key: ValueKey('education/theory/$eduTheoryModuleId/$contentId'),
                  title: 'Теория по модулю',
                  child: const Scaffold(
                    body: Center(
                      child: TheoryArticleScreenWidget(),
                    ),
                  ),
                ),
              );
            }
          }
        }
      }
    }

    return pages;
  }
}
