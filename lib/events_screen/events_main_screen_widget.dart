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
    return Container(
      child: ListView.builder(
          itemCount: 10,
          itemExtent: 130,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              child: Container(),
              onTap: () => _OnTapEvent(index),
            );
          }),
    );
  }
}
