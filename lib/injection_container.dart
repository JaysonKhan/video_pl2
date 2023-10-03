import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_pl2/core/network/network_info.dart';
import 'package:video_pl2/core/utils/input_checker.dart';
import 'package:video_pl2/features/video_player/data/datasources/locale_datasources.dart';
import 'package:video_pl2/features/video_player/data/repository/video_repository_impl.dart';
import 'package:video_pl2/features/video_player/domain/repository/video_repository.dart';
import 'package:video_pl2/features/video_player/domain/usecase/get_last_information.dart';
import 'package:video_pl2/features/video_player/presentation/bloc/player2_bloc.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final sharedPref = await SharedPreferences.getInstance();
  sl.registerSingleton<SharedPreferences>(sharedPref);

  sl.registerLazySingleton<InputConverter>(() => InputConverter());

  sl.registerLazySingleton(() => InternetConnectionChecker());

  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl.call()));

  sl.registerLazySingleton<LocaleDataSources>(
      () => LocaleDataSourcesImpl(sharedPreferences: sl.call()));

  sl.registerLazySingleton<VideoRepository>(() => VideoRepositoryImpl(
        localeDataSources: sl.call(),
        inputConvertor: sl.call(),
      ));

  sl.registerLazySingleton(() => GetLastInformation(repositoryl: sl.call()));

  sl.registerFactory(
      () => Player2Bloc(usecase: sl.call(), networkInfo: sl.call()));
}
