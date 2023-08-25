import 'package:eestech_challenge_app/domain/models/event_model.dart';
import 'package:eestech_challenge_app/examples_for_testing/events_examples.dart';
import 'package:eestech_challenge_app/ui/event_info_main_screen/widgets/meta_info_widget.dart';
import 'package:flutter/material.dart';

class EventInfoMainScreenWidget extends StatelessWidget {
  final int id;

  const EventInfoMainScreenWidget({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final Event event = EventExampleList.eventsExampleList
        .firstWhere((event) => id == event.id);
    return Scaffold(
      backgroundColor: const Color.fromRGBO(230, 230, 230, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 196,
            color: Theme.of(context).scaffoldBackgroundColor,
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
          DefaultTabController(
            length: 2,
            child: Column(
              children: [
                const TabBar(
                  indicatorColor: Color.fromRGBO(132, 56, 255, 1),
                  tabs: [
                    Text(
                      'Описание',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Правила',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                  child: TabBarView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 50,
                          right: 50,
                        ),
                        child: Text(
                          event.fullDescription,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 50,
                          right: 50,
                        ),
                        child: Text(
                          event.rules,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
