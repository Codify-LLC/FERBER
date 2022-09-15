// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:geocoding/geocoding.dart';

Future<LatLng?> getCoordinatesFromAddress(String address) async {
  // Add your function code here!
  // get location Coordinates From Address
  final geoCoderPlacemark = await locationFromAddress(address);
  if (geoCoderPlacemark.first != null) {
    final location = LatLng(
        geoCoderPlacemark.first.latitude, geoCoderPlacemark.first.longitude);
    return location;
  } else {
    return null;
  }
}
