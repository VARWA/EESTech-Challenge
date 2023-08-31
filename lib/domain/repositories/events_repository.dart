import 'dart:developer';

import 'package:eestech_challenge_app/domain/models/event_model.dart';
import 'package:eestech_challenge_app/examples_for_testing/events_examples.dart';

class EventsRepository {
  EventsRepository();

  List<Event> getEvents() {
    return EventExampleList.eventsExampleList.map((e) => e).toList();
  }

  Event? getEventInfo({required int id}) {
    try {
      final Event event = EventExampleList.eventsExampleList
          .firstWhere((event) => event.id == id);
      print(event);
      return event;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}
