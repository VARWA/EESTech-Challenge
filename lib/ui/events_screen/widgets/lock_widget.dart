import 'package:eestech_challenge_app/config/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class LockWidget extends StatelessWidget {
  final bool isEnded;

  const LockWidget({Key? key, required this.isEnded}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!isEnded) {
      return const Icon(
        Icons.lock_open_outlined,
        color: Mycolors.BlueOnLogo,
      );
    } else {
      return const Icon(
        Icons.lock_outline,
        color: Mycolors.RedOnLogo,
      );
    }

  }
}