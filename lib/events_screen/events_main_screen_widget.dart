import 'package:eestech_challenge_app/events_screen/events_examples.dart';
import 'package:eestech_challenge_app/theme_colors.dart';
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
    return  ListView.builder(
      itemCount: EventListLocal.eventsExampleList.length,
      itemBuilder: (BuildContext context, int index) {
        final event = EventListLocal.eventsExampleList[index];
        final subTitleStyle = TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 10,
        );
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 22),
          child: Container(
            height: 155,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 13),
                  Padding(
                    padding: EdgeInsets.only(left: 0),
                    child: Text(
                      event.title,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          backgroundColor: Mycolors.ColorOfTextsBackground1),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(Icons.edit_note, weight: 7),
                      SizedBox(width: 6),
                      Text(
                        event.description,
                        style: subTitleStyle,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.access_time_outlined, weight: 7),
                      SizedBox(width: 6),
                      Text(
                        [event.startDate, event.endDate].join(" - "),
                        style: subTitleStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.redeem, weight: 7),
                      SizedBox(width: 6),
                      Text(
                        event.bonuses,
                        style: subTitleStyle,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.gamepad_outlined),
                      SizedBox(width: 6),
                      Text(
                        '${event.points} points',
                        style: subTitleStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Mycolors.ColorOfWidgetsBackgroundLight1,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        );
      },
    );
  }
}

// class TitleOfEventsMenu extends StatelessWidget {
//   const TitleOfEventsMenu({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         const SizedBox(height: 16),
//         Container(
//           height: 106,
//           color: Colors.blue,
//         ),
//         // SizedBox(height: 52),
//         const EventTitle(),
//
//       ],
//     );
//   }
// }
//
// class EventTitle extends StatelessWidget {
//   const EventTitle({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 48,
//       width: 278,
//       decoration: BoxDecoration(
//         color: Mycolors.COLOROFWIDGETSLIGHT,
//         borderRadius: BorderRadius.all(Radius.circular(10)),
//       ),
//       child: Center(
//         child: Text('События'),
//       ),
//     );
//   }
// }
