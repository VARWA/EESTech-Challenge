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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
            color: MyColors.titleBackground1,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 3,
            ),
            child: Text(
              event.title,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
          ),
        ),
        const Icon(
          Icons.navigate_next,
        ),
      ],
    );
  }
}
