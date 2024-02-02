import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
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
  set playerName(String _value) {
    _playerName = _value;
    prefs.setString('ff_playerName', _value);
  }

  bool _isDarkMode = false;
  bool get isDarkMode => _isDarkMode;
  set isDarkMode(bool _value) {
    _isDarkMode = _value;
    prefs.setBool('ff_isDarkMode', _value);
  }

  int _levelsCount = 5;
  int get levelsCount => _levelsCount;
  set levelsCount(int _value) {
    _levelsCount = _value;
  }

  int _currentLevel = 0;
  int get currentLevel => _currentLevel;
  set currentLevel(int _value) {
    _currentLevel = _value;
    prefs.setInt('ff_currentLevel', _value);
  }

  List<PlayerStruct> _currentPlayers = [];
  List<PlayerStruct> get currentPlayers => _currentPlayers;
  set currentPlayers(List<PlayerStruct> _value) {
    _currentPlayers = _value;
  }

  void addToCurrentPlayers(PlayerStruct _value) {
    _currentPlayers.add(_value);
  }

  void removeFromCurrentPlayers(PlayerStruct _value) {
    _currentPlayers.remove(_value);
  }

  void removeAtIndexFromCurrentPlayers(int _index) {
    _currentPlayers.removeAt(_index);
  }

  void updateCurrentPlayersAtIndex(
    int _index,
    PlayerStruct Function(PlayerStruct) updateFn,
  ) {
    _currentPlayers[_index] = updateFn(_currentPlayers[_index]);
  }

  void insertAtIndexInCurrentPlayers(int _index, PlayerStruct _value) {
    _currentPlayers.insert(_index, _value);
  }

  List<LevelStruct> _levelsList = [];
  List<LevelStruct> get levelsList => _levelsList;
  set levelsList(List<LevelStruct> _value) {
    _levelsList = _value;
  }

  void addToLevelsList(LevelStruct _value) {
    _levelsList.add(_value);
  }

  void removeFromLevelsList(LevelStruct _value) {
    _levelsList.remove(_value);
  }

  void removeAtIndexFromLevelsList(int _index) {
    _levelsList.removeAt(_index);
  }

  void updateLevelsListAtIndex(
    int _index,
    LevelStruct Function(LevelStruct) updateFn,
  ) {
    _levelsList[_index] = updateFn(_levelsList[_index]);
  }

  void insertAtIndexInLevelsList(int _index, LevelStruct _value) {
    _levelsList.insert(_index, _value);
  }

  bool _isHapticAllowed = true;
  bool get isHapticAllowed => _isHapticAllowed;
  set isHapticAllowed(bool _value) {
    _isHapticAllowed = _value;
  }

  bool _isSoundOn = true;
  bool get isSoundOn => _isSoundOn;
  set isSoundOn(bool _value) {
    _isSoundOn = _value;
  }

  String _musicFile =
      'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3';
  String get musicFile => _musicFile;
  set musicFile(String _value) {
    _musicFile = _value;
  }

  double _currentMusicVolume = 0.5;
  double get currentMusicVolume => _currentMusicVolume;
  set currentMusicVolume(double _value) {
    _currentMusicVolume = _value;
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
