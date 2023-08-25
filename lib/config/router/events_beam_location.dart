import 'package:beamer/beamer.dart';
import 'package:eestech_challenge_app/ui/events_screen/events_screen_widget.dart';
import 'package:flutter/material.dart';

class EventsLocation extends BeamLocation<BeamState> {
  EventsLocation(super.routeInformation);

  @override
  List<String> get pathPatterns => ['/*'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) => [
        const BeamPage(
          key: ValueKey('events'),
          title: 'События',
          type: BeamPageType.noTransition,
          child: EventsScreen(
              // label: 'A',
              // detailsPath: '/a/details',
              ),
        ),
        // if (state.uri.pathSegments.length == 2)
        //   const BeamPage(
        //     key: ValueKey('a/details'),
        //     title: 'Details A',
        //     child: DetailsScreen(label: 'A'),
        //   ),
      ];
}
