import 'package:eestech_challenge_app/domain/models/event_model.dart';
import 'package:eestech_challenge_app/examples_for_testing/events_examples.dart';
import 'package:flutter/material.dart';

class FourthSubtitleEventWidget extends StatelessWidget {
  const FourthSubtitleEventWidget({
    super.key,
    required this.event,
    required this.subTitleStyle,
  });

  final Event event;
  final TextStyle subTitleStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.gamepad_outlined),
        const SizedBox(width: 6),
        Text(
          '${event.points} points',
          style: subTitleStyle,
        ),
      ],
    );
  }
}
