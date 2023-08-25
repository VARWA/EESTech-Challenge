import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'my_app/app.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  var app = MyApp();
  runApp(app);
}
