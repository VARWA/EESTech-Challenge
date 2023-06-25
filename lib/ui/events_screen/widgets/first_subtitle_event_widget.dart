import 'package:eestech_challenge_app/examples_for_testing/events_examples.dart';
import 'package:flutter/material.dart';

class FirstSubtitleEventWidget extends StatelessWidget {
  const FirstSubtitleEventWidget({
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
        const Icon(Icons.edit_note, weight: 7),
        const SizedBox(width: 6),
        Text(
          event.description,
          style: subTitleStyle,
        )
      ],
    );
  }
}
