// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_record_fields_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TransactionRecordFieldsStruct>
    _$transactionRecordFieldsStructSerializer =
    new _$TransactionRecordFieldsStructSerializer();

class _$TransactionRecordFieldsStructSerializer
    implements StructuredSerializer<TransactionRecordFieldsStruct> {
  @override
  final Iterable<Type> types = const [
    TransactionRecordFieldsStruct,
    _$TransactionRecordFieldsStruct
  ];
  @override
  final String wireName = 'TransactionRecordFieldsStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TransactionRecordFieldsStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'TransactionCoordinatorTC',
      serializers.serialize(object.transactionCoordinatorTC,
          specifiedType: const FullType(
              BuiltList, const [const FullType(CollaboratorObjectStruct)])),
      'PreApprovalorProofofFundsPOF',
      serializers.serialize(object.preApprovalorProofofFundsPOF,
          specifiedType: const FullType(
              BuiltList, const [const FullType(AttachmentsStruct)])),
      'PropertyImage',
      serializers.serialize(object.propertyImage,
          specifiedType: const FullType(
              BuiltList, const [const FullType(AttachmentsStruct)])),
      'BrokerSynopsis',
      serializers.serialize(object.brokerSynopsis,
          specifiedType: const FullType(
              BuiltList, const [const FullType(AttachmentsStruct)])),
      'MiscDocs',
      serializers.serialize(object.miscDocs,
          specifiedType: const FullType(
              BuiltList, const [const FullType(AttachmentsStruct)])),
      'ArialView',
      serializers.serialize(object.arialView,
          specifiedType: const FullType(
              BuiltList, const [const FullType(AttachmentsStruct)])),
      'LastModifiedBy',
      serializers.serialize(object.lastModifiedBy,
          specifiedType: const FullType(CollaboratorObjectStruct)),
      'AgentImageTest1',
      serializers.serialize(object.agentImageTest1,
          specifiedType: const FullType(
              BuiltList, const [const FullType(AttachmentsStruct)])),
      'Brokerage',
      serializers.serialize(object.brokerage,
          specifiedType: const FullType(
              BuiltList, const [const FullType(AttachmentsStruct)])),
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.address;
    if (value != null) {
      result
        ..add('Address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('Status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.closingDate;
    if (value != null) {
      result
        ..add('ClosingDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.participantsOurAgent;
    if (value != null) {
      result
        ..add('ParticipantsOurAgent')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.coOpClient;
    if (value != null) {
      result
        ..add('Co-opClient')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.lender;
    if (value != null) {
      result
        ..add('Lender')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('Type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.purchasePrice;
    if (value != null) {
      result
        ..add('PurchasePrice')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.mapCoordinates;
    if (value != null) {
      result
        ..add('MapCoordinates')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coOpAgent;
    if (value != null) {
      result
        ..add('Co-opAgent')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.tCFee;
    if (value != null) {
      result
        ..add('TCFee')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.commissionOurSide;
    if (value != null) {
      result
        ..add('commissionOurSide')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.escrowAmount;
    if (value != null) {
      result
        ..add('EscrowAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.inspectionDays;
    if (value != null) {
      result
        ..add('InspectionDays')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.inspections;
    if (value != null) {
      result
        ..add('Inspections')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.loanApprovalPeriod;
    if (value != null) {
      result
        ..add('LoanApprovalPeriod')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.inspectionTime0000PM;
    if (value != null) {
      result
        ..add('InspectionTime0000PM')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notesDocuments;
    if (value != null) {
      result
        ..add('NotesDocuments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.booked;
    if (value != null) {
      result
        ..add('Booked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.agentPay;
    if (value != null) {
      result
        ..add('AgentPay')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.lastModified;
    if (value != null) {
      result
        ..add('LastModified')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  TransactionRecordFieldsStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionRecordFieldsStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ClosingDate':
          result.closingDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'ParticipantsOurAgent':
          result.participantsOurAgent.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Co-opClient':
          result.coOpClient.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Lender':
          result.lender.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'TransactionCoordinatorTC':
          result.transactionCoordinatorTC.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(CollaboratorObjectStruct)
              ]))! as BuiltList<Object?>);
          break;
        case 'PurchasePrice':
          result.purchasePrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'PreApprovalorProofofFundsPOF':
          result.preApprovalorProofofFundsPOF.replace(serializers.deserialize(
                  value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AttachmentsStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'MapCoordinates':
          result.mapCoordinates = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Co-opAgent':
          result.coOpAgent.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'PropertyImage':
          result.propertyImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AttachmentsStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'TCFee':
          result.tCFee = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'commissionOurSide':
          result.commissionOurSide = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'EscrowAmount':
          result.escrowAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'InspectionDays':
          result.inspectionDays = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Inspections':
          result.inspections = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'BrokerSynopsis':
          result.brokerSynopsis.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AttachmentsStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'MiscDocs':
          result.miscDocs.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AttachmentsStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'LoanApprovalPeriod':
          result.loanApprovalPeriod = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'InspectionTime0000PM':
          result.inspectionTime0000PM = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'NotesDocuments':
          result.notesDocuments = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ArialView':
          result.arialView.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AttachmentsStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'Booked':
          result.booked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'AgentPay':
          result.agentPay = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'LastModified':
          result.lastModified = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'LastModifiedBy':
          result.lastModifiedBy.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CollaboratorObjectStruct))!
              as CollaboratorObjectStruct);
          break;
        case 'AgentImageTest1':
          result.agentImageTest1.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AttachmentsStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'Brokerage':
          result.brokerage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AttachmentsStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$TransactionRecordFieldsStruct extends TransactionRecordFieldsStruct {
  @override
  final String? address;
  @override
  final String? status;
  @override
  final DateTime? closingDate;
  @override
  final BuiltList<String>? participantsOurAgent;
  @override
  final BuiltList<String>? coOpClient;
  @override
  final BuiltList<String>? lender;
  @override
  final String? type;
  @override
  final BuiltList<CollaboratorObjectStruct> transactionCoordinatorTC;
  @override
  final int? purchasePrice;
  @override
  final BuiltList<AttachmentsStruct> preApprovalorProofofFundsPOF;
  @override
  final String? mapCoordinates;
  @override
  final BuiltList<String>? coOpAgent;
  @override
  final BuiltList<AttachmentsStruct> propertyImage;
  @override
  final int? tCFee;
  @override
  final double? commissionOurSide;
  @override
  final int? escrowAmount;
  @override
  final int? inspectionDays;
  @override
  final String? inspections;
  @override
  final BuiltList<AttachmentsStruct> brokerSynopsis;
  @override
  final BuiltList<AttachmentsStruct> miscDocs;
  @override
  final String? loanApprovalPeriod;
  @override
  final String? inspectionTime0000PM;
  @override
  final String? notesDocuments;
  @override
  final BuiltList<AttachmentsStruct> arialView;
  @override
  final bool? booked;
  @override
  final int? agentPay;
  @override
  final DateTime? lastModified;
  @override
  final CollaboratorObjectStruct lastModifiedBy;
  @override
  final BuiltList<AttachmentsStruct> agentImageTest1;
  @override
  final BuiltList<AttachmentsStruct> brokerage;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$TransactionRecordFieldsStruct(
          [void Function(TransactionRecordFieldsStructBuilder)? updates]) =>
      (new TransactionRecordFieldsStructBuilder()..update(updates))._build();

  _$TransactionRecordFieldsStruct._(
      {this.address,
      this.status,
      this.closingDate,
      this.participantsOurAgent,
      this.coOpClient,
      this.lender,
      this.type,
      required this.transactionCoordinatorTC,
      this.purchasePrice,
      required this.preApprovalorProofofFundsPOF,
      this.mapCoordinates,
      this.coOpAgent,
      required this.propertyImage,
      this.tCFee,
      this.commissionOurSide,
      this.escrowAmount,
      this.inspectionDays,
      this.inspections,
      required this.brokerSynopsis,
      required this.miscDocs,
      this.loanApprovalPeriod,
      this.inspectionTime0000PM,
      this.notesDocuments,
      required this.arialView,
      this.booked,
      this.agentPay,
      this.lastModified,
      required this.lastModifiedBy,
      required this.agentImageTest1,
      required this.brokerage,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(transactionCoordinatorTC,
        r'TransactionRecordFieldsStruct', 'transactionCoordinatorTC');
    BuiltValueNullFieldError.checkNotNull(preApprovalorProofofFundsPOF,
        r'TransactionRecordFieldsStruct', 'preApprovalorProofofFundsPOF');
    BuiltValueNullFieldError.checkNotNull(
        propertyImage, r'TransactionRecordFieldsStruct', 'propertyImage');
    BuiltValueNullFieldError.checkNotNull(
        brokerSynopsis, r'TransactionRecordFieldsStruct', 'brokerSynopsis');
    BuiltValueNullFieldError.checkNotNull(
        miscDocs, r'TransactionRecordFieldsStruct', 'miscDocs');
    BuiltValueNullFieldError.checkNotNull(
        arialView, r'TransactionRecordFieldsStruct', 'arialView');
    BuiltValueNullFieldError.checkNotNull(
        lastModifiedBy, r'TransactionRecordFieldsStruct', 'lastModifiedBy');
    BuiltValueNullFieldError.checkNotNull(
        agentImageTest1, r'TransactionRecordFieldsStruct', 'agentImageTest1');
    BuiltValueNullFieldError.checkNotNull(
        brokerage, r'TransactionRecordFieldsStruct', 'brokerage');
    BuiltValueNullFieldError.checkNotNull(firestoreUtilData,
        r'TransactionRecordFieldsStruct', 'firestoreUtilData');
  }

  @override
  TransactionRecordFieldsStruct rebuild(
          void Function(TransactionRecordFieldsStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionRecordFieldsStructBuilder toBuilder() =>
      new TransactionRecordFieldsStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionRecordFieldsStruct &&
        address == other.address &&
        status == other.status &&
        closingDate == other.closingDate &&
        participantsOurAgent == other.participantsOurAgent &&
        coOpClient == other.coOpClient &&
        lender == other.lender &&
        type == other.type &&
        transactionCoordinatorTC == other.transactionCoordinatorTC &&
        purchasePrice == other.purchasePrice &&
        preApprovalorProofofFundsPOF == other.preApprovalorProofofFundsPOF &&
        mapCoordinates == other.mapCoordinates &&
        coOpAgent == other.coOpAgent &&
        propertyImage == other.propertyImage &&
        tCFee == other.tCFee &&
        commissionOurSide == other.commissionOurSide &&
        escrowAmount == other.escrowAmount &&
        inspectionDays == other.inspectionDays &&
        inspections == other.inspections &&
        brokerSynopsis == other.brokerSynopsis &&
        miscDocs == other.miscDocs &&
        loanApprovalPeriod == other.loanApprovalPeriod &&
        inspectionTime0000PM == other.inspectionTime0000PM &&
        notesDocuments == other.notesDocuments &&
        arialView == other.arialView &&
        booked == other.booked &&
        agentPay == other.agentPay &&
        lastModified == other.lastModified &&
        lastModifiedBy == other.lastModifiedBy &&
        agentImageTest1 == other.agentImageTest1 &&
        brokerage == other.brokerage &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, address.hashCode), status.hashCode), closingDate.hashCode), participantsOurAgent.hashCode), coOpClient.hashCode), lender.hashCode), type.hashCode), transactionCoordinatorTC.hashCode), purchasePrice.hashCode), preApprovalorProofofFundsPOF.hashCode), mapCoordinates.hashCode), coOpAgent.hashCode),
                                                                                propertyImage.hashCode),
                                                                            tCFee.hashCode),
                                                                        commissionOurSide.hashCode),
                                                                    escrowAmount.hashCode),
                                                                inspectionDays.hashCode),
                                                            inspections.hashCode),
                                                        brokerSynopsis.hashCode),
                                                    miscDocs.hashCode),
                                                loanApprovalPeriod.hashCode),
                                            inspectionTime0000PM.hashCode),
                                        notesDocuments.hashCode),
                                    arialView.hashCode),
                                booked.hashCode),
                            agentPay.hashCode),
                        lastModified.hashCode),
                    lastModifiedBy.hashCode),
                agentImageTest1.hashCode),
            brokerage.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionRecordFieldsStruct')
          ..add('address', address)
          ..add('status', status)
          ..add('closingDate', closingDate)
          ..add('participantsOurAgent', participantsOurAgent)
          ..add('coOpClient', coOpClient)
          ..add('lender', lender)
          ..add('type', type)
          ..add('transactionCoordinatorTC', transactionCoordinatorTC)
          ..add('purchasePrice', purchasePrice)
          ..add('preApprovalorProofofFundsPOF', preApprovalorProofofFundsPOF)
          ..add('mapCoordinates', mapCoordinates)
          ..add('coOpAgent', coOpAgent)
          ..add('propertyImage', propertyImage)
          ..add('tCFee', tCFee)
          ..add('commissionOurSide', commissionOurSide)
          ..add('escrowAmount', escrowAmount)
          ..add('inspectionDays', inspectionDays)
          ..add('inspections', inspections)
          ..add('brokerSynopsis', brokerSynopsis)
          ..add('miscDocs', miscDocs)
          ..add('loanApprovalPeriod', loanApprovalPeriod)
          ..add('inspectionTime0000PM', inspectionTime0000PM)
          ..add('notesDocuments', notesDocuments)
          ..add('arialView', arialView)
          ..add('booked', booked)
          ..add('agentPay', agentPay)
          ..add('lastModified', lastModified)
          ..add('lastModifiedBy', lastModifiedBy)
          ..add('agentImageTest1', agentImageTest1)
          ..add('brokerage', brokerage)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class TransactionRecordFieldsStructBuilder
    implements
        Builder<TransactionRecordFieldsStruct,
            TransactionRecordFieldsStructBuilder> {
  _$TransactionRecordFieldsStruct? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DateTime? _closingDate;
  DateTime? get closingDate => _$this._closingDate;
  set closingDate(DateTime? closingDate) => _$this._closingDate = closingDate;

  ListBuilder<String>? _participantsOurAgent;
  ListBuilder<String> get participantsOurAgent =>
      _$this._participantsOurAgent ??= new ListBuilder<String>();
  set participantsOurAgent(ListBuilder<String>? participantsOurAgent) =>
      _$this._participantsOurAgent = participantsOurAgent;

  ListBuilder<String>? _coOpClient;
  ListBuilder<String> get coOpClient =>
      _$this._coOpClient ??= new ListBuilder<String>();
  set coOpClient(ListBuilder<String>? coOpClient) =>
      _$this._coOpClient = coOpClient;

  ListBuilder<String>? _lender;
  ListBuilder<String> get lender =>
      _$this._lender ??= new ListBuilder<String>();
  set lender(ListBuilder<String>? lender) => _$this._lender = lender;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ListBuilder<CollaboratorObjectStruct>? _transactionCoordinatorTC;
  ListBuilder<CollaboratorObjectStruct> get transactionCoordinatorTC =>
      _$this._transactionCoordinatorTC ??=
          new ListBuilder<CollaboratorObjectStruct>();
  set transactionCoordinatorTC(
          ListBuilder<CollaboratorObjectStruct>? transactionCoordinatorTC) =>
      _$this._transactionCoordinatorTC = transactionCoordinatorTC;

  int? _purchasePrice;
  int? get purchasePrice => _$this._purchasePrice;
  set purchasePrice(int? purchasePrice) =>
      _$this._purchasePrice = purchasePrice;

  ListBuilder<AttachmentsStruct>? _preApprovalorProofofFundsPOF;
  ListBuilder<AttachmentsStruct> get preApprovalorProofofFundsPOF =>
      _$this._preApprovalorProofofFundsPOF ??=
          new ListBuilder<AttachmentsStruct>();
  set preApprovalorProofofFundsPOF(
          ListBuilder<AttachmentsStruct>? preApprovalorProofofFundsPOF) =>
      _$this._preApprovalorProofofFundsPOF = preApprovalorProofofFundsPOF;

  String? _mapCoordinates;
  String? get mapCoordinates => _$this._mapCoordinates;
  set mapCoordinates(String? mapCoordinates) =>
      _$this._mapCoordinates = mapCoordinates;

  ListBuilder<String>? _coOpAgent;
  ListBuilder<String> get coOpAgent =>
      _$this._coOpAgent ??= new ListBuilder<String>();
  set coOpAgent(ListBuilder<String>? coOpAgent) =>
      _$this._coOpAgent = coOpAgent;

  ListBuilder<AttachmentsStruct>? _propertyImage;
  ListBuilder<AttachmentsStruct> get propertyImage =>
      _$this._propertyImage ??= new ListBuilder<AttachmentsStruct>();
  set propertyImage(ListBuilder<AttachmentsStruct>? propertyImage) =>
      _$this._propertyImage = propertyImage;

  int? _tCFee;
  int? get tCFee => _$this._tCFee;
  set tCFee(int? tCFee) => _$this._tCFee = tCFee;

  double? _commissionOurSide;
  double? get commissionOurSide => _$this._commissionOurSide;
  set commissionOurSide(double? commissionOurSide) =>
      _$this._commissionOurSide = commissionOurSide;

  int? _escrowAmount;
  int? get escrowAmount => _$this._escrowAmount;
  set escrowAmount(int? escrowAmount) => _$this._escrowAmount = escrowAmount;

  int? _inspectionDays;
  int? get inspectionDays => _$this._inspectionDays;
  set inspectionDays(int? inspectionDays) =>
      _$this._inspectionDays = inspectionDays;

  String? _inspections;
  String? get inspections => _$this._inspections;
  set inspections(String? inspections) => _$this._inspections = inspections;

  ListBuilder<AttachmentsStruct>? _brokerSynopsis;
  ListBuilder<AttachmentsStruct> get brokerSynopsis =>
      _$this._brokerSynopsis ??= new ListBuilder<AttachmentsStruct>();
  set brokerSynopsis(ListBuilder<AttachmentsStruct>? brokerSynopsis) =>
      _$this._brokerSynopsis = brokerSynopsis;

  ListBuilder<AttachmentsStruct>? _miscDocs;
  ListBuilder<AttachmentsStruct> get miscDocs =>
      _$this._miscDocs ??= new ListBuilder<AttachmentsStruct>();
  set miscDocs(ListBuilder<AttachmentsStruct>? miscDocs) =>
      _$this._miscDocs = miscDocs;

  String? _loanApprovalPeriod;
  String? get loanApprovalPeriod => _$this._loanApprovalPeriod;
  set loanApprovalPeriod(String? loanApprovalPeriod) =>
      _$this._loanApprovalPeriod = loanApprovalPeriod;

  String? _inspectionTime0000PM;
  String? get inspectionTime0000PM => _$this._inspectionTime0000PM;
  set inspectionTime0000PM(String? inspectionTime0000PM) =>
      _$this._inspectionTime0000PM = inspectionTime0000PM;

  String? _notesDocuments;
  String? get notesDocuments => _$this._notesDocuments;
  set notesDocuments(String? notesDocuments) =>
      _$this._notesDocuments = notesDocuments;

  ListBuilder<AttachmentsStruct>? _arialView;
  ListBuilder<AttachmentsStruct> get arialView =>
      _$this._arialView ??= new ListBuilder<AttachmentsStruct>();
  set arialView(ListBuilder<AttachmentsStruct>? arialView) =>
      _$this._arialView = arialView;

  bool? _booked;
  bool? get booked => _$this._booked;
  set booked(bool? booked) => _$this._booked = booked;

  int? _agentPay;
  int? get agentPay => _$this._agentPay;
  set agentPay(int? agentPay) => _$this._agentPay = agentPay;

  DateTime? _lastModified;
  DateTime? get lastModified => _$this._lastModified;
  set lastModified(DateTime? lastModified) =>
      _$this._lastModified = lastModified;

  CollaboratorObjectStructBuilder? _lastModifiedBy;
  CollaboratorObjectStructBuilder get lastModifiedBy =>
      _$this._lastModifiedBy ??= new CollaboratorObjectStructBuilder();
  set lastModifiedBy(CollaboratorObjectStructBuilder? lastModifiedBy) =>
      _$this._lastModifiedBy = lastModifiedBy;

  ListBuilder<AttachmentsStruct>? _agentImageTest1;
  ListBuilder<AttachmentsStruct> get agentImageTest1 =>
      _$this._agentImageTest1 ??= new ListBuilder<AttachmentsStruct>();
  set agentImageTest1(ListBuilder<AttachmentsStruct>? agentImageTest1) =>
      _$this._agentImageTest1 = agentImageTest1;

  ListBuilder<AttachmentsStruct>? _brokerage;
  ListBuilder<AttachmentsStruct> get brokerage =>
      _$this._brokerage ??= new ListBuilder<AttachmentsStruct>();
  set brokerage(ListBuilder<AttachmentsStruct>? brokerage) =>
      _$this._brokerage = brokerage;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  TransactionRecordFieldsStructBuilder() {
    TransactionRecordFieldsStruct._initializeBuilder(this);
  }

  TransactionRecordFieldsStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _status = $v.status;
      _closingDate = $v.closingDate;
      _participantsOurAgent = $v.participantsOurAgent?.toBuilder();
      _coOpClient = $v.coOpClient?.toBuilder();
      _lender = $v.lender?.toBuilder();
      _type = $v.type;
      _transactionCoordinatorTC = $v.transactionCoordinatorTC.toBuilder();
      _purchasePrice = $v.purchasePrice;
      _preApprovalorProofofFundsPOF =
          $v.preApprovalorProofofFundsPOF.toBuilder();
      _mapCoordinates = $v.mapCoordinates;
      _coOpAgent = $v.coOpAgent?.toBuilder();
      _propertyImage = $v.propertyImage.toBuilder();
      _tCFee = $v.tCFee;
      _commissionOurSide = $v.commissionOurSide;
      _escrowAmount = $v.escrowAmount;
      _inspectionDays = $v.inspectionDays;
      _inspections = $v.inspections;
      _brokerSynopsis = $v.brokerSynopsis.toBuilder();
      _miscDocs = $v.miscDocs.toBuilder();
      _loanApprovalPeriod = $v.loanApprovalPeriod;
      _inspectionTime0000PM = $v.inspectionTime0000PM;
      _notesDocuments = $v.notesDocuments;
      _arialView = $v.arialView.toBuilder();
      _booked = $v.booked;
      _agentPay = $v.agentPay;
      _lastModified = $v.lastModified;
      _lastModifiedBy = $v.lastModifiedBy.toBuilder();
      _agentImageTest1 = $v.agentImageTest1.toBuilder();
      _brokerage = $v.brokerage.toBuilder();
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionRecordFieldsStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionRecordFieldsStruct;
  }

  @override
  void update(void Function(TransactionRecordFieldsStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionRecordFieldsStruct build() => _build();

  _$TransactionRecordFieldsStruct _build() {
    _$TransactionRecordFieldsStruct _$result;
    try {
      _$result = _$v ??
          new _$TransactionRecordFieldsStruct._(
              address: address,
              status: status,
              closingDate: closingDate,
              participantsOurAgent: _participantsOurAgent?.build(),
              coOpClient: _coOpClient?.build(),
              lender: _lender?.build(),
              type: type,
              transactionCoordinatorTC: transactionCoordinatorTC.build(),
              purchasePrice: purchasePrice,
              preApprovalorProofofFundsPOF:
                  preApprovalorProofofFundsPOF.build(),
              mapCoordinates: mapCoordinates,
              coOpAgent: _coOpAgent?.build(),
              propertyImage: propertyImage.build(),
              tCFee: tCFee,
              commissionOurSide: commissionOurSide,
              escrowAmount: escrowAmount,
              inspectionDays: inspectionDays,
              inspections: inspections,
              brokerSynopsis: brokerSynopsis.build(),
              miscDocs: miscDocs.build(),
              loanApprovalPeriod: loanApprovalPeriod,
              inspectionTime0000PM: inspectionTime0000PM,
              notesDocuments: notesDocuments,
              arialView: arialView.build(),
              booked: booked,
              agentPay: agentPay,
              lastModified: lastModified,
              lastModifiedBy: lastModifiedBy.build(),
              agentImageTest1: agentImageTest1.build(),
              brokerage: brokerage.build(),
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData,
                  r'TransactionRecordFieldsStruct',
                  'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'participantsOurAgent';
        _participantsOurAgent?.build();
        _$failedField = 'coOpClient';
        _coOpClient?.build();
        _$failedField = 'lender';
        _lender?.build();

        _$failedField = 'transactionCoordinatorTC';
        transactionCoordinatorTC.build();

        _$failedField = 'preApprovalorProofofFundsPOF';
        preApprovalorProofofFundsPOF.build();

        _$failedField = 'coOpAgent';
        _coOpAgent?.build();
        _$failedField = 'propertyImage';
        propertyImage.build();

        _$failedField = 'brokerSynopsis';
        brokerSynopsis.build();
        _$failedField = 'miscDocs';
        miscDocs.build();

        _$failedField = 'arialView';
        arialView.build();

        _$failedField = 'lastModifiedBy';
        lastModifiedBy.build();
        _$failedField = 'agentImageTest1';
        agentImageTest1.build();
        _$failedField = 'brokerage';
        brokerage.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransactionRecordFieldsStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
