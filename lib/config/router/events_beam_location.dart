import 'package:beamer/beamer.dart';
import 'package:eestech_challenge_app/ui/event_info_screen/event_info_screen_widget.dart';
import 'package:eestech_challenge_app/ui/events_screen/events_screen_widget.dart';
import 'package:flutter/material.dart';

class EventsLocation extends BeamLocation<BeamState> {
  EventsLocation(super.routeInformation);

  @override
  List<String> get pathPatterns => ['/events/:eventId'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    List<BeamPage> pages = [
      const BeamPage(
        key: ValueKey('events'),
        title: 'События',
        type: BeamPageType.noTransition,
        child: EventsScreen(),
      ),
    ];
    final String? stringEventsId = state.pathParameters['eventId'];

    if (state.uri.pathSegments.length == 2 && stringEventsId != null) {
      final String? eventId = stringEventsId;
      if (eventId != null) {
        pages.add(
          BeamPage(
            key: ValueKey('events/$eventId'),
            title: 'Событие',
            child: EventInfoScreenWidget(id: eventId),
          ),
        );
      }
    }
    return pages;
  }
}
