import 'package:beamer/beamer.dart';
import 'package:eestech_challenge_app/config/service_locator.dart';
import 'package:flutter/material.dart';

import 'my_app/app.dart';

void main() {
  Beamer.setPathUrlStrategy();
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  runApp(MyApp());
}
