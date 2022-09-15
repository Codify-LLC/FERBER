// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flutter_flow_marker_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FlutterFlowMarkerStruct> _$flutterFlowMarkerStructSerializer =
    new _$FlutterFlowMarkerStructSerializer();

class _$FlutterFlowMarkerStructSerializer
    implements StructuredSerializer<FlutterFlowMarkerStruct> {
  @override
  final Iterable<Type> types = const [
    FlutterFlowMarkerStruct,
    _$FlutterFlowMarkerStruct
  ];
  @override
  final String wireName = 'FlutterFlowMarkerStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, FlutterFlowMarkerStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.markerId;
    if (value != null) {
      result
        ..add('markerId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    return result;
  }

  @override
  FlutterFlowMarkerStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FlutterFlowMarkerStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'markerId':
          result.markerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
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

class _$FlutterFlowMarkerStruct extends FlutterFlowMarkerStruct {
  @override
  final String? markerId;
  @override
  final LatLng? location;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$FlutterFlowMarkerStruct(
          [void Function(FlutterFlowMarkerStructBuilder)? updates]) =>
      (new FlutterFlowMarkerStructBuilder()..update(updates))._build();

  _$FlutterFlowMarkerStruct._(
      {this.markerId, this.location, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'FlutterFlowMarkerStruct', 'firestoreUtilData');
  }

  @override
  FlutterFlowMarkerStruct rebuild(
          void Function(FlutterFlowMarkerStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlutterFlowMarkerStructBuilder toBuilder() =>
      new FlutterFlowMarkerStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlutterFlowMarkerStruct &&
        markerId == other.markerId &&
        location == other.location &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, markerId.hashCode), location.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FlutterFlowMarkerStruct')
          ..add('markerId', markerId)
          ..add('location', location)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class FlutterFlowMarkerStructBuilder
    implements
        Builder<FlutterFlowMarkerStruct, FlutterFlowMarkerStructBuilder> {
  _$FlutterFlowMarkerStruct? _$v;

  String? _markerId;
  String? get markerId => _$this._markerId;
  set markerId(String? markerId) => _$this._markerId = markerId;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  FlutterFlowMarkerStructBuilder() {
    FlutterFlowMarkerStruct._initializeBuilder(this);
  }

  FlutterFlowMarkerStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _markerId = $v.markerId;
      _location = $v.location;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlutterFlowMarkerStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FlutterFlowMarkerStruct;
  }

  @override
  void update(void Function(FlutterFlowMarkerStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlutterFlowMarkerStruct build() => _build();

  _$FlutterFlowMarkerStruct _build() {
    final _$result = _$v ??
        new _$FlutterFlowMarkerStruct._(
            markerId: markerId,
            location: location,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData,
                r'FlutterFlowMarkerStruct',
                'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
