import 'package:dartz/dartz.dart';
import 'package:video_pl2/core/error/failure.dart';
import 'package:video_pl2/features/video_player/data/models/my_video.dart';

abstract class VideoRepository{
  Future<Either<Failure, void>> saveToPref(MyVideo video);
  Future<List<MyVideo>> getList();
}