import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_menu_widget.dart' show MainMenuWidget;
import 'package:flutter/material.dart';

class MainMenuModel extends FlutterFlowModel<MainMenuWidget> {
  ///  Local state fields for this page.

  bool musicEnabled = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - initializeLevels] action in Play widget.
  List<LevelStruct>? generatedLevels;

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
