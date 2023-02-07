// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';


// class audio extends StatefulWidget {
//   audio({Key? key}) : super(key: key);

//   @override
//   State<audio> createState() => _audioState();
// }

// class _audioState extends State<audio> {
//   final audioPlayer = AudioPlayer();
//   bool isPlaying = false;
//   Duration duration = Duration.zero;
//   Duration position = Duration.zero;
//   @override
//   void initState() {
//     super.initState();

//     setAudio();

//     audioPlayer.onPlayerStateChanged.listen((state) {
//       setState(() {
//         isPlaying = state == PlayerState.playing;
//       });
//     });
//     audioPlayer.onDurationChanged.listen((newDuration) {
//       setState(() {
//         duration = newDuration;
//       });
//     });
//     audioPlayer.onPositionChanged.listen((newPosition) {
//       setState(() {
//         position = newPosition;
//       });
//     });
//   }

//   Future setAudio() async {

//     audioPlayer.setReleaseMode(ReleaseMode.loop);
//     // String url = "http://localhost"
//     // audioPlayer.setUrl;
//     final player = AudioCache(prefix: 'assets/');
//     final url = await player.load('audio.mp3');
//     audioPlayer.play(LocalAudioSource('assets/your_audio_file.mp3', isLocal: true));
   
//   }

//   @override
//   void dispose() {
//     audioPlayer.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(20),
//             child: Image.network(
//               "https://scontent.fkdt1-1.fna.fbcdn.net/v/t39.30808-1/327899886_724077919409453_5970294466565024529_n.jpg?stp=dst-jpg_p160x160&_nc_cat=106&ccb=1-7&_nc_sid=7206a8&_nc_eui2=AeFDN0kTkcG6NYyrA_b-hBLtykBEHxu9fEjKQEQfG718SHhLni34xzghjBs2g7OMbfYlBV2meOZrLNLVfz4z2ZqQ&_nc_ohc=GmKkLo8yb60AX-zEvLJ&_nc_ht=scontent.fkdt1-1.fna&oh=00_AfAub25KkiToq45PfugLVfWUHW6o4jpSI7JjmzwP7oecsw&oe=63E607EF",
//               width: double.infinity,
//               height: 350,
//               fit: BoxFit.cover,
//             ),
//           ),
//           const SizedBox(
//             height: 32,
//           ),
//           const Text(
//             "😊 Song for you",
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(
//             height: 4,
//           ),
//           Text("Boom Vittawat", style: TextStyle(fontSize: 20)),
//           Slider(
//             min: 0,
//             max: duration.inSeconds.toDouble(),
//             value: position.inSeconds.toDouble(),
//             onChanged: (value) async {
//               final position = Duration(seconds: value.toInt());
//               await audioPlayer.seek(position);
//               await audioPlayer.resume();
//             },
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 // Text(formatTime(position)),
//                 // Text(formatTime(duration))
//               ],
//             ),
//           ),
//           CircleAvatar(
//             radius: 35,
//             child: IconButton(
//               icon: Icon(
//                 isPlaying ? Icons.pause : Icons.play_arrow,
//               ),
//               iconSize: 50,
//               onPressed: () async {
//                 if (isPlaying) {
//                   await audioPlayer.pause();
//                 } else {
//                   await audioPlayer.resume();
//                 }
//               },
//             ),
//           )
//         ]),
//       ),
//     );
//   }
// }
