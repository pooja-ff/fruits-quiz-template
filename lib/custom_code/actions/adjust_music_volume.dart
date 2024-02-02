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

import 'package:flutter/rendering.dart';

import '/custom_code/actions/init_audio_player.dart';
import 'package:just_audio/just_audio.dart';

Future adjustMusicVolume(double value) async {
  var _audioPlayer = AudioPlayerSingleton().audioPlayer!;

  await _audioPlayer.setVolume(value);
}
