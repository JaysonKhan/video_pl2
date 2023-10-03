import 'package:dartz/dartz.dart';
import 'package:video_pl2/core/error/failure.dart';
import 'package:video_pl2/features/video_player/data/models/my_video.dart';
import 'package:video_pl2/features/video_player/domain/entity/video_entity.dart';

abstract class Usecase {
  Future<Either<Failure, void>> setLink(MyVideo video);
  Future<List<VideoEntity>> getLinks();
}

