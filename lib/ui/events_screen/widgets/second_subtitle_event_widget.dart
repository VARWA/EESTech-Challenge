import 'package:flutter/material.dart';

class SecondSubtitleEventWidget extends StatelessWidget {
  const SecondSubtitleEventWidget({
    super.key,
    required this.finalDate,
    required this.subTitleStyle,
  });

  final String finalDate;
  final TextStyle subTitleStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.access_time_outlined, weight: 7),
        const SizedBox(width: 6),
        Text(
          finalDate,
          style: subTitleStyle,
        ),
      ],
    );
  }
}
