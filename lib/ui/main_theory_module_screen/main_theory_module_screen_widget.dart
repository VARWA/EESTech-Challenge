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
    final EduThemeTheoryModules theoryModules = EduThemeTheoryModules(
      id: 0,
      name: 'Моя первая тема',
      progress: 4,
      modulesList: EduThemeModuleExamples.mainList,
    );
    return Scaffold(
      appBar: AppBar(title: Text(theoryModules.name)),
      body: ListView.separated(
        itemCount: theoryModules.modulesList.length,
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 10),
        itemBuilder: (BuildContext context, int index) {
          final module = theoryModules.modulesList[index];
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
            onTap: () {},
          );
        },
      ),
    );
  }
}
