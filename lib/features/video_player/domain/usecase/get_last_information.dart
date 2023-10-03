import 'package:dartz/dartz.dart';
import 'package:video_pl2/core/error/failure.dart';
import 'package:video_pl2/core/usecases/usecase.dart';
import 'package:video_pl2/features/video_player/data/models/my_video.dart';
import 'package:video_pl2/features/video_player/domain/repository/video_repository.dart';

class GetLastInformation extends Usecase {
  final VideoRepository repositoryl;

  GetLastInformation({required this.repositoryl});

  @override
  Future<List<MyVideo>> getLinks() => repositoryl.getList();

  @override
  Future<Either<Failure, void>> setLink(MyVideo video) => repositoryl.saveToPref(video);

}