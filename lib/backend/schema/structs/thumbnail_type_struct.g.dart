// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thumbnail_type_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ThumbnailTypeStruct> _$thumbnailTypeStructSerializer =
    new _$ThumbnailTypeStructSerializer();

class _$ThumbnailTypeStructSerializer
    implements StructuredSerializer<ThumbnailTypeStruct> {
  @override
  final Iterable<Type> types = const [
    ThumbnailTypeStruct,
    _$ThumbnailTypeStruct
  ];
  @override
  final String wireName = 'ThumbnailTypeStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ThumbnailTypeStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.width;
    if (value != null) {
      result
        ..add('width')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.height;
    if (value != null) {
      result
        ..add('height')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ThumbnailTypeStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ThumbnailTypeStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$ThumbnailTypeStruct extends ThumbnailTypeStruct {
  @override
  final String? url;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ThumbnailTypeStruct(
          [void Function(ThumbnailTypeStructBuilder)? updates]) =>
      (new ThumbnailTypeStructBuilder()..update(updates))._build();

  _$ThumbnailTypeStruct._(
      {this.url, this.width, this.height, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ThumbnailTypeStruct', 'firestoreUtilData');
  }

  @override
  ThumbnailTypeStruct rebuild(
          void Function(ThumbnailTypeStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThumbnailTypeStructBuilder toBuilder() =>
      new ThumbnailTypeStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThumbnailTypeStruct &&
        url == other.url &&
        width == other.width &&
        height == other.height &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, url.hashCode), width.hashCode), height.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ThumbnailTypeStruct')
          ..add('url', url)
          ..add('width', width)
          ..add('height', height)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ThumbnailTypeStructBuilder
    implements Builder<ThumbnailTypeStruct, ThumbnailTypeStructBuilder> {
  _$ThumbnailTypeStruct? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ThumbnailTypeStructBuilder() {
    ThumbnailTypeStruct._initializeBuilder(this);
  }

  ThumbnailTypeStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _width = $v.width;
      _height = $v.height;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ThumbnailTypeStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ThumbnailTypeStruct;
  }

  @override
  void update(void Function(ThumbnailTypeStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ThumbnailTypeStruct build() => _build();

  _$ThumbnailTypeStruct _build() {
    final _$result = _$v ??
        new _$ThumbnailTypeStruct._(
            url: url,
            width: width,
            height: height,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData,
                r'ThumbnailTypeStruct',
                'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
