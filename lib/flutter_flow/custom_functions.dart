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

String toIso8601String(DateTime timestamp) {
  // Add your function code here!
  return DateFormat("yyyy-MM-dd").format(timestamp);
}

List<String> attachmentObjectFromUrls(List<String> urls) {
  // Add your function code here!
  List<String> attachments = [];
  for (final url in urls) {
    attachments.add({
      "url": url,
    }.toString());
  }
  return attachments;
}

List<String> contactRecordID(List<dynamic> contactsRecords) {
  // get contactrecordid from json
  List<String> ids = [];
  for (final contact in contactsRecords) {
    ids.add(contact["id"]);
  }
  return ids;
}

List<String> attachmentListFromURLs(List<String> photoUrls) {
  // Add your function code here!
  List<String> photosAttachments = [];
  for (final photo in photoUrls) {
    photosAttachments.add('{"url" : "$photo"}');
  }
  return photosAttachments;
}

String initialsFromName(String fullName) {
  // initials from name
  final List<String> fullNames = fullName.split(' '); // get first and last
  var key = fullNames[0][0].toUpperCase(); // get first letter
  key += fullNames[fullNames.length - 1].length > 1
      ? fullNames[fullNames.length - 1][0].toUpperCase()
      : "";
  key += fullNames.length > 2 ? fullNames[1][0].toUpperCase() : "";
  return key.toString();
}

double convertToDecimalPercentage(double inputValue) {
  // Add your function code here!
  return inputValue / 100;
}
