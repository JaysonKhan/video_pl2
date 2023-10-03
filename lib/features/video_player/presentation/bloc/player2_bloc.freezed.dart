// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player2_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Player2Event {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String link) setVideo,
    required TResult Function(MyVideo video) saveVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String link)? setVideo,
    TResult? Function(MyVideo video)? saveVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String link)? setVideo,
    TResult Function(MyVideo video)? saveVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetVideo value) setVideo,
    required TResult Function(_SaveVideo value) saveVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetVideo value)? setVideo,
    TResult? Function(_SaveVideo value)? saveVideo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetVideo value)? setVideo,
    TResult Function(_SaveVideo value)? saveVideo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Player2EventCopyWith<$Res> {
  factory $Player2EventCopyWith(
          Player2Event value, $Res Function(Player2Event) then) =
      _$Player2EventCopyWithImpl<$Res, Player2Event>;
}

/// @nodoc
class _$Player2EventCopyWithImpl<$Res, $Val extends Player2Event>
    implements $Player2EventCopyWith<$Res> {
  _$Player2EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$Player2EventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'Player2Event.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String link) setVideo,
    required TResult Function(MyVideo video) saveVideo,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String link)? setVideo,
    TResult? Function(MyVideo video)? saveVideo,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String link)? setVideo,
    TResult Function(MyVideo video)? saveVideo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetVideo value) setVideo,
    required TResult Function(_SaveVideo value) saveVideo,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetVideo value)? setVideo,
    TResult? Function(_SaveVideo value)? saveVideo,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetVideo value)? setVideo,
    TResult Function(_SaveVideo value)? saveVideo,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements Player2Event {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SetVideoImplCopyWith<$Res> {
  factory _$$SetVideoImplCopyWith(
          _$SetVideoImpl value, $Res Function(_$SetVideoImpl) then) =
      __$$SetVideoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String link});
}

/// @nodoc
class __$$SetVideoImplCopyWithImpl<$Res>
    extends _$Player2EventCopyWithImpl<$Res, _$SetVideoImpl>
    implements _$$SetVideoImplCopyWith<$Res> {
  __$$SetVideoImplCopyWithImpl(
      _$SetVideoImpl _value, $Res Function(_$SetVideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
  }) {
    return _then(_$SetVideoImpl(
      null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetVideoImpl implements _SetVideo {
  const _$SetVideoImpl(this.link);

  @override
  final String link;

  @override
  String toString() {
    return 'Player2Event.setVideo(link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetVideoImpl &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetVideoImplCopyWith<_$SetVideoImpl> get copyWith =>
      __$$SetVideoImplCopyWithImpl<_$SetVideoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String link) setVideo,
    required TResult Function(MyVideo video) saveVideo,
  }) {
    return setVideo(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String link)? setVideo,
    TResult? Function(MyVideo video)? saveVideo,
  }) {
    return setVideo?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String link)? setVideo,
    TResult Function(MyVideo video)? saveVideo,
    required TResult orElse(),
  }) {
    if (setVideo != null) {
      return setVideo(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetVideo value) setVideo,
    required TResult Function(_SaveVideo value) saveVideo,
  }) {
    return setVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetVideo value)? setVideo,
    TResult? Function(_SaveVideo value)? saveVideo,
  }) {
    return setVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetVideo value)? setVideo,
    TResult Function(_SaveVideo value)? saveVideo,
    required TResult orElse(),
  }) {
    if (setVideo != null) {
      return setVideo(this);
    }
    return orElse();
  }
}

abstract class _SetVideo implements Player2Event {
  const factory _SetVideo(final String link) = _$SetVideoImpl;

  String get link;
  @JsonKey(ignore: true)
  _$$SetVideoImplCopyWith<_$SetVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveVideoImplCopyWith<$Res> {
  factory _$$SaveVideoImplCopyWith(
          _$SaveVideoImpl value, $Res Function(_$SaveVideoImpl) then) =
      __$$SaveVideoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MyVideo video});
}

/// @nodoc
class __$$SaveVideoImplCopyWithImpl<$Res>
    extends _$Player2EventCopyWithImpl<$Res, _$SaveVideoImpl>
    implements _$$SaveVideoImplCopyWith<$Res> {
  __$$SaveVideoImplCopyWithImpl(
      _$SaveVideoImpl _value, $Res Function(_$SaveVideoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? video = null,
  }) {
    return _then(_$SaveVideoImpl(
      null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as MyVideo,
    ));
  }
}

/// @nodoc

class _$SaveVideoImpl implements _SaveVideo {
  const _$SaveVideoImpl(this.video);

  @override
  final MyVideo video;

  @override
  String toString() {
    return 'Player2Event.saveVideo(video: $video)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveVideoImpl &&
            (identical(other.video, video) || other.video == video));
  }

  @override
  int get hashCode => Object.hash(runtimeType, video);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveVideoImplCopyWith<_$SaveVideoImpl> get copyWith =>
      __$$SaveVideoImplCopyWithImpl<_$SaveVideoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String link) setVideo,
    required TResult Function(MyVideo video) saveVideo,
  }) {
    return saveVideo(video);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String link)? setVideo,
    TResult? Function(MyVideo video)? saveVideo,
  }) {
    return saveVideo?.call(video);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String link)? setVideo,
    TResult Function(MyVideo video)? saveVideo,
    required TResult orElse(),
  }) {
    if (saveVideo != null) {
      return saveVideo(video);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SetVideo value) setVideo,
    required TResult Function(_SaveVideo value) saveVideo,
  }) {
    return saveVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SetVideo value)? setVideo,
    TResult? Function(_SaveVideo value)? saveVideo,
  }) {
    return saveVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SetVideo value)? setVideo,
    TResult Function(_SaveVideo value)? saveVideo,
    required TResult orElse(),
  }) {
    if (saveVideo != null) {
      return saveVideo(this);
    }
    return orElse();
  }
}

abstract class _SaveVideo implements Player2Event {
  const factory _SaveVideo(final MyVideo video) = _$SaveVideoImpl;

  MyVideo get video;
  @JsonKey(ignore: true)
  _$$SaveVideoImplCopyWith<_$SaveVideoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Player2State {
  String get errorMessage => throw _privateConstructorUsedError;
  String get videoId => throw _privateConstructorUsedError;
  LoadingState get loadingState => throw _privateConstructorUsedError;
  List<MyVideo> get list => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage, String videoId,
            LoadingState loadingState, List<MyVideo> list)
        uiState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage, String videoId,
            LoadingState loadingState, List<MyVideo> list)?
        uiState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage, String videoId,
            LoadingState loadingState, List<MyVideo> list)?
        uiState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UiState value) uiState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UiState value)? uiState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UiState value)? uiState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $Player2StateCopyWith<Player2State> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Player2StateCopyWith<$Res> {
  factory $Player2StateCopyWith(
          Player2State value, $Res Function(Player2State) then) =
      _$Player2StateCopyWithImpl<$Res, Player2State>;
  @useResult
  $Res call(
      {String errorMessage,
      String videoId,
      LoadingState loadingState,
      List<MyVideo> list});
}

/// @nodoc
class _$Player2StateCopyWithImpl<$Res, $Val extends Player2State>
    implements $Player2StateCopyWith<$Res> {
  _$Player2StateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? videoId = null,
    Object? loadingState = null,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      loadingState: null == loadingState
          ? _value.loadingState
          : loadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MyVideo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UiStateImplCopyWith<$Res>
    implements $Player2StateCopyWith<$Res> {
  factory _$$UiStateImplCopyWith(
          _$UiStateImpl value, $Res Function(_$UiStateImpl) then) =
      __$$UiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String errorMessage,
      String videoId,
      LoadingState loadingState,
      List<MyVideo> list});
}

/// @nodoc
class __$$UiStateImplCopyWithImpl<$Res>
    extends _$Player2StateCopyWithImpl<$Res, _$UiStateImpl>
    implements _$$UiStateImplCopyWith<$Res> {
  __$$UiStateImplCopyWithImpl(
      _$UiStateImpl _value, $Res Function(_$UiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
    Object? videoId = null,
    Object? loadingState = null,
    Object? list = null,
  }) {
    return _then(_$UiStateImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      loadingState: null == loadingState
          ? _value.loadingState
          : loadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<MyVideo>,
    ));
  }
}

/// @nodoc

class _$UiStateImpl implements _UiState {
  const _$UiStateImpl(
      {this.errorMessage = "",
      this.videoId = "HQ_ytw58tC4",
      this.loadingState = LoadingState.LOADING,
      final List<MyVideo> list = const <MyVideo>[]})
      : _list = list;

  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final String videoId;
  @override
  @JsonKey()
  final LoadingState loadingState;
  final List<MyVideo> _list;
  @override
  @JsonKey()
  List<MyVideo> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'Player2State.uiState(errorMessage: $errorMessage, videoId: $videoId, loadingState: $loadingState, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.loadingState, loadingState) ||
                other.loadingState == loadingState) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage, videoId,
      loadingState, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UiStateImplCopyWith<_$UiStateImpl> get copyWith =>
      __$$UiStateImplCopyWithImpl<_$UiStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String errorMessage, String videoId,
            LoadingState loadingState, List<MyVideo> list)
        uiState,
  }) {
    return uiState(errorMessage, videoId, loadingState, list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String errorMessage, String videoId,
            LoadingState loadingState, List<MyVideo> list)?
        uiState,
  }) {
    return uiState?.call(errorMessage, videoId, loadingState, list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String errorMessage, String videoId,
            LoadingState loadingState, List<MyVideo> list)?
        uiState,
    required TResult orElse(),
  }) {
    if (uiState != null) {
      return uiState(errorMessage, videoId, loadingState, list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UiState value) uiState,
  }) {
    return uiState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UiState value)? uiState,
  }) {
    return uiState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UiState value)? uiState,
    required TResult orElse(),
  }) {
    if (uiState != null) {
      return uiState(this);
    }
    return orElse();
  }
}

abstract class _UiState implements Player2State {
  const factory _UiState(
      {final String errorMessage,
      final String videoId,
      final LoadingState loadingState,
      final List<MyVideo> list}) = _$UiStateImpl;

  @override
  String get errorMessage;
  @override
  String get videoId;
  @override
  LoadingState get loadingState;
  @override
  List<MyVideo> get list;
  @override
  @JsonKey(ignore: true)
  _$$UiStateImplCopyWith<_$UiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
