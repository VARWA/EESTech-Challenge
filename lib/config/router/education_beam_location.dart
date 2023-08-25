import 'package:beamer/beamer.dart';
import 'package:eestech_challenge_app/ui/education_screen/education_screen_widget.dart';
import 'package:eestech_challenge_app/ui/main_theory_module_screen/main_theory_module_screen_widget.dart';
import 'package:flutter/material.dart';

class EducationLocation extends BeamLocation<BeamState> {
  EducationLocation(super.routeInformation);

  @override
  List<String> get pathPatterns => ['/education/:eduModule/:id'];

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
    String? stringEduTheoryModuleId = state.pathParameters['id'];

    if (eduModule == 'theory' && stringEduTheoryModuleId != null) {
      final int? eduTheoryModuleId = int.tryParse(stringEduTheoryModuleId);
      if (eduTheoryModuleId != null) {
        pages.add(
          BeamPage(
            key: const ValueKey('education/theory'),
            title: 'Теория по модулю',
            child: MainTheoryModuleScreenWidget(
              id: eduTheoryModuleId,
            ),
          ),
        );
      }
    }

    return pages;
  }
}
