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

import '/custom_code/actions/init_audio_player.dart';
import 'package:just_audio/just_audio.dart';

Future startMusic() async {
  String musicFileId = "1vkMyIGVGFtoIzpLK4BqtxjoOZ_NVVjme";

  var _audioPlayer = AudioPlayerSingleton().audioPlayer!;

  if (_audioPlayer.playing) {
    await _audioPlayer.stop();
  }
  _audioPlayer.setVolume(1);
  _audioPlayer
      .setAsset('assets/audios/Veaceslav_Draganov_-_Creeping_up_on_Tiptoes.mp3')
      .then((_) => _audioPlayer.play());
}
