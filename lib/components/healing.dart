import 'dart:io';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chewie/chewie.dart';

import 'package:flutter/material.dart';
import 'package:twogether/user/homepage.dart';

import 'package:video_player/video_player.dart';

class healing extends StatefulWidget {
  const healing({
    Key? key,
    this.title = 'Healing',
  }) : super(key: key);

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _healing();
  }
}

class _healing extends State<healing> {
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
          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg.JPG"), fit: BoxFit.cover),
          ),
          child: Center(
            child: Container(
                child: SizedBox(
                    width: 250.0,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                          fontFamily: 'Agne',
                          color: Color.fromARGB(255, 205, 205, 205)),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText('Hi Nut, this is me "Boom"'),
                          TypewriterAnimatedText(
                              'I will assume that you miss me and I am not available or work cause you open this application'),
                          TypewriterAnimatedText(
                              'So that I would like to say that I am also miss you too!'),
                          TypewriterAnimatedText(
                              'You know you are nice person and pretty'),
                          TypewriterAnimatedText(
                              'Therefore do not let anyone bring that from you'),
                          TypewriterAnimatedText(
                              'Or if I make you sad or feel alone, I am sorry for that Boom at that time maybe tried of work and say a word before thinking'),
                          TypewriterAnimatedText(
                              'I am sorry for that Boom at that time maybe tried of work and say a word before thinking'),
                          TypewriterAnimatedText(
                              'But I would say instead of Boom at that time he will recognize and go to you as soon as he can to make you happy'),
                          TypewriterAnimatedText(
                              'He will recognize and go to you as soon as he can to make you happy'),
                          TypewriterAnimatedText('cause Boom love you'),
                        ],
                      ),
                    ))),
          ),
        ));
  }
}
