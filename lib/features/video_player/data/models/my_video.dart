import 'package:video_pl2/features/video_player/domain/entity/video_entity.dart';

class MyVideo extends VideoEntity {
  const MyVideo({
    required String videoId,
    required String title,
    required String author,
  }) : super(videoId: videoId, title: title, author: author);

  Map<String, dynamic> toJson() => {
        "videoId": videoId,
        "title": title,
        "author": author,
      };

  factory MyVideo.fromJson(Map<String, dynamic> json) {
    return MyVideo(
      videoId: json["videoId"] ?? "",
      title: json["title"] ?? "",
      author: json["author"] ?? "",
    );
  }
}
