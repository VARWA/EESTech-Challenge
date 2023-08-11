import 'package:eestech_challenge_app/config/theme/theme_colors.dart';
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

  String _date({required event}) {
    if (event.startDate != event.endDate) {
      return [event.startDate, event.endDate].join(" - ");
    } else {
      return event.startDate;
    }
  }

  bool _checkIsEnded({required endDate}) {
    final parsedEventDate = endDate.split('.');
    final year = int.parse('20${parsedEventDate[2]}');
    final month = int.parse(parsedEventDate[1]);
    final day = int.parse(parsedEventDate[0]);

    final dateNow = DateTime.now();
    final dateEvent = DateTime.utc(year, month, day);
    if (dateNow.isBefore(dateEvent)) {
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isEnded = _checkIsEnded(endDate: event.endDate);
    final finalDate = _date(event: event);
    return Stack(
      children: [
        Container(
          height: 155,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: MyColors.colorOfWidgetsBackgroundLight1,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
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
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 12.8,
            right: 10.5,
            child: LockWidget(
              isEnded: isEnded,
            ))
      ],
    );
  }
}
