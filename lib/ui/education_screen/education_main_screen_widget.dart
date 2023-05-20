import 'package:eestech_challenge_app/ui/education_screen/edu_themes_examples.dart';
import 'package:flutter/material.dart';
import 'package:progresso/progresso.dart';

class MainListOfEducationWidget extends StatelessWidget {
  const MainListOfEducationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
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
              EduThemeMainCard(eduThemeItem: eduThemeItem)
            ],
          );
        }
        return EduThemeMainCard(eduThemeItem: eduThemeItem);
      },
    );
  }
}

class EduThemeMainCard extends StatelessWidget {
  const EduThemeMainCard({
    super.key,
    required this.eduThemeItem,
  });

  final EduTheme eduThemeItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20),
      height: 170,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(eduThemeItem.title),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 110,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Теория'),
                    ),
                    const SizedBox(height: 15),
                    Progresso(progress: eduThemeItem.theoryProgress / 100),
                    const SizedBox(height: 5),
                    Text('${eduThemeItem.theoryProgress}%'),
                  ],
                ),
              ),
              const SizedBox(width: 30),
              SizedBox(
                width: 110,
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Играть!'),
                    ),
                    const SizedBox(height: 15),
                    Progresso(progress: eduThemeItem.gameProgress / 100),
                    const SizedBox(height: 5),
                    Text('${eduThemeItem.theoryProgress}%'),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
