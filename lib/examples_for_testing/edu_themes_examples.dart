import 'package:eestech_challenge_app/domain/models/edu_lesson_model.dart';
import 'package:eestech_challenge_app/domain/models/edu_theme_module_model.dart';

class EduThemeExamples {
  static List<EduLesson> eduThemesList = [
    const EduLesson(
      id: '1',
      title: 'Техника безопасности',
      theoryProgress: 75,
      gameProgress: 54,
    ),
    const EduLesson(
      id: '2',
      title: 'Знакомство с начальством',
      theoryProgress: 10,
      gameProgress: 18,
    ),
    const EduLesson(
      id: '3',
      title: 'Правила офиса',
      theoryProgress: 0,
      gameProgress: 74,
    ),
    const EduLesson(
      id: '4',
      title: 'Знакомство с начальством',
      theoryProgress: 100,
      gameProgress: 32,
    ),
    const EduLesson(
      id: '5',
      title: 'Знакомство с начальством 2',
      theoryProgress: 0,
      gameProgress: 0,
    )
  ];
}

abstract class EduThemeModuleExamples {
  static List<EduThemeModule> mainList = [
    EduThemeModule(
      id: '0',
      name: 'Первая тема',
      isCompleted: false,
    ),
    EduThemeModule(
      id: '1',
      name: 'Вторая тема',
      isCompleted: true,
    ),
    EduThemeModule(
      id: '2',
      name: 'Третья тема',
      isCompleted: true,
    )
  ];
}
