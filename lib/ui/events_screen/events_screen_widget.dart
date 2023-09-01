import 'package:eestech_challenge_app/blocs/events_screen/events_screen_bloc.dart';
import 'package:eestech_challenge_app/ui/elements/custom_progress_indicator.dart';
import 'package:eestech_challenge_app/ui/events_screen/widgets/title_of_events_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/event_on_main_screen_widget.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: EventsScreenBloc()..add(const EventsScreenEvent.getEvents()),
      child: Scaffold(
        body: BlocBuilder<EventsScreenBloc, EventsScreenState>(
          builder: (context, state) {
            return state.when(
              initial: () => const CustomProgressIndicator(),
              loading: () => const CustomProgressIndicator(),
              loaded: (events) => ListView.builder(
                scrollDirection: Axis.vertical,
                // shrinkWrap: true,
                itemCount: events.length,
                itemBuilder: (BuildContext context, int index) {
                  final event = events[index];
                  if (index == 0) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 24.0, top: 16),
                              child: SvgPicture.asset(
                                'logo.svg',
                                height: 36,
                              ),
                            ),
                          ],
                        ),
                        const TitleOfEventsMenu(),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 22),
                          child: EventOnListWidget(
                            event: event,
                          ),
                        )
                      ],
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 22),
                    child: EventOnListWidget(
                      event: event,
                    ),
                  );
                },
              ),
              error: (e) => Center(child: Text(e)),
            );
          },
        ),
      ),
    );
  }
}
