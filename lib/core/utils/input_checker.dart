import 'package:dartz/dartz.dart';
import 'package:video_pl2/core/error/exeptions.dart';
import 'package:video_pl2/core/error/failure.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class InputConverter {
  Either<Failure, String> checkLink(String str) {
    if (YoutubePlayer.convertUrlToId(str) != null) {
      return Right(YoutubePlayer.convertUrlToId(str)!);
    } else {
      throw InvalidVideoException();
    }
  }
}
