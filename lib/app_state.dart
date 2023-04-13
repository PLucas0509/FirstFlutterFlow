import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _galleryHeight = 350;
  int get galleryHeight => _galleryHeight;
  set galleryHeight(int _value) {
    _galleryHeight = _value;
  }

  int _activeTab = 0;
  int get activeTab => _activeTab;
  set activeTab(int _value) {
    _activeTab = _value;
  }

  LatLng? _location = LatLng(43.2541598, 5.3813317);
  LatLng? get location => _location;
  set location(LatLng? _value) {
    _location = _value;
  }

  List<bool> _favorites = [true, false, false, true];
  List<bool> get favorites => _favorites;
  set favorites(List<bool> _value) {
    _favorites = _value;
  }

  void addToFavorites(bool _value) {
    _favorites.add(_value);
  }

  void removeFromFavorites(bool _value) {
    _favorites.remove(_value);
  }

  void removeAtIndexFromFavorites(int _index) {
    _favorites.removeAt(_index);
  }

  bool _showDetails1 = false;
  bool get showDetails1 => _showDetails1;
  set showDetails1(bool _value) {
    _showDetails1 = _value;
  }

  bool _showDetails2 = false;
  bool get showDetails2 => _showDetails2;
  set showDetails2(bool _value) {
    _showDetails2 = _value;
  }

  bool _showDetails3 = false;
  bool get showDetails3 => _showDetails3;
  set showDetails3(bool _value) {
    _showDetails3 = _value;
  }

  bool _showDetails4 = false;
  bool get showDetails4 => _showDetails4;
  set showDetails4(bool _value) {
    _showDetails4 = _value;
  }

  List<String> _cooks = ['Michael', '', ''];
  List<String> get cooks => _cooks;
  set cooks(List<String> _value) {
    _cooks = _value;
  }

  void addToCooks(String _value) {
    _cooks.add(_value);
  }

  void removeFromCooks(String _value) {
    _cooks.remove(_value);
  }

  void removeAtIndexFromCooks(int _index) {
    _cooks.removeAt(_index);
  }

  List<bool> _cookSelected = [true, false, false];
  List<bool> get cookSelected => _cookSelected;
  set cookSelected(List<bool> _value) {
    _cookSelected = _value;
  }

  void addToCookSelected(bool _value) {
    _cookSelected.add(_value);
  }

  void removeFromCookSelected(bool _value) {
    _cookSelected.remove(_value);
  }

  void removeAtIndexFromCookSelected(int _index) {
    _cookSelected.removeAt(_index);
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
