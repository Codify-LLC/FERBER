import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'flutter_flow_marker_struct.g.dart';

abstract class FlutterFlowMarkerStruct
    implements Built<FlutterFlowMarkerStruct, FlutterFlowMarkerStructBuilder> {
  static Serializer<FlutterFlowMarkerStruct> get serializer =>
      _$flutterFlowMarkerStructSerializer;

  String? get markerId;

  LatLng? get location;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(FlutterFlowMarkerStructBuilder builder) =>
      builder
        ..markerId = ''
        ..firestoreUtilData = FirestoreUtilData();

  FlutterFlowMarkerStruct._();
  factory FlutterFlowMarkerStruct(
          [void Function(FlutterFlowMarkerStructBuilder) updates]) =
      _$FlutterFlowMarkerStruct;
}

FlutterFlowMarkerStruct createFlutterFlowMarkerStruct({
  String? markerId,
  LatLng? location,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FlutterFlowMarkerStruct(
      (f) => f
        ..markerId = markerId
        ..location = location
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

FlutterFlowMarkerStruct? updateFlutterFlowMarkerStruct(
  FlutterFlowMarkerStruct? flutterFlowMarker, {
  bool clearUnsetFields = true,
}) =>
    flutterFlowMarker != null
        ? (flutterFlowMarker.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addFlutterFlowMarkerStructData(
  Map<String, dynamic> firestoreData,
  FlutterFlowMarkerStruct? flutterFlowMarker,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (flutterFlowMarker == null) {
    return;
  }
  if (flutterFlowMarker.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && flutterFlowMarker.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final flutterFlowMarkerData =
      getFlutterFlowMarkerFirestoreData(flutterFlowMarker, forFieldValue);
  final nestedData =
      flutterFlowMarkerData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = flutterFlowMarker.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getFlutterFlowMarkerFirestoreData(
  FlutterFlowMarkerStruct? flutterFlowMarker, [
  bool forFieldValue = false,
]) {
  if (flutterFlowMarker == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(
      FlutterFlowMarkerStruct.serializer, flutterFlowMarker);

  // Add any Firestore field values
  flutterFlowMarker.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFlutterFlowMarkerListFirestoreData(
  List<FlutterFlowMarkerStruct>? flutterFlowMarkers,
) =>
    flutterFlowMarkers
        ?.map((f) => getFlutterFlowMarkerFirestoreData(f, true))
        .toList() ??
    [];
