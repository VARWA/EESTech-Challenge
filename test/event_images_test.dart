import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:eestech_challenge_app/resources/resources.dart';

void main() {
  test('event_images assets test', () {
    expect(File(EventImages.firstEventPhoto).existsSync(), true);
    expect(File(EventImages.secondEventPhoto).existsSync(), true);
  });
}
