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
  address.map((addressElement) async {
    final geoCoderPlacemark = await locationFromAddress(addressElement);
    if (geoCoderPlacemark.first != null) {
      final location = LatLng(
          geoCoderPlacemark.first.latitude, geoCoderPlacemark.first.longitude);
      markersList.add(location);
    }
  }).toList(growable: false);
  return markersList;
}
