// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:geocoding/geocoding.dart';

Future<List<LatLng>> getCoordinatesFromAddress(List<String> address) async {
  // Add your function code here!
  List<LatLng> markersList = [];
  // get location Coordinates From Address
  for (final add in address) {
    final geoCoderPlacemark = await locationFromAddress(add);
    final location = LatLng(
        geoCoderPlacemark.first.latitude, geoCoderPlacemark.first.longitude);
    markersList.add(location);
  }
  return markersList;
}
