import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'last_modified_by_struct.g.dart';

abstract class LastModifiedByStruct
    implements Built<LastModifiedByStruct, LastModifiedByStructBuilder> {
  static Serializer<LastModifiedByStruct> get serializer =>
      _$lastModifiedByStructSerializer;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(LastModifiedByStructBuilder builder) =>
      builder..firestoreUtilData = FirestoreUtilData();

  LastModifiedByStruct._();
  factory LastModifiedByStruct(
          [void Function(LastModifiedByStructBuilder) updates]) =
      _$LastModifiedByStruct;
}

LastModifiedByStruct createLastModifiedByStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LastModifiedByStruct(
      (l) => l
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

LastModifiedByStruct? updateLastModifiedByStruct(
  LastModifiedByStruct? lastModifiedBy, {
  bool clearUnsetFields = true,
}) =>
    lastModifiedBy != null
        ? (lastModifiedBy.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addLastModifiedByStructData(
  Map<String, dynamic> firestoreData,
  LastModifiedByStruct? lastModifiedBy,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (lastModifiedBy == null) {
    return;
  }
  if (lastModifiedBy.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && lastModifiedBy.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final lastModifiedByData =
      getLastModifiedByFirestoreData(lastModifiedBy, forFieldValue);
  final nestedData =
      lastModifiedByData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = lastModifiedBy.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getLastModifiedByFirestoreData(
  LastModifiedByStruct? lastModifiedBy, [
  bool forFieldValue = false,
]) {
  if (lastModifiedBy == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(LastModifiedByStruct.serializer, lastModifiedBy);

  // Add any Firestore field values
  lastModifiedBy.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLastModifiedByListFirestoreData(
  List<LastModifiedByStruct>? lastModifiedBys,
) =>
    lastModifiedBys
        ?.map((l) => getLastModifiedByFirestoreData(l, true))
        .toList() ??
    [];
