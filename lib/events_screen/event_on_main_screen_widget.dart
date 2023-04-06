
import 'package:eestech_challenge_app/events_screen/events_examples.dart';
import 'package:eestech_challenge_app/theme_colors.dart';
import 'package:flutter/material.dart';

class EventOnListWidget extends StatelessWidget {
  final Event event;
  static const _subTitleStyle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 10,
  );

  EventOnListWidget({Key? key, required this.event}) : super(key: key);

  String _date({required event}) {
    if (event.startDate != event.endDate) {
      return [event.startDate, event.endDate].join(" - ");
    } else {
      return event.startDate;
    }
  }

  bool _CheckIsEnded({required endDate}) {
    final parsedEventDate = endDate.split('.');
    final year = int.parse("20" + parsedEventDate[2]);
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
    final _isEnded = _CheckIsEnded(endDate: event.endDate);
    final finalDate = _date(event: event);
    return Stack(
      children: [
        Container(
          height: 155,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Mycolors.ColorOfWidgetsBackgroundLight1,
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
              isEnded: _isEnded,
            ))
      ],
    );
  }
}

class LockWidget extends StatelessWidget {
  final bool isEnded;

  LockWidget({Key? key, required bool this.isEnded}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!isEnded) {
      return Icon(
        Icons.lock_open_outlined,
        color: Mycolors.BlueOnLogo,
      );
    } else {
      return Icon(
        Icons.lock_outline,
        color: Mycolors.RedOnLogo,
      );
    }
    ;
  }
}

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

class ThirdSubtitleEventWidget extends StatelessWidget {
  const ThirdSubtitleEventWidget({
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
        const Icon(Icons.redeem, weight: 7),
        const SizedBox(width: 6),
        Text(
          event.bonuses,
          style: subTitleStyle,
        ),
      ],
    );
  }
}

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
          ..strokeWidth = 30.0
          ..color = Mycolors.ColorOfTextsBackground1
          ..style = PaintingStyle.stroke
          ..strokeJoin = StrokeJoin.round,
        // backgroundColor: Mycolors.ColorOfTextsBackground1
      ),
    );
  }
}
