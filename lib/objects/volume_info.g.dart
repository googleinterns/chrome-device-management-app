// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VolumeInfo> _$volumeInfoSerializer = new _$VolumeInfoSerializer();

class _$VolumeInfoSerializer implements StructuredSerializer<VolumeInfo> {
  @override
  final Iterable<Type> types = const [VolumeInfo, _$VolumeInfo];
  @override
  final String wireName = 'VolumeInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, VolumeInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.volumeId != null) {
      result
        ..add('volumeId')
        ..add(serializers.serialize(object.volumeId,
            specifiedType: const FullType(String)));
    }
    if (object.storageTotal != null) {
      result
        ..add('storageTotal')
        ..add(serializers.serialize(object.storageTotal,
            specifiedType: const FullType(String)));
    }
    if (object.storageFree != null) {
      result
        ..add('storageFree')
        ..add(serializers.serialize(object.storageFree,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  VolumeInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VolumeInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'volumeId':
          result.volumeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'storageTotal':
          result.storageTotal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'storageFree':
          result.storageFree = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$VolumeInfo extends VolumeInfo {
  @override
  final String volumeId;
  @override
  final String storageTotal;
  @override
  final String storageFree;

  factory _$VolumeInfo([void Function(VolumeInfoBuilder) updates]) =>
      (new VolumeInfoBuilder()..update(updates)).build();

  _$VolumeInfo._({this.volumeId, this.storageTotal, this.storageFree})
      : super._();

  @override
  VolumeInfo rebuild(void Function(VolumeInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VolumeInfoBuilder toBuilder() => new VolumeInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VolumeInfo &&
        volumeId == other.volumeId &&
        storageTotal == other.storageTotal &&
        storageFree == other.storageFree;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, volumeId.hashCode), storageTotal.hashCode),
        storageFree.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VolumeInfo')
          ..add('volumeId', volumeId)
          ..add('storageTotal', storageTotal)
          ..add('storageFree', storageFree))
        .toString();
  }
}

class VolumeInfoBuilder implements Builder<VolumeInfo, VolumeInfoBuilder> {
  _$VolumeInfo _$v;

  String _volumeId;
  String get volumeId => _$this._volumeId;
  set volumeId(String volumeId) => _$this._volumeId = volumeId;

  String _storageTotal;
  String get storageTotal => _$this._storageTotal;
  set storageTotal(String storageTotal) => _$this._storageTotal = storageTotal;

  String _storageFree;
  String get storageFree => _$this._storageFree;
  set storageFree(String storageFree) => _$this._storageFree = storageFree;

  VolumeInfoBuilder();

  VolumeInfoBuilder get _$this {
    if (_$v != null) {
      _volumeId = _$v.volumeId;
      _storageTotal = _$v.storageTotal;
      _storageFree = _$v.storageFree;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VolumeInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$VolumeInfo;
  }

  @override
  void update(void Function(VolumeInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VolumeInfo build() {
    final _$result = _$v ??
        new _$VolumeInfo._(
            volumeId: volumeId,
            storageTotal: storageTotal,
            storageFree: storageFree);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
