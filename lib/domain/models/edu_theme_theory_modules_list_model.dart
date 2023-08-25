
import 'package:eestech_challenge_app/domain/models/edu_theme_module_model.dart';

class EduThemeTheoryModulesList {
  final int id;
  final String name;
  final List<EduThemeModule> modulesList;

  final int progress;

  EduThemeTheoryModulesList({
    required this.id,
    required this.name,
    required this.progress,
    required this.modulesList,
  });
}