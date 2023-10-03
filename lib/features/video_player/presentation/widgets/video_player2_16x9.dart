import'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:video_player/video_player.dart';

class VideoPlayer2_16x9 extends StatelessWidget {
  String videoId;
  VideoPlayerController controller;


  VideoPlayer2_16x9({
    super.key,
    required this.controller,
    required this.videoId,
  });

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(controller);
  }
}
