import 'dart:ui';

import 'package:eestech_challenge_app/ui/profile_screen/widgets/avatar_widget.dart';
import 'package:eestech_challenge_app/ui/profile_screen/widgets/full_name_widget.dart';
import 'package:eestech_challenge_app/ui/profile_screen/widgets/radar_chart_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreenWidget extends StatelessWidget {
  const ProfileScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 315,
          child: Stack(
            fit: StackFit.expand,
            children: [
              ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaY: 80, sigmaX: 80),
                //SigmaX and Y are just for X and Y directions
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcXCw2f8wwb5lEBH_87kGDTu7RYYQqIr1_ranwQPafvU6a_AdzLlPH45P1nLIAhPJIlWM&usqp=CAU',
                  fit: BoxFit.cover,
                ),
              ),
              const Column(
                children: [
                  SizedBox(height: 30),
                  AvatarWidget(),
                  SizedBox(height: 17),
                  Align(
                    alignment: AlignmentDirectional.center,
                    child: FullNameWidget(),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10), topLeft: Radius.circular(10)),
          ),
          child: ClipRect(
            child: Column(
              children: [
                Container(
                  color: Theme.of(context).cardTheme.surfaceTintColor,
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        '938',
                        style: TextStyle(fontSize: 70, color: Colors.white),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 60,
                      ),
                    ],
                  ),
                ),
                Divider(),
                RadarChartWidget(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
