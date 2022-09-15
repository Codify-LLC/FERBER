import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'collaborator_object_struct.g.dart';

abstract class CollaboratorObjectStruct
    implements
        Built<CollaboratorObjectStruct, CollaboratorObjectStructBuilder> {
  static Serializer<CollaboratorObjectStruct> get serializer =>
      _$collaboratorObjectStructSerializer;

  String? get id;

  String? get email;

  String? get name;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(CollaboratorObjectStructBuilder builder) =>
      builder
        ..id = ''
        ..email = ''
        ..name = ''
        ..firestoreUtilData = FirestoreUtilData();

  CollaboratorObjectStruct._();
  factory CollaboratorObjectStruct(
          [void Function(CollaboratorObjectStructBuilder) updates]) =
      _$CollaboratorObjectStruct;
}

CollaboratorObjectStruct createCollaboratorObjectStruct({
  String? id,
  String? email,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CollaboratorObjectStruct(
      (c) => c
        ..id = id
        ..email = email
        ..name = name
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

CollaboratorObjectStruct? updateCollaboratorObjectStruct(
  CollaboratorObjectStruct? collaboratorObject, {
  bool clearUnsetFields = true,
}) =>
    collaboratorObject != null
        ? (collaboratorObject.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addCollaboratorObjectStructData(
  Map<String, dynamic> firestoreData,
  CollaboratorObjectStruct? collaboratorObject,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (collaboratorObject == null) {
    return;
  }
  if (collaboratorObject.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && collaboratorObject.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final collaboratorObjectData =
      getCollaboratorObjectFirestoreData(collaboratorObject, forFieldValue);
  final nestedData =
      collaboratorObjectData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = collaboratorObject.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getCollaboratorObjectFirestoreData(
  CollaboratorObjectStruct? collaboratorObject, [
  bool forFieldValue = false,
]) {
  if (collaboratorObject == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(
      CollaboratorObjectStruct.serializer, collaboratorObject);

  // Add any Firestore field values
  collaboratorObject.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCollaboratorObjectListFirestoreData(
  List<CollaboratorObjectStruct>? collaboratorObjects,
) =>
    collaboratorObjects
        ?.map((c) => getCollaboratorObjectFirestoreData(c, true))
        .toList() ??
    [];
