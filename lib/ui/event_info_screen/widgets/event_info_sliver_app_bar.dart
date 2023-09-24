import 'package:cached_network_image/cached_network_image.dart';
import 'package:eestech_challenge_app/domain/models/event_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../elements/custom_progress_indicator.dart';

class EventInfoSliverAppBar extends StatelessWidget {
  final Event event;

  const EventInfoSliverAppBar({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200.0,
      backgroundColor: Colors.transparent,
      flexibleSpace: (event.linkToPhoto != null)
          ? Stack(
              children: [
                Positioned.fill(
                  child: CachedNetworkImage(
                    imageUrl: event.linkToPhoto!,
                    placeholder: (context, url) =>
                        const CustomProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: Center(
                child: SvgPicture.asset(
                  'logo.svg',
                  height: 196 / 2,
                ),
              ),
            ),
      floating: true,
      snap: true,
    );
  }
}
