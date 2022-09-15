// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_modified_by_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LastModifiedByStruct> _$lastModifiedByStructSerializer =
    new _$LastModifiedByStructSerializer();

class _$LastModifiedByStructSerializer
    implements StructuredSerializer<LastModifiedByStruct> {
  @override
  final Iterable<Type> types = const [
    LastModifiedByStruct,
    _$LastModifiedByStruct
  ];
  @override
  final String wireName = 'LastModifiedByStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LastModifiedByStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];

    return result;
  }

  @override
  LastModifiedByStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LastModifiedByStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
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

class _$LastModifiedByStruct extends LastModifiedByStruct {
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$LastModifiedByStruct(
          [void Function(LastModifiedByStructBuilder)? updates]) =>
      (new LastModifiedByStructBuilder()..update(updates))._build();

  _$LastModifiedByStruct._({required this.firestoreUtilData}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'LastModifiedByStruct', 'firestoreUtilData');
  }

  @override
  LastModifiedByStruct rebuild(
          void Function(LastModifiedByStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LastModifiedByStructBuilder toBuilder() =>
      new LastModifiedByStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LastModifiedByStruct &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(0, firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LastModifiedByStruct')
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class LastModifiedByStructBuilder
    implements Builder<LastModifiedByStruct, LastModifiedByStructBuilder> {
  _$LastModifiedByStruct? _$v;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  LastModifiedByStructBuilder() {
    LastModifiedByStruct._initializeBuilder(this);
  }

  LastModifiedByStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LastModifiedByStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LastModifiedByStruct;
  }

  @override
  void update(void Function(LastModifiedByStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LastModifiedByStruct build() => _build();

  _$LastModifiedByStruct _build() {
    final _$result = _$v ??
        new _$LastModifiedByStruct._(
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData,
                r'LastModifiedByStruct',
                'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
