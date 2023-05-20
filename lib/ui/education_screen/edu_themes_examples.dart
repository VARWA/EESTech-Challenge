class EduThemeExamples {
  static List<EduTheme> eduThemesList = [
    EduTheme(
      title: 'Техника безопасности',
      theoryProgress: 75,
      gameProgress: 54,
    ),
    EduTheme(
      title: 'Знакомство с начальством',
      theoryProgress: 10,
      gameProgress: 18,
    ),
    EduTheme(
      title: 'Правила офиса',
      theoryProgress: 0,
      gameProgress: 74,
    ),
    EduTheme(
      title: 'Знакомство с начальством',
      theoryProgress: 100,
      gameProgress: 32,
    )
  ];
}

class EduTheme {
  final String title;
  final int theoryProgress;
  final int gameProgress;

  EduTheme(
      {required this.title,
      required this.theoryProgress,
      required this.gameProgress});
}
