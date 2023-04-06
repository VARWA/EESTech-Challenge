import 'package:eestech_challenge_app/events_screen/event_on_main_screen_widget.dart';
import 'package:eestech_challenge_app/events_screen/events_examples.dart';
import 'package:eestech_challenge_app/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventsMainScreen extends StatefulWidget {
  const EventsMainScreen({Key? key}) : super(key: key);

  @override
  State<EventsMainScreen> createState() => _EventsMainScreenState();
}

class _EventsMainScreenState extends State<EventsMainScreen> {
  void _OnTapEvent(int index) {
    Navigator.of(context)
        .pushNamed('/main_screen/event_info', arguments: index);
  }

  @override
  Widget build(BuildContext context) {
    final EventListLocal = EventExampleList();

    return ListView.builder(
      scrollDirection: Axis.vertical,
      // shrinkWrap: true,
      itemCount: EventListLocal.eventsExampleList.length,
      itemBuilder: (BuildContext context, int index) {
        final event = EventListLocal.eventsExampleList[index];
        if (index == 0) {
          return Column(
            children: [
              const TitleOfEventsMenu(),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 22, horizontal: 22),
                  child: EventOnListWidget(
                    event: event,
                  ))
            ],
          );
        }
        return Padding(
            padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 22),
            child: EventOnListWidget(
              event: event,
            ));
      },
    );
  }
}

class TitleOfEventsMenu extends StatelessWidget {
  const TitleOfEventsMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('images/other/logo.svg'),
          const SizedBox(height: 40),

          // SizedBox(height: 52),
          const EventTitle(),
        ],
      ),
    );
  }
}

class EventTitle extends StatelessWidget {
  const EventTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 278,
      decoration: const BoxDecoration(
        color: Mycolors.ColorOfWidgetsBackgroundLight1,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: const Center(
        child: Text(
          'События',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
