import 'package:eestech_challenge_app/config/theme/theme_colors.dart';
import 'package:eestech_challenge_app/ui/events_screen/widgets/title_of_events_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../examples_for_testing/events_examples.dart';
import 'widgets/event_on_main_screen_widget.dart';

class EventsMainScreen extends StatefulWidget {
  const EventsMainScreen({Key? key}) : super(key: key);

  @override
  State<EventsMainScreen> createState() => _EventsMainScreenState();
}

class _EventsMainScreenState extends State<EventsMainScreen> {
  // void _OnTapEvent(int index) {
  //   Navigator.of(context)
  //       .pushNamed('/main_screen/event_info', arguments: index);
  // }

  @override
  Widget build(BuildContext context) {
    final eventListLocal = EventExampleList();

    return ListView.builder(
      scrollDirection: Axis.vertical,
      // shrinkWrap: true,
      itemCount: eventListLocal.eventsExampleList.length,
      itemBuilder: (BuildContext context, int index) {
        final event = eventListLocal.eventsExampleList[index];
        if (index == 0) {
          return Column(
            children: [
              const TitleOfEventsMenu(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 22),
                child: EventOnListWidget(
                  event: event,
                ),
              )
            ],
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 22),
          child: EventOnListWidget(
            event: event,
          ),
        );
      },
    );
  }
}
