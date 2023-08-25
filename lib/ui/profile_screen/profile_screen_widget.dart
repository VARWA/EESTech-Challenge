import 'package:eestech_challenge_app/ui/profile_screen/widgets/avatar_widget.dart';
import 'package:eestech_challenge_app/ui/profile_screen/widgets/full_name_widget.dart';
import 'package:eestech_challenge_app/ui/profile_screen/widgets/radar_chart_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreenWidget extends StatelessWidget {
  const ProfileScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(height: 30),
        AvatarWidget(),
        SizedBox(height: 17),
        Align(
          alignment: AlignmentDirectional.center,
          child: FullNameWidget(),
        ),
        SizedBox(height: 30),
        Divider(),
        RadarChartWidget(),
      ],
    );
  }
}
