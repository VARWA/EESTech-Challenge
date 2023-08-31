import 'package:eestech_challenge_app/blocs/event_info_screen/event_info_screen_bloc.dart';
import 'package:eestech_challenge_app/ui/elements/custom_progress_indicator.dart';
import 'package:eestech_challenge_app/ui/event_info_screen/widgets/full_event_text_info_widget.dart';
import 'package:eestech_challenge_app/ui/event_info_screen/widgets/meta_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class EventInfoScreenWidget extends StatelessWidget {
  final int id;

  const EventInfoScreenWidget({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: EventInfoScreenBloc()
        ..add(EventInfoScreenEvent.getInfo(eventId: id)),
      child: BlocBuilder<EventInfoScreenBloc, EventInfoScreenState>(
        builder: (context, state) => Scaffold(
            backgroundColor: state.when(
              initial: () => Theme.of(context).scaffoldBackgroundColor,
              loading: () => Theme.of(context).scaffoldBackgroundColor,
              loaded: (_) => const Color.fromRGBO(230, 230, 230, 1),
              unknownPage: () => Theme.of(context).scaffoldBackgroundColor,
            ),
            body: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  const SliverAppBar(
                    floating: true,
                    snap: true,
                  ),
                ];
              },
              body: state.when(
                initial: () => const CustomProgressIndicator(),
                loading: () => const CustomProgressIndicator(),
                loaded: (event) => SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 196,
                        width: double.infinity,
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Center(
                          child: SvgPicture.asset(
                            'logo.svg',
                            height: 196 / 2,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 194,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 37, top: 25),
                              child: Text(
                                event.title,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 21),
                              child: MetaInfoWidget(event: event),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 45.0,
                                top: 19,
                                bottom: 19,
                              ),
                              child: ElevatedButton(
                                style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                      Color.fromRGBO(211, 217, 228, 1),
                                    ),
                                    elevation: MaterialStatePropertyAll(0)),
                                onPressed: () {},
                                child: const Text(
                                  'Участвовать',
                                  style: TextStyle(
                                    color: Color.fromRGBO(132, 56, 255, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      FullEventTextInfoWidget(event: event),
                      const SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                ),
                unknownPage: () => const Center(
                  child: Text('Page not found: Error 404'),
                ),
              ),
            )),
      ),
    );
  }
}
