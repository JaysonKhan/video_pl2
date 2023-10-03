import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer16x9 extends StatelessWidget {
  YoutubePlayerController controller;
  String videoId;

  VideoPlayer16x9({
    super.key,
    required this.controller,
    required this.videoId,
  });

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: controller..load(videoId),
      aspectRatio: 16 / 9,
      topActions: const [
        Spacer(),
        Text(
          "KHAN347",
          style: TextStyle(color: Colors.white),
        )
      ],
      bottomActions: [
        const SizedBox(width: 8.0),
        CurrentPosition(),
        const SizedBox(width: 8.0),
        ProgressBar(isExpanded: true),
        RemainingDuration(),
        const PlaybackSpeedButton(),
        const SizedBox(width: 8.0)
      ],
    );
  }
}
