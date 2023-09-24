import 'package:beamer/beamer.dart';
import 'package:eestech_challenge_app/domain/models/edu_theme_module_model.dart';
import 'package:eestech_challenge_app/domain/models/edu_theme_theory_modules_list_model.dart';
import 'package:eestech_challenge_app/examples_for_testing/edu_themes_examples.dart';
import 'package:flutter/material.dart';

class MainTestModuleScreenWidget extends StatelessWidget {
  final String id;

  const MainTestModuleScreenWidget({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final EduThemeTheoryModulesList theoryModules = EduThemeTheoryModulesList(
      id: 0,
      name: 'Моя первая тема',
      progress: 4,
      modulesList: EduThemeModuleExamples.mainList,
    );
    final int itemsCount = theoryModules.modulesList.length;
    return Scaffold(
      appBar:
          AppBar(title: Text('Практика: ${theoryModules.name}')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white.withOpacity(0.15),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: itemsCount,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 10),
            itemBuilder: (BuildContext context, int index) {
              final EduThemeModule module = theoryModules.modulesList[index];

              return ListTile(
                tileColor: Colors.transparent,
                leading: module.isCompleted
                    ? const Icon(
                        Icons.done,
                        color: Colors.green,
                      )
                    : const Icon(
                        Icons.clear,
                        color: Colors.red,
                      ),
                title: Text(
                  module.name,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: const Icon(
                  Icons.navigate_next,
                  color: Colors.white70,
                ),
                onTap: () {
                  Beamer.of(context)
                      .beamToNamed('/education/tests/$id/${module.id}');
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
