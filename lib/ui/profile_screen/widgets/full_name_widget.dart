import 'package:eestech_challenge_app/config/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class FullNameWidget extends StatelessWidget {
  const FullNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.surfaceColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Text(
          "Имя Фамилия",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
