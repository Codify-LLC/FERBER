import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'transaction_record_struct.g.dart';

abstract class TransactionRecordStruct
    implements Built<TransactionRecordStruct, TransactionRecordStructBuilder> {
  static Serializer<TransactionRecordStruct> get serializer =>
      _$transactionRecordStructSerializer;

  String? get id;

  DateTime? get createdTime;

  TransactionRecordFieldsStruct get fields;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(TransactionRecordStructBuilder builder) =>
      builder
        ..id = ''
        ..fields = TransactionRecordFieldsStructBuilder()
        ..firestoreUtilData = FirestoreUtilData();

  TransactionRecordStruct._();
  factory TransactionRecordStruct(
          [void Function(TransactionRecordStructBuilder) updates]) =
      _$TransactionRecordStruct;
}

TransactionRecordStruct createTransactionRecordStruct({
  String? id,
  DateTime? createdTime,
  TransactionRecordFieldsStruct? fields,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TransactionRecordStruct(
      (t) => t
        ..id = id
        ..createdTime = createdTime
        ..fields = fields?.toBuilder() ?? TransactionRecordFieldsStructBuilder()
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

TransactionRecordStruct? updateTransactionRecordStruct(
  TransactionRecordStruct? transactionRecord, {
  bool clearUnsetFields = true,
}) =>
    transactionRecord != null
        ? (transactionRecord.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addTransactionRecordStructData(
  Map<String, dynamic> firestoreData,
  TransactionRecordStruct? transactionRecord,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (transactionRecord == null) {
    return;
  }
  if (transactionRecord.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && transactionRecord.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final transactionRecordData =
      getTransactionRecordFirestoreData(transactionRecord, forFieldValue);
  final nestedData =
      transactionRecordData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = transactionRecord.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getTransactionRecordFirestoreData(
  TransactionRecordStruct? transactionRecord, [
  bool forFieldValue = false,
]) {
  if (transactionRecord == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(
      TransactionRecordStruct.serializer, transactionRecord);

  // Handle nested data for "fields" field.
  addTransactionRecordFieldsStructData(
      firestoreData, transactionRecord.fields, 'fields', forFieldValue);

  // Add any Firestore field values
  transactionRecord.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTransactionRecordListFirestoreData(
  List<TransactionRecordStruct>? transactionRecords,
) =>
    transactionRecords
        ?.map((t) => getTransactionRecordFirestoreData(t, true))
        .toList() ??
    [];
