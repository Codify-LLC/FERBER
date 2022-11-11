import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

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
  }

  late SharedPreferences prefs;

  bool TermsOfServiceAccepted = false;

  String currentDisplayRecordID = '';

  List<dynamic> SellerFormContactsList = [];

  DateTime? ListingDateActiveDate =
      DateTime.fromMillisecondsSinceEpoch(1814380200000);

  DateTime? ListingExpirationDate =
      DateTime.fromMillisecondsSinceEpoch(1814380200000);

  List<dynamic> BuyerFormContactsList = [];

  DateTime? OfferExpirationDate =
      DateTime.fromMillisecondsSinceEpoch(1814380200000);

  DateTime? ClosingDate = DateTime.fromMillisecondsSinceEpoch(1814380200000);

  List<String> UploadedPOFs = [];

  String currentSelectedDashboardPage = '';
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
