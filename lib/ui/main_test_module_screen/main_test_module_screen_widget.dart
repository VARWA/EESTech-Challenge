import 'package:beamer/beamer.dart';
import 'package:eestech_challenge_app/domain/models/edu_theme_module_model.dart';
import 'package:eestech_challenge_app/domain/models/edu_theme_theory_modules_list_model.dart';
import 'package:eestech_challenge_app/examples_for_testing/edu_themes_examples.dart';
import 'package:flutter/material.dart';

class MainTheoryModuleScreenWidget extends StatelessWidget {
  final int id;

  const MainTheoryModuleScreenWidget({
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
      appBar: AppBar(title: Text(theoryModules.name)),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: itemsCount + 2,
            separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 10),
            itemBuilder: (BuildContext context, int index) {
              if (index == 0 || index == itemsCount + 1) {
                return Container();
              }
              final EduThemeModule module =
              theoryModules.modulesList[index - 1];

              return ListTile(
                leading: module.isCompleted
                    ? const Icon(
                  Icons.done,
                  color: Colors.green,
                )
                    : const Icon(
                  Icons.clear,
                  color: Colors.red,
                ),
                title: Text(module.name),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  Beamer.of(context)
                      .beamToNamed('/education/theory/$id/${module.id}');
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
