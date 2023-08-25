import 'package:flutter/material.dart';

class UnknownScreenWidget extends StatelessWidget {
  const UnknownScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Страница не найдена'),
      ),
    );
  }
}
