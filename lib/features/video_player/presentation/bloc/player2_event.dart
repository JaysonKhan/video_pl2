part of 'player2_bloc.dart';

@freezed
class Player2Event with _$Player2Event {
  const factory Player2Event.started() = _Started;
  const factory Player2Event.setVideo(String link) = _SetVideo;
  const factory Player2Event.saveVideo(MyVideo video) = _SaveVideo;
}
