import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _playerName = prefs.getString('ff_playerName') ?? _playerName;
    });
    _safeInit(() {
      _isDarkMode = prefs.getBool('ff_isDarkMode') ?? _isDarkMode;
    });
    _safeInit(() {
      _currentLevel = prefs.getInt('ff_currentLevel') ?? _currentLevel;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _playerName = 'player1';
  String get playerName => _playerName;
  set playerName(String value) {
    _playerName = value;
    prefs.setString('ff_playerName', value);
  }

  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;
  set isDarkMode(bool value) {
    _isDarkMode = value;
    prefs.setBool('ff_isDarkMode', value);
  }

  int _levelsCount = 5;
  int get levelsCount => _levelsCount;
  set levelsCount(int value) {
    _levelsCount = value;
  }

  int _currentLevel = 0;
  int get currentLevel => _currentLevel;
  set currentLevel(int value) {
    _currentLevel = value;
    prefs.setInt('ff_currentLevel', value);
  }

  List<PlayerStruct> _currentPlayers = [];
  List<PlayerStruct> get currentPlayers => _currentPlayers;
  set currentPlayers(List<PlayerStruct> value) {
    _currentPlayers = value;
  }

  void addToCurrentPlayers(PlayerStruct value) {
    _currentPlayers.add(value);
  }

  void removeFromCurrentPlayers(PlayerStruct value) {
    _currentPlayers.remove(value);
  }

  void removeAtIndexFromCurrentPlayers(int index) {
    _currentPlayers.removeAt(index);
  }

  void updateCurrentPlayersAtIndex(
    int index,
    PlayerStruct Function(PlayerStruct) updateFn,
  ) {
    _currentPlayers[index] = updateFn(_currentPlayers[index]);
  }

  void insertAtIndexInCurrentPlayers(int index, PlayerStruct value) {
    _currentPlayers.insert(index, value);
  }

  List<LevelStruct> _levelsList = [];
  List<LevelStruct> get levelsList => _levelsList;
  set levelsList(List<LevelStruct> value) {
    _levelsList = value;
  }

  void addToLevelsList(LevelStruct value) {
    _levelsList.add(value);
  }

  void removeFromLevelsList(LevelStruct value) {
    _levelsList.remove(value);
  }

  void removeAtIndexFromLevelsList(int index) {
    _levelsList.removeAt(index);
  }

  void updateLevelsListAtIndex(
    int index,
    LevelStruct Function(LevelStruct) updateFn,
  ) {
    _levelsList[index] = updateFn(_levelsList[index]);
  }

  void insertAtIndexInLevelsList(int index, LevelStruct value) {
    _levelsList.insert(index, value);
  }

  bool _isHapticAllowed = true;
  bool get isHapticAllowed => _isHapticAllowed;
  set isHapticAllowed(bool value) {
    _isHapticAllowed = value;
  }

  bool _isSoundOn = true;
  bool get isSoundOn => _isSoundOn;
  set isSoundOn(bool value) {
    _isSoundOn = value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
