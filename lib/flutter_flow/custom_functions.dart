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

List<String> singleStringToList(String string) {
  // single string to list
  return [string];
}

String toStringConverter(dynamic input) {
  // Add your function code here!
  return input.toString();
}

String imagePathFromList(
  List<String> listOfStrings,
  int index,
) {
  // return element at index from list
  var a = listOfStrings;
  return a[index];
}

String stringFromList(
  List<String> listOfStrings,
  int index,
) {
  // return element at index from list
  var a = listOfStrings;
  return a[index];
}

List<String> combineLists(
  List<String> list1,
  List<String> list2,
) {
  // combine two lists
  final List<String> combinedList = [];
  combinedList.addAll(list1);
  combinedList.addAll(list2);
  return combinedList;
}

double stringToDouble(String string) {
  // String to Double
  var value = double.tryParse(string);
  return value ?? 0.0;
}

String listToString(List<String>? list) {
  // list to string
  String res = "";
  if (list != null) {
    res = list.join(',');
  }
  return res;
}

List<dynamic> nonNullList(List<dynamic> input) {
  // return empty list if input is null
  if (input == null) return [];
  return input;
}

List<LatLng> dataToLatLang(
  List<String> latitude,
  List<String> longitude,
) {
  // fill empty values with 0 and convert to latlng
  List<LatLng> array = [];
  for (int run = 0; run < latitude.length && run < longitude.length; run++) {
    array.add(
      LatLng(
        longitude[run].isEmpty ? 0.0 : double.parse(longitude[run]),
        latitude[run].isEmpty ? 0.0 : double.parse(latitude[run]),
      ),
    );
  }
  return array;
}
