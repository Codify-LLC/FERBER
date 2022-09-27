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

bool searchCheck(
  String searchTerm,
  String entityString,
) {
  // Add your function code here!
  return searchTerm.contains(entityString);
}

List<String> stringToList(List<String> jSONStringList) {
  // json string to list of strings
  return jSONStringList;
}

String toStringConverter(dynamic input) {
  // Add your function code here!
  return input.toString();
}
