// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collaborator_object_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CollaboratorObjectStruct> _$collaboratorObjectStructSerializer =
    new _$CollaboratorObjectStructSerializer();

class _$CollaboratorObjectStructSerializer
    implements StructuredSerializer<CollaboratorObjectStruct> {
  @override
  final Iterable<Type> types = const [
    CollaboratorObjectStruct,
    _$CollaboratorObjectStruct
  ];
  @override
  final String wireName = 'CollaboratorObjectStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CollaboratorObjectStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
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
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CollaboratorObjectStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CollaboratorObjectStructBuilder();

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
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$CollaboratorObjectStruct extends CollaboratorObjectStruct {
  @override
  final String? id;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$CollaboratorObjectStruct(
          [void Function(CollaboratorObjectStructBuilder)? updates]) =>
      (new CollaboratorObjectStructBuilder()..update(updates))._build();

  _$CollaboratorObjectStruct._(
      {this.id, this.email, this.name, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'CollaboratorObjectStruct', 'firestoreUtilData');
  }

  @override
  CollaboratorObjectStruct rebuild(
          void Function(CollaboratorObjectStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollaboratorObjectStructBuilder toBuilder() =>
      new CollaboratorObjectStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollaboratorObjectStruct &&
        id == other.id &&
        email == other.email &&
        name == other.name &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, id.hashCode), email.hashCode), name.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CollaboratorObjectStruct')
          ..add('id', id)
          ..add('email', email)
          ..add('name', name)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class CollaboratorObjectStructBuilder
    implements
        Builder<CollaboratorObjectStruct, CollaboratorObjectStructBuilder> {
  _$CollaboratorObjectStruct? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  CollaboratorObjectStructBuilder() {
    CollaboratorObjectStruct._initializeBuilder(this);
  }

  CollaboratorObjectStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _email = $v.email;
      _name = $v.name;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollaboratorObjectStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CollaboratorObjectStruct;
  }

  @override
  void update(void Function(CollaboratorObjectStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CollaboratorObjectStruct build() => _build();

  _$CollaboratorObjectStruct _build() {
    final _$result = _$v ??
        new _$CollaboratorObjectStruct._(
            id: id,
            email: email,
            name: name,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData,
                r'CollaboratorObjectStruct',
                'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
