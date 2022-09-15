import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'thumbnails_struct.g.dart';

abstract class ThumbnailsStruct
    implements Built<ThumbnailsStruct, ThumbnailsStructBuilder> {
  static Serializer<ThumbnailsStruct> get serializer =>
      _$thumbnailsStructSerializer;

  ThumbnailTypeStruct get small;

  ThumbnailTypeStruct get large;

  ThumbnailTypeStruct get full;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ThumbnailsStructBuilder builder) => builder
    ..small = ThumbnailTypeStructBuilder()
    ..large = ThumbnailTypeStructBuilder()
    ..full = ThumbnailTypeStructBuilder()
    ..firestoreUtilData = FirestoreUtilData();

  ThumbnailsStruct._();
  factory ThumbnailsStruct([void Function(ThumbnailsStructBuilder) updates]) =
      _$ThumbnailsStruct;
}

ThumbnailsStruct createThumbnailsStruct({
  ThumbnailTypeStruct? small,
  ThumbnailTypeStruct? large,
  ThumbnailTypeStruct? full,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ThumbnailsStruct(
      (t) => t
        ..small = small?.toBuilder() ?? ThumbnailTypeStructBuilder()
        ..large = large?.toBuilder() ?? ThumbnailTypeStructBuilder()
        ..full = full?.toBuilder() ?? ThumbnailTypeStructBuilder()
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ThumbnailsStruct? updateThumbnailsStruct(
  ThumbnailsStruct? thumbnails, {
  bool clearUnsetFields = true,
}) =>
    thumbnails != null
        ? (thumbnails.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addThumbnailsStructData(
  Map<String, dynamic> firestoreData,
  ThumbnailsStruct? thumbnails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (thumbnails == null) {
    return;
  }
  if (thumbnails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && thumbnails.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final thumbnailsData = getThumbnailsFirestoreData(thumbnails, forFieldValue);
  final nestedData = thumbnailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = thumbnails.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getThumbnailsFirestoreData(
  ThumbnailsStruct? thumbnails, [
  bool forFieldValue = false,
]) {
  if (thumbnails == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(ThumbnailsStruct.serializer, thumbnails);

  // Handle nested data for "small" field.
  addThumbnailTypeStructData(
      firestoreData, thumbnails.small, 'small', forFieldValue);

  // Handle nested data for "large" field.
  addThumbnailTypeStructData(
      firestoreData, thumbnails.large, 'large', forFieldValue);

  // Handle nested data for "full" field.
  addThumbnailTypeStructData(
      firestoreData, thumbnails.full, 'full', forFieldValue);

  // Add any Firestore field values
  thumbnails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getThumbnailsListFirestoreData(
  List<ThumbnailsStruct>? thumbnailss,
) =>
    thumbnailss?.map((t) => getThumbnailsFirestoreData(t, true)).toList() ?? [];
