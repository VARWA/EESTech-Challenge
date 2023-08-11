import 'package:eestech_challenge_app/examples_for_testing/events_examples.dart';
import 'package:flutter/material.dart';

import '../../../config/theme/theme_colors.dart';

class MainTitleEventWidget extends StatelessWidget {
  const MainTitleEventWidget({
    super.key,
    required this.event,
  });

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Text(
      event.title,
      // https://medium.com/@pinkesh.earth/flutter-quick-tip-how-to-set-text-background-color-with-curve-d40a2f96a415
      style: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 25,
        background: Paint()
          ..strokeWidth = 10.0
          ..color = MyColors.colorOfTextsBackground1
          ..style = PaintingStyle.stroke
          ..strokeJoin = StrokeJoin.round,
        // backgroundColor: Mycolors.ColorOfTextsBackground1
      ),
    );
  }
}
