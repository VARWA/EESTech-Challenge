import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import 'my_app/app.dart';

void main() {
  Beamer.setPathUrlStrategy();
  runApp(MyApp());
}
