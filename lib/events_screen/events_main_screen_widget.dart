import 'package:eestech_challenge_app/events_screen/events_examples.dart';
import 'package:flutter/material.dart';

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
    return Container(
      child: ListView.builder(
        itemCount: EventListLocal.eventsExampleList.length,
        //itemExtent: 130,
        itemBuilder: (BuildContext context, int index) {
          final event = EventListLocal.eventsExampleList[index];
          return Container(
            height: 3,
          );
        },
      ),
    );
  }
}
