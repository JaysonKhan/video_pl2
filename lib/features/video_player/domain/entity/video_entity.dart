import 'package:equatable/equatable.dart';

class VideoEntity extends Equatable {
  final String videoId;
  final String title;
  final String author;

  const VideoEntity({
    required this.videoId,
    required this.title,
    required this.author,
  });

  @override
  List<Object> get props => [videoId, author, title];
}
