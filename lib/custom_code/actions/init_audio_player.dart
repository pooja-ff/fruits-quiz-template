// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:just_audio/just_audio.dart';

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

Future initAudioPlayer() async {
  AudioPlayerSingleton().init();
}

class AudioPlayerSingleton {
  static final AudioPlayerSingleton _singleton =
      AudioPlayerSingleton._internal();

  factory AudioPlayerSingleton() {
    return _singleton;
  }

  AudioPlayerSingleton._internal();

  AudioPlayer? audioPlayer;

  init() {
    audioPlayer = AudioPlayer();
  }
}
