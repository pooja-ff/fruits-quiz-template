// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LevelStruct extends BaseStruct {
  LevelStruct({
    String? levelName,
    String? levelDesc,
    bool? isLevelLocked,
    String? levelImage,
    double? completionPerc,
  })  : _levelName = levelName,
        _levelDesc = levelDesc,
        _isLevelLocked = isLevelLocked,
        _levelImage = levelImage,
        _completionPerc = completionPerc;

  // "levelName" field.
  String? _levelName;
  String get levelName => _levelName ?? '';
  set levelName(String? val) => _levelName = val;
  bool hasLevelName() => _levelName != null;

  // "levelDesc" field.
  String? _levelDesc;
  String get levelDesc => _levelDesc ?? '';
  set levelDesc(String? val) => _levelDesc = val;
  bool hasLevelDesc() => _levelDesc != null;

  // "isLevelLocked" field.
  bool? _isLevelLocked;
  bool get isLevelLocked => _isLevelLocked ?? false;
  set isLevelLocked(bool? val) => _isLevelLocked = val;
  bool hasIsLevelLocked() => _isLevelLocked != null;

  // "levelImage" field.
  String? _levelImage;
  String get levelImage => _levelImage ?? '';
  set levelImage(String? val) => _levelImage = val;
  bool hasLevelImage() => _levelImage != null;

  // "completionPerc" field.
  double? _completionPerc;
  double get completionPerc => _completionPerc ?? 0.0;
  set completionPerc(double? val) => _completionPerc = val;
  void incrementCompletionPerc(double amount) =>
      _completionPerc = completionPerc + amount;
  bool hasCompletionPerc() => _completionPerc != null;

  static LevelStruct fromMap(Map<String, dynamic> data) => LevelStruct(
        levelName: data['levelName'] as String?,
        levelDesc: data['levelDesc'] as String?,
        isLevelLocked: data['isLevelLocked'] as bool?,
        levelImage: data['levelImage'] as String?,
        completionPerc: castToType<double>(data['completionPerc']),
      );

  static LevelStruct? maybeFromMap(dynamic data) =>
      data is Map ? LevelStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'levelName': _levelName,
        'levelDesc': _levelDesc,
        'isLevelLocked': _isLevelLocked,
        'levelImage': _levelImage,
        'completionPerc': _completionPerc,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'levelName': serializeParam(
          _levelName,
          ParamType.String,
        ),
        'levelDesc': serializeParam(
          _levelDesc,
          ParamType.String,
        ),
        'isLevelLocked': serializeParam(
          _isLevelLocked,
          ParamType.bool,
        ),
        'levelImage': serializeParam(
          _levelImage,
          ParamType.String,
        ),
        'completionPerc': serializeParam(
          _completionPerc,
          ParamType.double,
        ),
      }.withoutNulls;

  static LevelStruct fromSerializableMap(Map<String, dynamic> data) =>
      LevelStruct(
        levelName: deserializeParam(
          data['levelName'],
          ParamType.String,
          false,
        ),
        levelDesc: deserializeParam(
          data['levelDesc'],
          ParamType.String,
          false,
        ),
        isLevelLocked: deserializeParam(
          data['isLevelLocked'],
          ParamType.bool,
          false,
        ),
        levelImage: deserializeParam(
          data['levelImage'],
          ParamType.String,
          false,
        ),
        completionPerc: deserializeParam(
          data['completionPerc'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'LevelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LevelStruct &&
        levelName == other.levelName &&
        levelDesc == other.levelDesc &&
        isLevelLocked == other.isLevelLocked &&
        levelImage == other.levelImage &&
        completionPerc == other.completionPerc;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([levelName, levelDesc, isLevelLocked, levelImage, completionPerc]);
}

LevelStruct createLevelStruct({
  String? levelName,
  String? levelDesc,
  bool? isLevelLocked,
  String? levelImage,
  double? completionPerc,
}) =>
    LevelStruct(
      levelName: levelName,
      levelDesc: levelDesc,
      isLevelLocked: isLevelLocked,
      levelImage: levelImage,
      completionPerc: completionPerc,
    );
