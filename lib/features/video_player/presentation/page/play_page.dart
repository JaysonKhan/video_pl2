import 'package:flutter/material.dart';
import 'package:video_pl2/core/utils/loading_state_enum.dart';
import 'package:video_pl2/features/video_player/data/models/my_video.dart';
import 'package:video_pl2/features/video_player/presentation/bloc/player2_bloc.dart';
import 'package:video_pl2/features/video_player/presentation/widgets/circular_progress_16x9.dart';
import 'package:video_pl2/features/video_player/presentation/widgets/error_16x9.dart';
import 'package:video_pl2/features/video_player/presentation/widgets/video_player_16x9.dart';
import 'package:video_pl2/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../widgets/video_player2_16x9.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({super.key});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

final bloc = sl<Player2Bloc>();

final _textController = TextEditingController();
late YoutubePlayerController ytcontroller;
late VideoPlayerController vpcontroller;

class _PlayPageState extends State<PlayPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: Scaffold(
        appBar: AppBar(title: const Text("Youtube Player")),
        body: Column(
          children: [
            BlocBuilder<Player2Bloc, Player2State>(
              builder: (context, state) {
                if (state.loadingState == LoadingState.LOADING) {
                  return const CircularProgress16x9();
                } else if (state.loadingState == LoadingState.NETWORK) {
                  return Error16x9(
                      errormessage: state.errorMessage, color: Colors.indigo);
                } else if (state.loadingState == LoadingState.ERROR) {
                  return Error16x9(
                      errormessage: state.errorMessage, color: Colors.red);
                } else if (state.loadingState == LoadingState.EMPTY) {
                  return Error16x9(
                      errormessage: state.errorMessage, color: Colors.blueGrey);
                }

                return VideoPlayer2_16x9(
                  controller: vpcontroller,
                  videoId: state.videoId,
                );
              },
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextField(
                      controller: _textController,
                      maxLines: 2,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Pase link here..."),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      bloc.add(
                        Player2Event.setVideo(_textController.text),
                      );
                      if (ytcontroller.hasListeners) {
                        bloc.add(Player2Event.saveVideo(MyVideo(
                            videoId: ytcontroller.metadata.videoId,
                            author: ytcontroller.metadata.author,
                            title: ytcontroller.metadata.title)));
                      }
                      _textController.clear();
                    },
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    color: Colors.greenAccent,
                    height: 72,
                    child: const Text("Watch this"),
                  ),
                ),
              ],
            ),
            BlocBuilder<Player2Bloc, Player2State>(builder: (context, state) {
              return Expanded(
                child: ListView(
                    shrinkWrap: true,
                    children: state.list
                        .map(
                          (e) => ListTile(
                            title: Text(e.title),
                            subtitle: Text(e.author),
                            onTap: () {
                              bloc.add(
                                Player2Event.setVideo(
                                    "https://youtu.be/${e.videoId}"),
                              );
                              _textController.clear();
                            },
                          ),
                        )
                        .toList()),
              );
            })
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    bloc.add(const Player2Event.started());
    ytcontroller = YoutubePlayerController(
      initialVideoId: "HQ_ytw58tC4",
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        hideThumbnail: true,
        enableCaption: false,
        disableDragSeek: true,
        loop: true,
      ),
    );
    
    vpcontroller = VideoPlayerController.networkUrl(Uri.parse("https://youtu.be/dwSDuBXASwc?si=zPxS0UJfrI7nkQoi"));
    super.initState();
  }

  @override
  void dispose() {
    ytcontroller.dispose();
    bloc.close();
    super.dispose();
  }
}
