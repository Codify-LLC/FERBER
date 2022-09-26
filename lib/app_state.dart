import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
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
    secureStorage = FlutterSecureStorage();
    _HideFab = await secureStorage.getBool('ff_HideFab') ?? _HideFab;
    _falseVar = await secureStorage.getBool('ff_falseVar') ?? _falseVar;
    _statusVisiblityCheck =
        await secureStorage.getStringList('ff_statusVisiblityCheck') ??
            _statusVisiblityCheck;
    _GoogleMapsAPIKey = await secureStorage.getString('ff_GoogleMapsAPIKey') ??
        _GoogleMapsAPIKey;
  }

  late FlutterSecureStorage secureStorage;

  bool BuyerIntakeAddMore2 = false;

  bool _HideFab = false;
  bool get HideFab => _HideFab;
  set HideFab(bool _value) {
    _HideFab = _value;
    secureStorage.setBool('ff_HideFab', _value);
  }

  void deleteHideFab() {
    secureStorage.delete(key: 'ff_HideFab');
  }

  bool contactPhoneButotn = false;

  bool TermsOfServiceAccepted = false;

  List<int> ContactListAdd = [];

  bool HomePageWidgetShow = false;

  bool _falseVar = false;
  bool get falseVar => _falseVar;
  set falseVar(bool _value) {
    _falseVar = _value;
    secureStorage.setBool('ff_falseVar', _value);
  }

  void deleteFalseVar() {
    secureStorage.delete(key: 'ff_falseVar');
  }

  List<String> _statusVisiblityCheck = ['Active', 'Pending', 'Closed'];
  List<String> get statusVisiblityCheck => _statusVisiblityCheck;
  set statusVisiblityCheck(List<String> _value) {
    _statusVisiblityCheck = _value;
    secureStorage.setStringList('ff_statusVisiblityCheck', _value);
  }

  void deleteStatusVisiblityCheck() {
    secureStorage.delete(key: 'ff_statusVisiblityCheck');
  }

  void addToStatusVisiblityCheck(String _value) {
    _statusVisiblityCheck.add(_value);
    secureStorage.setStringList(
        'ff_statusVisiblityCheck', _statusVisiblityCheck);
  }

  void removeFromStatusVisiblityCheck(String _value) {
    _statusVisiblityCheck.remove(_value);
    secureStorage.setStringList(
        'ff_statusVisiblityCheck', _statusVisiblityCheck);
  }

  int Navigator = 0;

  String _GoogleMapsAPIKey = 'AIzaSyBuDRETwhHPLUCvwGcqotDA7tB6tcik_Pk';
  String get GoogleMapsAPIKey => _GoogleMapsAPIKey;
  set GoogleMapsAPIKey(String _value) {
    _GoogleMapsAPIKey = _value;
    secureStorage.setString('ff_GoogleMapsAPIKey', _value);
  }

  void deleteGoogleMapsAPIKey() {
    secureStorage.delete(key: 'ff_GoogleMapsAPIKey');
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

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await write(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await write(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await write(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await write(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await write(key: key, value: ListToCsvConverter().convert([value]));
}
