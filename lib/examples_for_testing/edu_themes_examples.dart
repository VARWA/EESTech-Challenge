class EduThemeExamples {
  static List<EduLesson> eduThemesList = [
    EduLesson(
      id: 1,
      title: 'Техника безопасности',
      theoryProgress: 75,
      gameProgress: 54,
    ),
    EduLesson(
      id: 2,
      title: 'Знакомство с начальством',
      theoryProgress: 10,
      gameProgress: 18,
    ),
    EduLesson(
      id: 3,
      title: 'Правила офиса',
      theoryProgress: 0,
      gameProgress: 74,
    ),
    EduLesson(
      id: 4,
      title: 'Знакомство с начальством',
      theoryProgress: 100,
      gameProgress: 32,
    ),
    EduLesson(
      id: 4,
      title: 'Знакомство с начальством 2',
      theoryProgress: 0,
      gameProgress: 0,
    )
  ];
}

class EduLesson {
  final int id;
  final String title;
  final int theoryProgress;
  final int gameProgress;

  EduLesson(
      {required this.id,
      required this.title,
      required this.theoryProgress,
      required this.gameProgress});
}

class EduThemeTheoryModules {
  final int id;
  final String name;
  final List<EduThemeModule> modulesList;

  final int progress;

  EduThemeTheoryModules({
    required this.id,
    required this.name,
    required this.progress,
    required this.modulesList,
  });
}

abstract class EduThemeModuleExamples {
  static List<EduThemeModule> mainList = [
    EduThemeModule(
      id: 0,
      name: 'Первая тема',
      isCompleted: false,
    ),
    EduThemeModule(
      id: 0,
      name: 'Вторая тема',
      isCompleted: true,
    ),
    EduThemeModule(
      id: 0,
      name: 'Третья тема',
      isCompleted: true,
    )
  ];
}

class EduThemeModule {
  final int id;
  final String name;
  final bool isCompleted;

  EduThemeModule({
    required this.id,
    required this.name,
    required this.isCompleted,
  });
}
