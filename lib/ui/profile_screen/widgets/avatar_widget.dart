import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 100,
      backgroundImage: NetworkImage(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcXCw2f8wwb5lEBH_87kGDTu7RYYQqIr1_ranwQPafvU6a_AdzLlPH45P1nLIAhPJIlWM&usqp=CAU'),
    );
  }
}
