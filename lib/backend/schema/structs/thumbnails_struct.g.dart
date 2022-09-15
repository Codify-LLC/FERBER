// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thumbnails_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ThumbnailsStruct> _$thumbnailsStructSerializer =
    new _$ThumbnailsStructSerializer();

class _$ThumbnailsStructSerializer
    implements StructuredSerializer<ThumbnailsStruct> {
  @override
  final Iterable<Type> types = const [ThumbnailsStruct, _$ThumbnailsStruct];
  @override
  final String wireName = 'ThumbnailsStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, ThumbnailsStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'small',
      serializers.serialize(object.small,
          specifiedType: const FullType(ThumbnailTypeStruct)),
      'large',
      serializers.serialize(object.large,
          specifiedType: const FullType(ThumbnailTypeStruct)),
      'full',
      serializers.serialize(object.full,
          specifiedType: const FullType(ThumbnailTypeStruct)),
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];

    return result;
  }

  @override
  ThumbnailsStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ThumbnailsStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'small':
          result.small.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ThumbnailTypeStruct))!
              as ThumbnailTypeStruct);
          break;
        case 'large':
          result.large.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ThumbnailTypeStruct))!
              as ThumbnailTypeStruct);
          break;
        case 'full':
          result.full.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ThumbnailTypeStruct))!
              as ThumbnailTypeStruct);
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

class _$ThumbnailsStruct extends ThumbnailsStruct {
  @override
  final ThumbnailTypeStruct small;
  @override
  final ThumbnailTypeStruct large;
  @override
  final ThumbnailTypeStruct full;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ThumbnailsStruct(
          [void Function(ThumbnailsStructBuilder)? updates]) =>
      (new ThumbnailsStructBuilder()..update(updates))._build();

  _$ThumbnailsStruct._(
      {required this.small,
      required this.large,
      required this.full,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(small, r'ThumbnailsStruct', 'small');
    BuiltValueNullFieldError.checkNotNull(large, r'ThumbnailsStruct', 'large');
    BuiltValueNullFieldError.checkNotNull(full, r'ThumbnailsStruct', 'full');
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ThumbnailsStruct', 'firestoreUtilData');
  }

  @override
  ThumbnailsStruct rebuild(void Function(ThumbnailsStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThumbnailsStructBuilder toBuilder() =>
      new ThumbnailsStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThumbnailsStruct &&
        small == other.small &&
        large == other.large &&
        full == other.full &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, small.hashCode), large.hashCode), full.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ThumbnailsStruct')
          ..add('small', small)
          ..add('large', large)
          ..add('full', full)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ThumbnailsStructBuilder
    implements Builder<ThumbnailsStruct, ThumbnailsStructBuilder> {
  _$ThumbnailsStruct? _$v;

  ThumbnailTypeStructBuilder? _small;
  ThumbnailTypeStructBuilder get small =>
      _$this._small ??= new ThumbnailTypeStructBuilder();
  set small(ThumbnailTypeStructBuilder? small) => _$this._small = small;

  ThumbnailTypeStructBuilder? _large;
  ThumbnailTypeStructBuilder get large =>
      _$this._large ??= new ThumbnailTypeStructBuilder();
  set large(ThumbnailTypeStructBuilder? large) => _$this._large = large;

  ThumbnailTypeStructBuilder? _full;
  ThumbnailTypeStructBuilder get full =>
      _$this._full ??= new ThumbnailTypeStructBuilder();
  set full(ThumbnailTypeStructBuilder? full) => _$this._full = full;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ThumbnailsStructBuilder() {
    ThumbnailsStruct._initializeBuilder(this);
  }

  ThumbnailsStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _small = $v.small.toBuilder();
      _large = $v.large.toBuilder();
      _full = $v.full.toBuilder();
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ThumbnailsStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ThumbnailsStruct;
  }

  @override
  void update(void Function(ThumbnailsStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ThumbnailsStruct build() => _build();

  _$ThumbnailsStruct _build() {
    _$ThumbnailsStruct _$result;
    try {
      _$result = _$v ??
          new _$ThumbnailsStruct._(
              small: small.build(),
              large: large.build(),
              full: full.build(),
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData, r'ThumbnailsStruct', 'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'small';
        small.build();
        _$failedField = 'large';
        large.build();
        _$failedField = 'full';
        full.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ThumbnailsStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
