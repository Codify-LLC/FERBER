// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachments_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AttachmentsStruct> _$attachmentsStructSerializer =
    new _$AttachmentsStructSerializer();

class _$AttachmentsStructSerializer
    implements StructuredSerializer<AttachmentsStruct> {
  @override
  final Iterable<Type> types = const [AttachmentsStruct, _$AttachmentsStruct];
  @override
  final String wireName = 'AttachmentsStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, AttachmentsStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'thumbnails',
      serializers.serialize(object.thumbnails,
          specifiedType: const FullType(ThumbnailsStruct)),
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
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.filename;
    if (value != null) {
      result
        ..add('filename')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.size;
    if (value != null) {
      result
        ..add('size')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
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
  AttachmentsStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AttachmentsStructBuilder();

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
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'filename':
          result.filename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thumbnails':
          result.thumbnails.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ThumbnailsStruct))!
              as ThumbnailsStruct);
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

class _$AttachmentsStruct extends AttachmentsStruct {
  @override
  final String? id;
  @override
  final String? url;
  @override
  final String? filename;
  @override
  final String? size;
  @override
  final String? type;
  @override
  final ThumbnailsStruct thumbnails;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$AttachmentsStruct(
          [void Function(AttachmentsStructBuilder)? updates]) =>
      (new AttachmentsStructBuilder()..update(updates))._build();

  _$AttachmentsStruct._(
      {this.id,
      this.url,
      this.filename,
      this.size,
      this.type,
      required this.thumbnails,
      this.width,
      this.height,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        thumbnails, r'AttachmentsStruct', 'thumbnails');
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'AttachmentsStruct', 'firestoreUtilData');
  }

  @override
  AttachmentsStruct rebuild(void Function(AttachmentsStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AttachmentsStructBuilder toBuilder() =>
      new AttachmentsStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AttachmentsStruct &&
        id == other.id &&
        url == other.url &&
        filename == other.filename &&
        size == other.size &&
        type == other.type &&
        thumbnails == other.thumbnails &&
        width == other.width &&
        height == other.height &&
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
                            $jc($jc($jc(0, id.hashCode), url.hashCode),
                                filename.hashCode),
                            size.hashCode),
                        type.hashCode),
                    thumbnails.hashCode),
                width.hashCode),
            height.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AttachmentsStruct')
          ..add('id', id)
          ..add('url', url)
          ..add('filename', filename)
          ..add('size', size)
          ..add('type', type)
          ..add('thumbnails', thumbnails)
          ..add('width', width)
          ..add('height', height)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class AttachmentsStructBuilder
    implements Builder<AttachmentsStruct, AttachmentsStructBuilder> {
  _$AttachmentsStruct? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _filename;
  String? get filename => _$this._filename;
  set filename(String? filename) => _$this._filename = filename;

  String? _size;
  String? get size => _$this._size;
  set size(String? size) => _$this._size = size;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  ThumbnailsStructBuilder? _thumbnails;
  ThumbnailsStructBuilder get thumbnails =>
      _$this._thumbnails ??= new ThumbnailsStructBuilder();
  set thumbnails(ThumbnailsStructBuilder? thumbnails) =>
      _$this._thumbnails = thumbnails;

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

  AttachmentsStructBuilder() {
    AttachmentsStruct._initializeBuilder(this);
  }

  AttachmentsStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _url = $v.url;
      _filename = $v.filename;
      _size = $v.size;
      _type = $v.type;
      _thumbnails = $v.thumbnails.toBuilder();
      _width = $v.width;
      _height = $v.height;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AttachmentsStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AttachmentsStruct;
  }

  @override
  void update(void Function(AttachmentsStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AttachmentsStruct build() => _build();

  _$AttachmentsStruct _build() {
    _$AttachmentsStruct _$result;
    try {
      _$result = _$v ??
          new _$AttachmentsStruct._(
              id: id,
              url: url,
              filename: filename,
              size: size,
              type: type,
              thumbnails: thumbnails.build(),
              width: width,
              height: height,
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData,
                  r'AttachmentsStruct',
                  'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'thumbnails';
        thumbnails.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AttachmentsStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
