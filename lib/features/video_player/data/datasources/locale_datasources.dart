import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_pl2/features/video_player/data/models/my_video.dart';

const String MY_VIDEOS_LISTS = "MY_VIDEOS_LISTS";

abstract class LocaleDataSources {
  Future<List<MyVideo>> getLastVideosListsLinks();

  Future<void> saveLinkToPref(MyVideo myVideo);
}

class LocaleDataSourcesImpl extends LocaleDataSources {
  SharedPreferences sharedPreferences;

  LocaleDataSourcesImpl({required this.sharedPreferences});

  @override
  Future<List<MyVideo>> getLastVideosListsLinks() {
    final jsonString = sharedPreferences.getString(MY_VIDEOS_LISTS);
    if (jsonString != null) {
      final List<MyVideo> musics = (jsonDecode(jsonString) as List<dynamic>)
          .map((e) => MyVideo.fromJson(e))
          .toList();
      return Future.value(musics);
    } else {
      return Future.value(List.empty());
    }
  }

  @override
  Future<void> saveLinkToPref(MyVideo myVideo) async {
    List<MyVideo> list = await getLastVideosListsLinks();
    if (!list.contains(myVideo)) {
      list.add(myVideo);
      await sharedPreferences.setString(
          MY_VIDEOS_LISTS, jsonEncode(list.map((e) => e.toJson()).toList()));
    }
  }
}
