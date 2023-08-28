import 'package:flutter/material.dart';

class TheoryArticleScreenWidget extends StatelessWidget {
  const TheoryArticleScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            const SliverAppBar(
              floating: true,
              snap: true,
            )
          ];
        },
        body: const Center(
          child: Text('Страница с теорией'),
        ),
      ),
    );
  }
}
