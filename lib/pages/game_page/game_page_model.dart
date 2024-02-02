import '/components/rank_points_table_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'game_page_widget.dart' show GamePageWidget;
import 'package:flutter/material.dart';

class GamePageModel extends FlutterFlowModel<GamePageWidget> {
  ///  Local state fields for this page.

  List<String> options = ['Apples', 'Oranges', 'Grapes'];
  void addToOptions(String item) => options.add(item);
  void removeFromOptions(String item) => options.remove(item);
  void removeAtIndexFromOptions(int index) => options.removeAt(index);
  void insertAtIndexInOptions(int index, String item) =>
      options.insert(index, item);
  void updateOptionsAtIndex(int index, Function(String) updateFn) =>
      options[index] = updateFn(options[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for RankPointsTable component.
  late RankPointsTableModel rankPointsTableModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    rankPointsTableModel = createModel(context, () => RankPointsTableModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    rankPointsTableModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
