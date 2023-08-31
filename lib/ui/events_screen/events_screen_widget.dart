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
      value: EventsScreenBloc()..add(EventsScreenGetEventsEvent()),
      child: Scaffold(
        body: BlocBuilder<EventsScreenBloc, EventsScreenState>(
          builder: (context, state) {
            if (state is EventsScreenErrorState) {
              return Center(
                child: Text(
                  state.message,
                  textAlign: TextAlign.center,
                ),
              );
            }
            if (state is EventsScreenGetEventsSuccessState) {
              return ListView.builder(
                scrollDirection: Axis.vertical,
                // shrinkWrap: true,
                itemCount: state.events.length,
                itemBuilder: (BuildContext context, int index) {
                  final event = state.events[index];
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
              );
            }
            return const CustomProgressIndicator();
          },
        ),
      ),
    );
  }
}
