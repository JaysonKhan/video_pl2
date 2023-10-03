part of 'player2_bloc.dart';

@freezed
class Player2State with _$Player2State {
  const factory Player2State.uiState({
    @Default("") String errorMessage,
    @Default("HQ_ytw58tC4") String videoId,
    @Default(LoadingState.LOADING) LoadingState loadingState,
    @Default(<MyVideo>[]) List<MyVideo> list,
  }) = _UiState;
}
