import 'package:flutter/material.dart';

class MainLabelWidget extends StatelessWidget {
  final String text;

  const MainLabelWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            text,
            style: const TextStyle(
              // color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
