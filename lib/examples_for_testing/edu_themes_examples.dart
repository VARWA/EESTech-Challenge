class EduThemeExamples {
  static List<EduLesson> eduThemesList = [
    EduLesson(
      title: 'Техника безопасности',
      theoryProgress: 75,
      gameProgress: 54,
    ),
    EduLesson(
      title: 'Знакомство с начальством',
      theoryProgress: 10,
      gameProgress: 18,
    ),
    EduLesson(
      title: 'Правила офиса',
      theoryProgress: 0,
      gameProgress: 74,
    ),
    EduLesson(
      title: 'Знакомство с начальством',
      theoryProgress: 100,
      gameProgress: 32,
    )
  ];
}

class EduLesson {
  final String title;
  final int theoryProgress;
  final int gameProgress;

  EduLesson(
      {required this.title,
      required this.theoryProgress,
      required this.gameProgress});
}
