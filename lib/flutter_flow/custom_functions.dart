import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

LatLng geopoint(
  double? latitude,
  double? longitude,
) {
  return LatLng(latitude!, longitude!);
}

DateTime closingDateFun(String? closingDate) {
  // Add your function code here!
  return DateTime.parse(closingDate!);
}

String stringtoImage(String? stringImgPath) {
  // String to ImagePath
  return 'assets/images/$stringImgPath';
}

List<String> fetchAddressesFromJSON(
  String key,
  dynamic jsonData,
) {
  // fetch Value From JSON Data
  List<String> addresses = [];
  if (jsonData is List) {
    for (final jsonDataElement in jsonData) {
      var tempValue = jsonDataElement[key];
      if (tempValue != null) addresses.add(tempValue);
    }
  }
  return addresses;
}
