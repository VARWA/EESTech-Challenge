import 'package:eestech_challenge_app/config/theme/theme_colors.dart';
import 'package:eestech_challenge_app/domain/models/theory_article_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoModuleWidget extends StatefulWidget {
  final TheoryArticle theoryArticle;

  const VideoModuleWidget({super.key, required this.theoryArticle});

  @override
  State<VideoModuleWidget> createState() => _VideoModuleWidgetState();
}

class _VideoModuleWidgetState extends State<VideoModuleWidget> {
  late final YoutubePlayerController _controller;

  String _getVideoID(String url) {
    url = url.replaceAll("https://www.youtube.com/watch?v=", "");
    url = url.replaceAll("https://m.youtube.com/watch?v=", "");
    return url;
  }

  @override
  void initState() {
    super.initState();
    final String videoId = _getVideoID(widget.theoryArticle.videoUrl!);
    _controller = YoutubePlayerController.fromVideoId(
      params: const YoutubePlayerParams(
        captionLanguage: 'RU',
        interfaceLanguage: 'RU',
        mute: false,
        showControls: true,
        showFullscreenButton: true,
      ),
      videoId: videoId,
    );
  }

  @override
  void dispose() {
    // _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).secondaryHeaderColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            YoutubePlayer(
              controller: _controller,
              aspectRatio: 16 / 9,
            ),
            (widget.theoryArticle.videoDescription != null)
                ? Column(
                    children: [
                      const SizedBox(
                        height: 20,
                        child: Divider(
                          color: MyColors.blueOnLogo,
                        ),
                      ),
                      Text(
                        widget.theoryArticle.videoDescription!,
                      ),
                    ],
                  )
                : const SizedBox(
                    height: 15,
                  ),
          ],
        ),
      ),
    );
  }
}
