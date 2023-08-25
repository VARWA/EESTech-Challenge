import 'package:eestech_challenge_app/examples_for_testing/edu_themes_examples.dart';
import 'package:eestech_challenge_app/ui/education_screen/widgets/edu_theme_main_card_widget.dart';
import 'package:flutter/material.dart';

class EducationScreenWidget extends StatelessWidget {
  const EducationScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: EduThemeExamples.eduThemesList.length,
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 10),
        itemBuilder: (BuildContext context, int index) {
          final eduThemeItem = EduThemeExamples.eduThemesList[index];
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
      ),
    );
  }
}
