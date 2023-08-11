import 'package:eestech_challenge_app/ui/main_theory_module_screen/main_theory_module_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:progresso/progresso.dart';

import '../../../examples_for_testing/edu_themes_examples.dart';

class EduThemeMainCardWidget extends StatelessWidget {
  const EduThemeMainCardWidget({
    super.key,
    required this.eduThemeItem,
  });

  final EduLesson eduThemeItem;

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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return MainTheoryModuleScreenWidget(
                                id: eduThemeItem.id,
                              );
                            },
                          ),
                        );
                      },
                      child: const Text('Теория'),
                    ),
                    const SizedBox(height: 15),
                    Progresso(
                      progress: eduThemeItem.theoryProgress / 100,
                    ),
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
                    Text('${eduThemeItem.gameProgress}%'),
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
