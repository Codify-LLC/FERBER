import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'transaction_record_fields_struct.g.dart';

abstract class TransactionRecordFieldsStruct
    implements
        Built<TransactionRecordFieldsStruct,
            TransactionRecordFieldsStructBuilder> {
  static Serializer<TransactionRecordFieldsStruct> get serializer =>
      _$transactionRecordFieldsStructSerializer;

  @BuiltValueField(wireName: 'Address')
  String? get address;

  @BuiltValueField(wireName: 'Status')
  String? get status;

  @BuiltValueField(wireName: 'ClosingDate')
  DateTime? get closingDate;

  @BuiltValueField(wireName: 'ParticipantsOurAgent')
  BuiltList<String>? get participantsOurAgent;

  @BuiltValueField(wireName: 'Co-opClient')
  BuiltList<String>? get coOpClient;

  @BuiltValueField(wireName: 'Lender')
  BuiltList<String>? get lender;

  @BuiltValueField(wireName: 'Type')
  String? get type;

  @BuiltValueField(wireName: 'TransactionCoordinatorTC')
  BuiltList<CollaboratorObjectStruct> get transactionCoordinatorTC;

  @BuiltValueField(wireName: 'PurchasePrice')
  int? get purchasePrice;

  @BuiltValueField(wireName: 'PreApprovalorProofofFundsPOF')
  BuiltList<AttachmentsStruct> get preApprovalorProofofFundsPOF;

  @BuiltValueField(wireName: 'MapCoordinates')
  String? get mapCoordinates;

  @BuiltValueField(wireName: 'Co-opAgent')
  BuiltList<String>? get coOpAgent;

  @BuiltValueField(wireName: 'PropertyImage')
  BuiltList<AttachmentsStruct> get propertyImage;

  @BuiltValueField(wireName: 'TCFee')
  int? get tCFee;

  double? get commissionOurSide;

  @BuiltValueField(wireName: 'EscrowAmount')
  int? get escrowAmount;

  @BuiltValueField(wireName: 'InspectionDays')
  int? get inspectionDays;

  @BuiltValueField(wireName: 'Inspections')
  String? get inspections;

  @BuiltValueField(wireName: 'BrokerSynopsis')
  BuiltList<AttachmentsStruct> get brokerSynopsis;

  @BuiltValueField(wireName: 'MiscDocs')
  BuiltList<AttachmentsStruct> get miscDocs;

  @BuiltValueField(wireName: 'LoanApprovalPeriod')
  String? get loanApprovalPeriod;

  @BuiltValueField(wireName: 'InspectionTime0000PM')
  String? get inspectionTime0000PM;

  @BuiltValueField(wireName: 'NotesDocuments')
  String? get notesDocuments;

  @BuiltValueField(wireName: 'ArialView')
  BuiltList<AttachmentsStruct> get arialView;

  @BuiltValueField(wireName: 'Booked')
  bool? get booked;

  @BuiltValueField(wireName: 'AgentPay')
  int? get agentPay;

  @BuiltValueField(wireName: 'LastModified')
  DateTime? get lastModified;

  @BuiltValueField(wireName: 'LastModifiedBy')
  CollaboratorObjectStruct get lastModifiedBy;

  @BuiltValueField(wireName: 'AgentImageTest1')
  BuiltList<AttachmentsStruct> get agentImageTest1;

  @BuiltValueField(wireName: 'Brokerage')
  BuiltList<AttachmentsStruct> get brokerage;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(
          TransactionRecordFieldsStructBuilder builder) =>
      builder
        ..address = ''
        ..status = ''
        ..participantsOurAgent = ListBuilder()
        ..coOpClient = ListBuilder()
        ..lender = ListBuilder()
        ..type = ''
        ..transactionCoordinatorTC = ListBuilder()
        ..purchasePrice = 0
        ..preApprovalorProofofFundsPOF = ListBuilder()
        ..mapCoordinates = ''
        ..coOpAgent = ListBuilder()
        ..propertyImage = ListBuilder()
        ..tCFee = 0
        ..commissionOurSide = 0.0
        ..escrowAmount = 0
        ..inspectionDays = 0
        ..inspections = ''
        ..brokerSynopsis = ListBuilder()
        ..miscDocs = ListBuilder()
        ..loanApprovalPeriod = ''
        ..inspectionTime0000PM = ''
        ..notesDocuments = ''
        ..arialView = ListBuilder()
        ..booked = false
        ..agentPay = 0
        ..lastModifiedBy = CollaboratorObjectStructBuilder()
        ..agentImageTest1 = ListBuilder()
        ..brokerage = ListBuilder()
        ..firestoreUtilData = FirestoreUtilData();

  TransactionRecordFieldsStruct._();
  factory TransactionRecordFieldsStruct(
          [void Function(TransactionRecordFieldsStructBuilder) updates]) =
      _$TransactionRecordFieldsStruct;
}

TransactionRecordFieldsStruct createTransactionRecordFieldsStruct({
  String? address,
  String? status,
  DateTime? closingDate,
  String? type,
  int? purchasePrice,
  String? mapCoordinates,
  int? tCFee,
  double? commissionOurSide,
  int? escrowAmount,
  int? inspectionDays,
  String? inspections,
  String? loanApprovalPeriod,
  String? inspectionTime0000PM,
  String? notesDocuments,
  bool? booked,
  int? agentPay,
  DateTime? lastModified,
  CollaboratorObjectStruct? lastModifiedBy,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TransactionRecordFieldsStruct(
      (t) => t
        ..address = address
        ..status = status
        ..closingDate = closingDate
        ..participantsOurAgent = null
        ..coOpClient = null
        ..lender = null
        ..type = type
        ..transactionCoordinatorTC = null
        ..purchasePrice = purchasePrice
        ..preApprovalorProofofFundsPOF = null
        ..mapCoordinates = mapCoordinates
        ..coOpAgent = null
        ..propertyImage = null
        ..tCFee = tCFee
        ..commissionOurSide = commissionOurSide
        ..escrowAmount = escrowAmount
        ..inspectionDays = inspectionDays
        ..inspections = inspections
        ..brokerSynopsis = null
        ..miscDocs = null
        ..loanApprovalPeriod = loanApprovalPeriod
        ..inspectionTime0000PM = inspectionTime0000PM
        ..notesDocuments = notesDocuments
        ..arialView = null
        ..booked = booked
        ..agentPay = agentPay
        ..lastModified = lastModified
        ..lastModifiedBy =
            lastModifiedBy?.toBuilder() ?? CollaboratorObjectStructBuilder()
        ..agentImageTest1 = null
        ..brokerage = null
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

TransactionRecordFieldsStruct? updateTransactionRecordFieldsStruct(
  TransactionRecordFieldsStruct? transactionRecordFields, {
  bool clearUnsetFields = true,
}) =>
    transactionRecordFields != null
        ? (transactionRecordFields.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addTransactionRecordFieldsStructData(
  Map<String, dynamic> firestoreData,
  TransactionRecordFieldsStruct? transactionRecordFields,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (transactionRecordFields == null) {
    return;
  }
  if (transactionRecordFields.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue &&
      transactionRecordFields.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final transactionRecordFieldsData = getTransactionRecordFieldsFirestoreData(
      transactionRecordFields, forFieldValue);
  final nestedData =
      transactionRecordFieldsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = transactionRecordFields.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getTransactionRecordFieldsFirestoreData(
  TransactionRecordFieldsStruct? transactionRecordFields, [
  bool forFieldValue = false,
]) {
  if (transactionRecordFields == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(
      TransactionRecordFieldsStruct.serializer, transactionRecordFields);

  // Handle nested data for "LastModifiedBy" field.
  addCollaboratorObjectStructData(firestoreData,
      transactionRecordFields.lastModifiedBy, 'LastModifiedBy', forFieldValue);

  // Add any Firestore field values
  transactionRecordFields.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTransactionRecordFieldsListFirestoreData(
  List<TransactionRecordFieldsStruct>? transactionRecordFieldss,
) =>
    transactionRecordFieldss
        ?.map((t) => getTransactionRecordFieldsFirestoreData(t, true))
        .toList() ??
    [];
