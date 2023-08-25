import 'package:eestech_challenge_app/ui/events_screen/widgets/first_subtitle_event_widget.dart';
import 'package:eestech_challenge_app/ui/events_screen/widgets/fourth_subtitle_event_widget.dart';
import 'package:eestech_challenge_app/ui/events_screen/widgets/lock_widget.dart';
import 'package:eestech_challenge_app/ui/events_screen/widgets/main_title_event_widget.dart';
import 'package:eestech_challenge_app/ui/events_screen/widgets/second_subtitle_event_widget.dart';
import 'package:eestech_challenge_app/ui/events_screen/widgets/third_subtitle_event_widget.dart';
import 'package:flutter/material.dart';

import '../../../examples_for_testing/events_examples.dart';

class EventOnListWidget extends StatelessWidget {
  final Event event;
  static const _subTitleStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 10,
  );

  const EventOnListWidget({Key? key, required this.event}) : super(key: key);

  String _dateForFinalStringFormat({required event}) {
    return event.startDate != event.endDate
        ? [event.startDate, event.endDate].join(" - ")
        : event.startDate;
  }

  bool _checkIsEnded({required endDate}) {
    final List<String> parsedEventDate = endDate.split('.');
    final int year = int.parse('20${parsedEventDate[2]}');
    final int month = int.parse(parsedEventDate[1]);
    final int day = int.parse(parsedEventDate[0]);

    final DateTime dateNow = DateTime.now();
    final DateTime dateEvent = DateTime.utc(year, month, day);
    return !dateNow.isBefore(dateEvent);
  }

  @override
  Widget build(BuildContext context) {
    final bool isEnded = _checkIsEnded(endDate: event.endDate);
    final String finalDate = _dateForFinalStringFormat(event: event);
    return Stack(
      children: [
        SizedBox(
          height: 175,
          width: double.infinity,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            surfaceTintColor: Theme.of(context).cardTheme.surfaceTintColor,
            elevation: 7,
            child: Padding(
              padding: const EdgeInsets.only(left: 19, right: 9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 13),
                  MainTitleEventWidget(event: event),
                  const SizedBox(height: 5),
                  FirstSubtitleEventWidget(
                      event: event, subTitleStyle: _subTitleStyle),
                  SecondSubtitleEventWidget(
                      finalDate: finalDate, subTitleStyle: _subTitleStyle),
                  ThirdSubtitleEventWidget(
                      event: event, subTitleStyle: _subTitleStyle),
                  FourthSubtitleEventWidget(
                      event: event, subTitleStyle: _subTitleStyle),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 17.8,
          right: 15.5,
          child: LockWidget(
            isEnded: isEnded,
          ),
        )
      ],
    );
  }
}
