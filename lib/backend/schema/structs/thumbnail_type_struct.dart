import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'thumbnail_type_struct.g.dart';

abstract class ThumbnailTypeStruct
    implements Built<ThumbnailTypeStruct, ThumbnailTypeStructBuilder> {
  static Serializer<ThumbnailTypeStruct> get serializer =>
      _$thumbnailTypeStructSerializer;

  String? get url;

  int? get width;

  int? get height;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ThumbnailTypeStructBuilder builder) => builder
    ..url = ''
    ..width = 0
    ..height = 0
    ..firestoreUtilData = FirestoreUtilData();

  ThumbnailTypeStruct._();
  factory ThumbnailTypeStruct(
          [void Function(ThumbnailTypeStructBuilder) updates]) =
      _$ThumbnailTypeStruct;
}

ThumbnailTypeStruct createThumbnailTypeStruct({
  String? url,
  int? width,
  int? height,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ThumbnailTypeStruct(
      (t) => t
        ..url = url
        ..width = width
        ..height = height
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ThumbnailTypeStruct? updateThumbnailTypeStruct(
  ThumbnailTypeStruct? thumbnailType, {
  bool clearUnsetFields = true,
}) =>
    thumbnailType != null
        ? (thumbnailType.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addThumbnailTypeStructData(
  Map<String, dynamic> firestoreData,
  ThumbnailTypeStruct? thumbnailType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (thumbnailType == null) {
    return;
  }
  if (thumbnailType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && thumbnailType.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final thumbnailTypeData =
      getThumbnailTypeFirestoreData(thumbnailType, forFieldValue);
  final nestedData =
      thumbnailTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = thumbnailType.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getThumbnailTypeFirestoreData(
  ThumbnailTypeStruct? thumbnailType, [
  bool forFieldValue = false,
]) {
  if (thumbnailType == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(ThumbnailTypeStruct.serializer, thumbnailType);

  // Add any Firestore field values
  thumbnailType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getThumbnailTypeListFirestoreData(
  List<ThumbnailTypeStruct>? thumbnailTypes,
) =>
    thumbnailTypes
        ?.map((t) => getThumbnailTypeFirestoreData(t, true))
        .toList() ??
    [];
