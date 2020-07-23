// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cpu_temperature_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CpuTemperatureInfo> _$cpuTemperatureInfoSerializer =
    new _$CpuTemperatureInfoSerializer();

class _$CpuTemperatureInfoSerializer
    implements StructuredSerializer<CpuTemperatureInfo> {
  @override
  final Iterable<Type> types = const [CpuTemperatureInfo, _$CpuTemperatureInfo];
  @override
  final String wireName = 'CpuTemperatureInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, CpuTemperatureInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.temperature != null) {
      result
        ..add('temperature')
        ..add(serializers.serialize(object.temperature,
            specifiedType: const FullType(String)));
    }
    if (object.label != null) {
      result
        ..add('label')
        ..add(serializers.serialize(object.label,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CpuTemperatureInfo deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CpuTemperatureInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'temperature':
          result.temperature = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CpuTemperatureInfo extends CpuTemperatureInfo {
  @override
  final String temperature;
  @override
  final String label;

  factory _$CpuTemperatureInfo(
          [void Function(CpuTemperatureInfoBuilder) updates]) =>
      (new CpuTemperatureInfoBuilder()..update(updates)).build();

  _$CpuTemperatureInfo._({this.temperature, this.label}) : super._();

  @override
  CpuTemperatureInfo rebuild(
          void Function(CpuTemperatureInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CpuTemperatureInfoBuilder toBuilder() =>
      new CpuTemperatureInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpuTemperatureInfo &&
        temperature == other.temperature &&
        label == other.label;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, temperature.hashCode), label.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CpuTemperatureInfo')
          ..add('temperature', temperature)
          ..add('label', label))
        .toString();
  }
}

class CpuTemperatureInfoBuilder
    implements Builder<CpuTemperatureInfo, CpuTemperatureInfoBuilder> {
  _$CpuTemperatureInfo _$v;

  String _temperature;
  String get temperature => _$this._temperature;
  set temperature(String temperature) => _$this._temperature = temperature;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  CpuTemperatureInfoBuilder();

  CpuTemperatureInfoBuilder get _$this {
    if (_$v != null) {
      _temperature = _$v.temperature;
      _label = _$v.label;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CpuTemperatureInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CpuTemperatureInfo;
  }

  @override
  void update(void Function(CpuTemperatureInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CpuTemperatureInfo build() {
    final _$result = _$v ??
        new _$CpuTemperatureInfo._(temperature: temperature, label: label);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
