import 'package:flutter/material.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color.fromRGBO(19, 42, 101, 0.83),
            Color.fromRGBO(61, 5, 105, 0.81),
            Color.fromRGBO(123, 5, 5, 0.79),
          ],
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Center(child: Container()),
      ),
    );
  }
}
