import 'package:dartz/dartz.dart';
import 'package:video_pl2/core/error/exeptions.dart';
import 'package:video_pl2/core/error/failure.dart';
import 'package:video_pl2/core/utils/input_checker.dart';
import 'package:video_pl2/features/video_player/data/datasources/locale_datasources.dart';
import 'package:video_pl2/features/video_player/data/models/my_video.dart';
import 'package:video_pl2/features/video_player/domain/repository/video_repository.dart';

class VideoRepositoryImpl extends VideoRepository {
  LocaleDataSources localeDataSources;
  InputConverter inputConvertor;

  VideoRepositoryImpl(
      {required this.localeDataSources, required this.inputConvertor});

  @override
  Future<List<MyVideo>> getList() =>
      localeDataSources.getLastVideosListsLinks();

  @override
  Future<Either<Failure, void>> saveToPref(MyVideo video) async {
    try {
      await localeDataSources.saveLinkToPref(video);
      return Future.value(const Right(Unit));
    } on CacheException {
      return Future.value(
        Left(
          Failure(
            "Xotiraga saqlashda muammo bor!!!",
            "VideoRepositoryImpl saveToPref()",
          ),
        ),
      );
    } catch (e) {
      return Future.value(
        Left(
          Failure(
            "Aniqlanmagan xatolik",
            "VideoRepositoryImpl saveToPref()",
          ),
        ),
      );
    }
  }
}
