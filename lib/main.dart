import 'package:flutter/material.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:twogether/user/begin.dart';
import 'package:twogether/user/homepage.dart';

Future<void> main() async {
  await JustAudioBackground.init(
    androidNotificationChannelId: 'com.my.twogether',
    androidNotificationChannelName: 'Audio playback',
    androidNotificationOngoing: true,
  );
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: begin()));
}
