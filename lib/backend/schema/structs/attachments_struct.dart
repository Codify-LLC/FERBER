import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'attachments_struct.g.dart';

abstract class AttachmentsStruct
    implements Built<AttachmentsStruct, AttachmentsStructBuilder> {
  static Serializer<AttachmentsStruct> get serializer =>
      _$attachmentsStructSerializer;

  String? get id;

  String? get url;

  String? get filename;

  String? get size;

  String? get type;

  ThumbnailsStruct get thumbnails;

  int? get width;

  int? get height;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(AttachmentsStructBuilder builder) => builder
    ..id = ''
    ..url = ''
    ..filename = ''
    ..size = ''
    ..type = ''
    ..thumbnails = ThumbnailsStructBuilder()
    ..width = 0
    ..height = 0
    ..firestoreUtilData = FirestoreUtilData();

  AttachmentsStruct._();
  factory AttachmentsStruct([void Function(AttachmentsStructBuilder) updates]) =
      _$AttachmentsStruct;
}

AttachmentsStruct createAttachmentsStruct({
  String? id,
  String? url,
  String? filename,
  String? size,
  String? type,
  ThumbnailsStruct? thumbnails,
  int? width,
  int? height,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AttachmentsStruct(
      (a) => a
        ..id = id
        ..url = url
        ..filename = filename
        ..size = size
        ..type = type
        ..thumbnails = thumbnails?.toBuilder() ?? ThumbnailsStructBuilder()
        ..width = width
        ..height = height
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

AttachmentsStruct? updateAttachmentsStruct(
  AttachmentsStruct? attachments, {
  bool clearUnsetFields = true,
}) =>
    attachments != null
        ? (attachments.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addAttachmentsStructData(
  Map<String, dynamic> firestoreData,
  AttachmentsStruct? attachments,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (attachments == null) {
    return;
  }
  if (attachments.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && attachments.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final attachmentsData =
      getAttachmentsFirestoreData(attachments, forFieldValue);
  final nestedData =
      attachmentsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = attachments.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getAttachmentsFirestoreData(
  AttachmentsStruct? attachments, [
  bool forFieldValue = false,
]) {
  if (attachments == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(AttachmentsStruct.serializer, attachments);

  // Handle nested data for "thumbnails" field.
  addThumbnailsStructData(
      firestoreData, attachments.thumbnails, 'thumbnails', forFieldValue);

  // Add any Firestore field values
  attachments.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAttachmentsListFirestoreData(
  List<AttachmentsStruct>? attachmentss,
) =>
    attachmentss?.map((a) => getAttachmentsFirestoreData(a, true)).toList() ??
    [];
