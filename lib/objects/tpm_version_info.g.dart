// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tpm_version_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TpmVersionInfo> _$tpmVersionInfoSerializer =
    new _$TpmVersionInfoSerializer();

class _$TpmVersionInfoSerializer
    implements StructuredSerializer<TpmVersionInfo> {
  @override
  final Iterable<Type> types = const [TpmVersionInfo, _$TpmVersionInfo];
  @override
  final String wireName = 'TpmVersionInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, TpmVersionInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.family != null) {
      result
        ..add('family')
        ..add(serializers.serialize(object.family,
            specifiedType: const FullType(String)));
    }
    if (object.specLevel != null) {
      result
        ..add('specLevel')
        ..add(serializers.serialize(object.specLevel,
            specifiedType: const FullType(String)));
    }
    if (object.manufacturer != null) {
      result
        ..add('manufacturer')
        ..add(serializers.serialize(object.manufacturer,
            specifiedType: const FullType(String)));
    }
    if (object.tpmModel != null) {
      result
        ..add('tpmModel')
        ..add(serializers.serialize(object.tpmModel,
            specifiedType: const FullType(String)));
    }
    if (object.firmwareVersion != null) {
      result
        ..add('firmwareVersion')
        ..add(serializers.serialize(object.firmwareVersion,
            specifiedType: const FullType(String)));
    }
    if (object.vendorSpecific != null) {
      result
        ..add('vendorSpecific')
        ..add(serializers.serialize(object.vendorSpecific,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TpmVersionInfo deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TpmVersionInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'family':
          result.family = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'specLevel':
          result.specLevel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manufacturer':
          result.manufacturer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tpmModel':
          result.tpmModel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'firmwareVersion':
          result.firmwareVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vendorSpecific':
          result.vendorSpecific = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TpmVersionInfo extends TpmVersionInfo {
  @override
  final String family;
  @override
  final String specLevel;
  @override
  final String manufacturer;
  @override
  final String tpmModel;
  @override
  final String firmwareVersion;
  @override
  final String vendorSpecific;

  factory _$TpmVersionInfo([void Function(TpmVersionInfoBuilder) updates]) =>
      (new TpmVersionInfoBuilder()..update(updates)).build();

  _$TpmVersionInfo._(
      {this.family,
      this.specLevel,
      this.manufacturer,
      this.tpmModel,
      this.firmwareVersion,
      this.vendorSpecific})
      : super._();

  @override
  TpmVersionInfo rebuild(void Function(TpmVersionInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TpmVersionInfoBuilder toBuilder() =>
      new TpmVersionInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TpmVersionInfo &&
        family == other.family &&
        specLevel == other.specLevel &&
        manufacturer == other.manufacturer &&
        tpmModel == other.tpmModel &&
        firmwareVersion == other.firmwareVersion &&
        vendorSpecific == other.vendorSpecific;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, family.hashCode), specLevel.hashCode),
                    manufacturer.hashCode),
                tpmModel.hashCode),
            firmwareVersion.hashCode),
        vendorSpecific.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TpmVersionInfo')
          ..add('family', family)
          ..add('specLevel', specLevel)
          ..add('manufacturer', manufacturer)
          ..add('tpmModel', tpmModel)
          ..add('firmwareVersion', firmwareVersion)
          ..add('vendorSpecific', vendorSpecific))
        .toString();
  }
}

class TpmVersionInfoBuilder
    implements Builder<TpmVersionInfo, TpmVersionInfoBuilder> {
  _$TpmVersionInfo _$v;

  String _family;
  String get family => _$this._family;
  set family(String family) => _$this._family = family;

  String _specLevel;
  String get specLevel => _$this._specLevel;
  set specLevel(String specLevel) => _$this._specLevel = specLevel;

  String _manufacturer;
  String get manufacturer => _$this._manufacturer;
  set manufacturer(String manufacturer) => _$this._manufacturer = manufacturer;

  String _tpmModel;
  String get tpmModel => _$this._tpmModel;
  set tpmModel(String tpmModel) => _$this._tpmModel = tpmModel;

  String _firmwareVersion;
  String get firmwareVersion => _$this._firmwareVersion;
  set firmwareVersion(String firmwareVersion) =>
      _$this._firmwareVersion = firmwareVersion;

  String _vendorSpecific;
  String get vendorSpecific => _$this._vendorSpecific;
  set vendorSpecific(String vendorSpecific) =>
      _$this._vendorSpecific = vendorSpecific;

  TpmVersionInfoBuilder();

  TpmVersionInfoBuilder get _$this {
    if (_$v != null) {
      _family = _$v.family;
      _specLevel = _$v.specLevel;
      _manufacturer = _$v.manufacturer;
      _tpmModel = _$v.tpmModel;
      _firmwareVersion = _$v.firmwareVersion;
      _vendorSpecific = _$v.vendorSpecific;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TpmVersionInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TpmVersionInfo;
  }

  @override
  void update(void Function(TpmVersionInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TpmVersionInfo build() {
    final _$result = _$v ??
        new _$TpmVersionInfo._(
            family: family,
            specLevel: specLevel,
            manufacturer: manufacturer,
            tpmModel: tpmModel,
            firmwareVersion: firmwareVersion,
            vendorSpecific: vendorSpecific);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
