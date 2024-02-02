import '/flutter_flow/flutter_flow_util.dart';
import 'settings_widget.dart' show SettingsWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class SettingsModel extends FlutterFlowModel<SettingsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for soundSlider widget.
  double? soundSliderValue;
  // State field(s) for musicSwitch widget.
  bool? musicSwitchValue;
  AudioPlayer? soundPlayer;
  // State field(s) for darkModeSwitch widget.
  bool? darkModeSwitchValue;
  // State field(s) for vibrationSwitch widget.
  bool? vibrationSwitchValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
