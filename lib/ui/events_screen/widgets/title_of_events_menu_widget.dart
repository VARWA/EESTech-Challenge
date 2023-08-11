import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/theme/theme_colors.dart';

class TitleOfEventsMenu extends StatelessWidget {
  const TitleOfEventsMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('images/other/logo.svg'),
        const SizedBox(height: 40),
        // SizedBox(height: 52),
        Container(
          height: 48,
          width: 278,
          decoration: const BoxDecoration(
            color: MyColors.colorOfWidgetsBackgroundLight1,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: const Center(
            child: Text(
              'События',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 40,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
