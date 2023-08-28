import 'package:eestech_challenge_app/domain/models/event_model.dart';
import 'package:flutter/material.dart';

class MetaInfoWidget extends StatelessWidget {
  const MetaInfoWidget({
    super.key,
    required this.event,
  });

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(
              Icons.timelapse_outlined,
              color: Colors.black,
            ),
            Text(
              event.description,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.dangerous,
              color: Colors.black,
            ),
            Text(
              event.startDate,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        )
      ],
    );
  }
}
