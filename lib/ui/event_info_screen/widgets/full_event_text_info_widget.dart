import 'package:eestech_challenge_app/domain/models/event_model.dart';
import 'package:flutter/material.dart';

class FullEventTextInfoWidget extends StatefulWidget {
  const FullEventTextInfoWidget({
    super.key,
    required this.event,
  });

  final Event event;

  @override
  State<FullEventTextInfoWidget> createState() =>
      _FullEventTextInfoWidgetState();
}

class _FullEventTextInfoWidgetState extends State<FullEventTextInfoWidget> {
  var showFullDescription = true;
  final Color decorationColor = const Color.fromRGBO(132, 56, 255, 1);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          // indicatorColor: ,
          children: [
            const SizedBox(width: 50),
            TextButton(
              onPressed: () {
                setState(() {
                  showFullDescription = true;
                });
              },
              child: Text(
                'Описание',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  decoration:
                      (showFullDescription) ? TextDecoration.underline : null,
                  decorationColor: decorationColor,
                ),
              ),
            ),
            const SizedBox(width: 25),
            TextButton(
              onPressed: () {
                setState(() {
                  showFullDescription = false;
                });
              },
              child: Text(
                'Правила',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  decoration:
                      showFullDescription ? null: TextDecoration.underline,
                  decorationColor: decorationColor,
                ),
              ),
            ),
          ],
        ),
        const Divider(
          height: 2,
          color: Colors.black,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 15,
            left: 50,
            right: 50,
          ),
          child: Text(
            showFullDescription
                ? widget.event.fullDescription
                : widget.event.rules,
            style: const TextStyle(
              color: Colors.black,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
