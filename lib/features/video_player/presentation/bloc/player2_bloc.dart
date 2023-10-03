import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_pl2/core/network/network_info.dart';
import 'package:video_pl2/core/utils/loading_state_enum.dart';
import 'package:video_pl2/core/utils/log.dart';
import 'package:video_pl2/features/video_player/data/models/my_video.dart';
import 'package:video_pl2/features/video_player/domain/usecase/get_last_information.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

part 'player2_event.dart';

part 'player2_state.dart';

part 'player2_bloc.freezed.dart';

class Player2Bloc extends Bloc<Player2Event, Player2State> {
  GetLastInformation usecase;
  NetworkInfo networkInfo;

  Player2Bloc({required this.usecase, required this.networkInfo})
      : super(const Player2State.uiState()) {
    on<Player2Event>((event, emit) async {
      if (await networkInfo.isConnected) {
        switch (event) {
          case _Started():
            final list = await usecase.getLinks();
            if (list.isNotEmpty) {
              emit(
                state.copyWith(list: list, loadingState: LoadingState.EMPTY),
              );
              myLogColored("LIST CHECK AFTER STARTED",
                  "List mavjud: ${list.map((e) => e.videoId)}", false);
            } else {
              emit(
                state.copyWith(loadingState: LoadingState.EMPTY),
              );
            }
            break;
          case _SetVideo():
            myLogColored("Page2Bloc _SetVideo()",
                "SetVideoga kirdi... ${event.link}", false);
            emit(state.copyWith(loadingState: LoadingState.LOADING));
            final checkLink = YoutubePlayer.convertUrlToId(event.link);
            if (checkLink != null) {
              emit(
                state.copyWith(
                  videoId: checkLink,
                  loadingState: LoadingState.SUCCESS,
                ),
              );
            } else {
              emit(
                state.copyWith(
                    errorMessage: "Kiritilgan Link Youtubega tegishli emas!!!",
                    loadingState: LoadingState.ERROR),
              );
            }
            break;
          case _SaveVideo():
            myLogColored("Page2Bloc _SaveVideo()",
                "SaveVideoga kirdi... ${event.video.videoId}", false);
            final either = await usecase.setLink(event.video);
            either.fold(
              (fail) {
                emit(
                  state.copyWith(
                    errorMessage: fail.reason,
                    loadingState: LoadingState.ERROR,
                  ),
                );
              },
              (success) {
                final newList = state.list.contains(event.video)
                    ? state.list
                    : [...state.list, event.video];
                emit(
                  state.copyWith(
                      loadingState: LoadingState.SUCCESS, list: newList),
                );
                myLogColored("LIST CHECK AFTER SETVIDEO",
                    "List mavjud: ${newList.map((e) => e.videoId)}", false);
              },
            );
            break;
        }
      } else {
        myLogColored("Internet checker", "INternetga ulanishda muammo", true);
        emit(
          state.copyWith(
              errorMessage: "Internetga ulanishni tekshiring...",
              loadingState: LoadingState.NETWORK),
        );
      }
    });
  }
}
