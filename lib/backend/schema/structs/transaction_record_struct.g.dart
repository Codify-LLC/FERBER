// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_record_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TransactionRecordStruct> _$transactionRecordStructSerializer =
    new _$TransactionRecordStructSerializer();

class _$TransactionRecordStructSerializer
    implements StructuredSerializer<TransactionRecordStruct> {
  @override
  final Iterable<Type> types = const [
    TransactionRecordStruct,
    _$TransactionRecordStruct
  ];
  @override
  final String wireName = 'TransactionRecordStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TransactionRecordStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'fields',
      serializers.serialize(object.fields,
          specifiedType: const FullType(TransactionRecordFieldsStruct)),
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('createdTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  TransactionRecordStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionRecordStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdTime':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'fields':
          result.fields.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TransactionRecordFieldsStruct))!
              as TransactionRecordFieldsStruct);
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

class _$TransactionRecordStruct extends TransactionRecordStruct {
  @override
  final String? id;
  @override
  final DateTime? createdTime;
  @override
  final TransactionRecordFieldsStruct fields;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$TransactionRecordStruct(
          [void Function(TransactionRecordStructBuilder)? updates]) =>
      (new TransactionRecordStructBuilder()..update(updates))._build();

  _$TransactionRecordStruct._(
      {this.id,
      this.createdTime,
      required this.fields,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        fields, r'TransactionRecordStruct', 'fields');
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'TransactionRecordStruct', 'firestoreUtilData');
  }

  @override
  TransactionRecordStruct rebuild(
          void Function(TransactionRecordStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionRecordStructBuilder toBuilder() =>
      new TransactionRecordStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionRecordStruct &&
        id == other.id &&
        createdTime == other.createdTime &&
        fields == other.fields &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), createdTime.hashCode), fields.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionRecordStruct')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('fields', fields)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class TransactionRecordStructBuilder
    implements
        Builder<TransactionRecordStruct, TransactionRecordStructBuilder> {
  _$TransactionRecordStruct? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  TransactionRecordFieldsStructBuilder? _fields;
  TransactionRecordFieldsStructBuilder get fields =>
      _$this._fields ??= new TransactionRecordFieldsStructBuilder();
  set fields(TransactionRecordFieldsStructBuilder? fields) =>
      _$this._fields = fields;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  TransactionRecordStructBuilder() {
    TransactionRecordStruct._initializeBuilder(this);
  }

  TransactionRecordStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _createdTime = $v.createdTime;
      _fields = $v.fields.toBuilder();
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionRecordStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionRecordStruct;
  }

  @override
  void update(void Function(TransactionRecordStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionRecordStruct build() => _build();

  _$TransactionRecordStruct _build() {
    _$TransactionRecordStruct _$result;
    try {
      _$result = _$v ??
          new _$TransactionRecordStruct._(
              id: id,
              createdTime: createdTime,
              fields: fields.build(),
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData,
                  r'TransactionRecordStruct',
                  'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fields';
        fields.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TransactionRecordStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
