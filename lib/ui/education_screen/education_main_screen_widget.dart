import 'package:eestech_challenge_app/examples_for_testing/edu_themes_examples.dart';
import 'package:eestech_challenge_app/ui/education_screen/widgets/edu_theme_main_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:progresso/progresso.dart';
import 'package:provider/provider.dart';

import '../../domain/models/education_screen_model.dart';

class MainListOfEducationWidget extends StatelessWidget {
  const MainListOfEducationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EducationScreenModel(),
      child: const EducationBodyScreenWidget(),
    );
  }
}

class EducationBodyScreenWidget extends StatelessWidget {
  const EducationBodyScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final model = context.watch<EducationScreenModel>();
    model.loadEduLessons();
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      itemCount: EduThemeExamples.eduThemesList.length,
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 10),
      itemBuilder: (BuildContext context, int index) {
        final eduThemeItem = model.events[index];
        if (index == 0) {
          return Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'База знаний',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              EduThemeMainCardWidget(eduThemeItem: eduThemeItem)
            ],
          );
        }
        return EduThemeMainCardWidget(eduThemeItem: eduThemeItem);
      },
    );
  }
}
