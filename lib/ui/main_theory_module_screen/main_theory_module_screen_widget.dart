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
      appBar: AppBar(
        title: Text(theoryModules.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white.withOpacity(0.15),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: itemsCount,
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              height: 10,
              child: Divider(
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            itemBuilder: (BuildContext context, int index) {
              final EduThemeModule module = theoryModules.modulesList[index];

              return ListTile(
                tileColor: Colors.transparent,
                title: Text(
                  module.name,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                trailing: const Icon(Icons.navigate_next, color: Colors.white70,),
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
