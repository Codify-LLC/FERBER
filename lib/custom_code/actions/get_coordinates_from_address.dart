// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_geocoding/google_geocoding.dart';

Future<List<LatLng>> getCoordinatesFromAddress(List<String> address) async {
  // Add your function code here!
  List<LatLng> markersList = [];
  // get location Coordinates From Address
  for (final add in address) {
    try {
      var googleGeocoding =
          GoogleGeocoding("AIzaSyBuDRETwhHPLUCvwGcqotDA7tB6tcik_Pk");
      var result = await googleGeocoding.geocoding.get(add, []);
      markersList.add(LatLng((result?.results![0].geometry!.location!.lat)!,
          (result?.results![0].geometry!.location!.lng)!));
    } catch (e) {
      print(e);
    }
  }
  return markersList;
}
