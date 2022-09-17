import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _HideFab = prefs.getBool('ff_HideFab') ?? _HideFab;
    _falseVar = prefs.getBool('ff_falseVar') ?? _falseVar;
    _statusVisiblityCheck =
        prefs.getStringList('ff_statusVisiblityCheck') ?? _statusVisiblityCheck;
  }

  late SharedPreferences prefs;

  bool BuyerIntakeAddMore2 = false;

  bool _HideFab = false;
  bool get HideFab => _HideFab;
  set HideFab(bool _value) {
    _HideFab = _value;
    prefs.setBool('ff_HideFab', _value);
  }

  bool contactPhoneButotn = false;

  bool TermsOfServiceAccepted = false;

  List<int> ContactListAdd = [];

  bool HomePageWidgetShow = false;

  bool _falseVar = false;
  bool get falseVar => _falseVar;
  set falseVar(bool _value) {
    _falseVar = _value;
    prefs.setBool('ff_falseVar', _value);
  }

  List<String> _statusVisiblityCheck = ['Active', 'Pending', 'Closed'];
  List<String> get statusVisiblityCheck => _statusVisiblityCheck;
  set statusVisiblityCheck(List<String> _value) {
    _statusVisiblityCheck = _value;
    prefs.setStringList('ff_statusVisiblityCheck', _value);
  }

  void addToStatusVisiblityCheck(String _value) {
    _statusVisiblityCheck.add(_value);
    prefs.setStringList('ff_statusVisiblityCheck', _statusVisiblityCheck);
  }

  void removeFromStatusVisiblityCheck(String _value) {
    _statusVisiblityCheck.remove(_value);
    prefs.setStringList('ff_statusVisiblityCheck', _statusVisiblityCheck);
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
