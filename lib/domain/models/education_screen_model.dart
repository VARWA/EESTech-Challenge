import 'package:eestech_challenge_app/examples_for_testing/edu_themes_examples.dart';
import 'package:flutter/material.dart';

class EducationScreenModel extends ChangeNotifier{
  List<EduLesson> events = [];

  void loadEduLessons(){
    events.addAll(EduThemeExamples.eduThemesList);
    notifyListeners();
  }
}