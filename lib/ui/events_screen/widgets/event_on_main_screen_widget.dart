import 'package:beamer/beamer.dart';
import 'package:eestech_challenge_app/domain/models/event_model.dart';
import 'package:eestech_challenge_app/ui/events_screen/widgets/first_subtitle_event_widget.dart';
import 'package:eestech_challenge_app/ui/events_screen/widgets/fourth_subtitle_event_widget.dart';
import 'package:eestech_challenge_app/ui/events_screen/widgets/lock_widget.dart';
import 'package:eestech_challenge_app/ui/events_screen/widgets/main_title_event_widget.dart';
import 'package:eestech_challenge_app/ui/events_screen/widgets/second_subtitle_event_widget.dart';
import 'package:eestech_challenge_app/ui/events_screen/widgets/third_subtitle_event_widget.dart';
import 'package:eestech_challenge_app/ui/parsers/datetime_to_string_parser.dart';
import 'package:flutter/material.dart';

class EventOnListWidget extends StatelessWidget {
  final Event event;
  static const _subTitleStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 10,
  );

  const EventOnListWidget({Key? key, required this.event}) : super(key: key);

  String _dateForFinalStringFormat({required Event event}) =>
      event.startDate != event.endDate
          ? DateTimeToStringParser.dateTimesToStringPeriod(
              dateTime1: event.startDate,
              dateTime2: event.endDate,
            )
          : DateTimeToStringParser.dateTimeToStringDate(
              dateTime: event.startDate,
            );

  bool _checkIsEnded({required DateTime? endDate}) =>
      endDate == null ? false : endDate.isBefore(DateTime.now());

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
            clipBehavior: Clip.hardEdge,
            surfaceTintColor: Theme.of(context).cardTheme.surfaceTintColor,
            elevation: 7,
            child: InkWell(
              onTap: () {
                Beamer.of(context).beamToNamed('/events/${event.id}');
              },
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
