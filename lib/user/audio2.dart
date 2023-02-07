import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:rxdart/rxdart.dart';
import 'package:twogether/user/homepage.dart';

class audioforyou extends StatefulWidget {
  const audioforyou({super.key});

  @override
  State<audioforyou> createState() => _audioforyouState();
}

class PositionData {
  const PositionData(
    this.position,
    this.bufferedPosition,
    this.duration,
  );
  final Duration position;
  final Duration bufferedPosition;
  final Duration duration;
}

class _audioforyouState extends State<audioforyou> {
  late AudioPlayer _audioPlayer;

  final _playlist = ConcatenatingAudioSource(children: [
    AudioSource.uri(Uri.parse('asset:///assets/boomsong.mp3'),
        tag: MediaItem(
            id: '0',
            title: "Boom's song for you",
            artist: 'Boom Vitt',
            artUri: Uri.parse(
                'https://media.licdn.com/dms/image/D5603AQG_fXA2D3inTg/profile-displayphoto-shrink_800_800/0/1675226873856?e=1681344000&v=beta&t=ZiVIDsH77jcXUQWANzRvTOl9Z7Brod5jrHKnJ8uAVm4'))),
    AudioSource.uri(Uri.parse('asset:///assets/gravity.mp3'),
        tag: MediaItem(
            id: '1',
            title: "Your favorite song",
            artist: 'John Mayer',
            artUri: Uri.parse(
                'https://www.billboard.com/wp-content/uploads/2022/06/John-Mayer-cr-Mark-Selliger-press-billboard-1548.jpg?w=1024'))),
  ]);

  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
          _audioPlayer.positionStream,
          _audioPlayer.bufferedPositionStream,
          _audioPlayer.durationStream,
          (position, bufferedPosition, duration) => PositionData(
              position, bufferedPosition, duration ?? Duration.zero));
  @override
  void initState() {
    super.initState();
    _audioPlayer = new AudioPlayer();
    _init();
  }

  Future<void> _init() async {
    await _audioPlayer.setLoopMode(LoopMode.all);
    await _audioPlayer.setAudioSource(_playlist);
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            child: Image.asset("assets/logo.png"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => homepage(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.home,
                    size: 26.0,
                  ),
                )),
          ],
          title: const Text(
            '2GETHER',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
          ),
          backgroundColor: Color.fromARGB(255, 245, 127, 167),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Color.fromARGB(255, 71, 71, 71)])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              StreamBuilder<SequenceState?>(
                stream: _audioPlayer.sequenceStateStream,
                builder: (context, snapshot) {
                  final state = snapshot.data;
                  if (state?.sequence.isEmpty ?? true) {
                    return SizedBox();
                  }
                  final metadata = state!.currentSource!.tag as MediaItem;
                  return MediaMetadata(
                      imageUrl: metadata.artUri.toString(),
                      title: metadata.title,
                      artist: metadata.artist ?? '');
                },
              ),
              SizedBox(height: 15,),
              StreamBuilder<PositionData>(
                stream: _positionDataStream,
                builder: ((context, snapshot) {
                  final positionData = snapshot.data;
                  return ProgressBar(
                    barHeight: 8,
                    baseBarColor: Colors.grey[600],
                    bufferedBarColor: Colors.grey,
                    progressBarColor: Colors.pink[400],
                    thumbColor: Colors.pink[400],
                    timeLabelTextStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    progress: positionData?.position ?? Duration.zero,
                    buffered: positionData?.bufferedPosition ?? Duration.zero,
                    total: positionData?.duration ?? Duration.zero,
                    onSeek: _audioPlayer.seek,
                  );
                }),
              ),
              Controls(audioPlayer: _audioPlayer)
            ],
          ),
        ));
  }
}

class MediaMetadata extends StatelessWidget {
  const MediaMetadata({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.artist,
  });
  final String imageUrl;
  final String title;
  final String artist;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        DecoratedBox(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Colors.black, offset: Offset(2, 4), blurRadius: 4)
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              height: 300,
              width: 300,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 15,),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          artist,
          style: const TextStyle(color: Colors.white, fontSize: 20),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

class Controls extends StatelessWidget {
  const Controls({super.key, required this.audioPlayer});

  final AudioPlayer audioPlayer;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      IconButton(
        onPressed: audioPlayer.seekToPrevious,
        icon: Icon(Icons.skip_previous_rounded),
        iconSize: 60,
        color: Colors.white,
      ),
      StreamBuilder<PlayerState>(
        stream: audioPlayer.playerStateStream,
        builder: ((context, snapshot) {
          final playerState = snapshot.data;
          final processingState = playerState?.processingState;
          final playing = playerState?.playing;
          if (!(playing ?? false)) {
            return IconButton(
                onPressed: audioPlayer.play,
                iconSize: 80,
                color: Colors.white,
                icon: Icon(Icons.play_arrow_rounded));
          } else if (processingState != ProcessingState.completed) {
            return IconButton(
              onPressed: audioPlayer.pause,
              iconSize: 80,
              color: Colors.white,
              icon: Icon(Icons.pause_rounded),
            );
          }
          return Icon(Icons.play_arrow_rounded, size: 80, color: Colors.white);
        }),
      ),
      IconButton(
        onPressed: audioPlayer.seekToNext,
        icon: Icon(Icons.skip_next_rounded),
        iconSize: 60,
        color: Colors.white,
      ),
    ]);
  }
}
