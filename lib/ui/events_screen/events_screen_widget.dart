import 'package:eestech_challenge_app/ui/events_screen/widgets/title_of_events_menu_widget.dart';
import 'package:flutter/material.dart';

import '../../examples_for_testing/events_examples.dart';
import 'widgets/event_on_main_screen_widget.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    final eventListLocal = EventExampleList();

    return Scaffold(
      body: ListView.builder(
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
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 22),
                  child: EventOnListWidget(
                    event: event,
                  ),
                )
              ],
            );
          }
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 22),
            child: EventOnListWidget(
              event: event,
            ),
          );
        },
      ),
    );
  }
}
