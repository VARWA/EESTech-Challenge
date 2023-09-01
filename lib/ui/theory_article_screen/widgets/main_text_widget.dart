import 'package:flutter/material.dart';

class MainTextWidget extends StatelessWidget {
  final String mainText;

  const MainTextWidget({super.key, required this.mainText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).secondaryHeaderColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 25,
        ),
        child: Text(
          mainText,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
