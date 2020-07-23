// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cpu_status_report.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CpuStatusReport> _$cpuStatusReportSerializer =
    new _$CpuStatusReportSerializer();

class _$CpuStatusReportSerializer
    implements StructuredSerializer<CpuStatusReport> {
  @override
  final Iterable<Type> types = const [CpuStatusReport, _$CpuStatusReport];
  @override
  final String wireName = 'CpuStatusReport';

  @override
  Iterable<Object> serialize(Serializers serializers, CpuStatusReport object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.reportTime != null) {
      result
        ..add('reportTime')
        ..add(serializers.serialize(object.reportTime,
            specifiedType: const FullType(String)));
    }
    if (object.cpuUtilizationPercentageInfo != null) {
      result
        ..add('cpuUtilizationPercentageInfo')
        ..add(serializers.serialize(object.cpuUtilizationPercentageInfo,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.cpuTemperatureInfo != null) {
      result
        ..add('cpuTemperatureInfo')
        ..add(serializers.serialize(object.cpuTemperatureInfo,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CpuTemperatureInfo)])));
    }
    return result;
  }

  @override
  CpuStatusReport deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CpuStatusReportBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'reportTime':
          result.reportTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cpuUtilizationPercentageInfo':
          result.cpuUtilizationPercentageInfo.replace(serializers.deserialize(
                  value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'cpuTemperatureInfo':
          result.cpuTemperatureInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CpuTemperatureInfo)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CpuStatusReport extends CpuStatusReport {
  @override
  final String reportTime;
  @override
  final BuiltList<String> cpuUtilizationPercentageInfo;
  @override
  final BuiltList<CpuTemperatureInfo> cpuTemperatureInfo;

  factory _$CpuStatusReport([void Function(CpuStatusReportBuilder) updates]) =>
      (new CpuStatusReportBuilder()..update(updates)).build();

  _$CpuStatusReport._(
      {this.reportTime,
      this.cpuUtilizationPercentageInfo,
      this.cpuTemperatureInfo})
      : super._();

  @override
  CpuStatusReport rebuild(void Function(CpuStatusReportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CpuStatusReportBuilder toBuilder() =>
      new CpuStatusReportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CpuStatusReport &&
        reportTime == other.reportTime &&
        cpuUtilizationPercentageInfo == other.cpuUtilizationPercentageInfo &&
        cpuTemperatureInfo == other.cpuTemperatureInfo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, reportTime.hashCode), cpuUtilizationPercentageInfo.hashCode),
        cpuTemperatureInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CpuStatusReport')
          ..add('reportTime', reportTime)
          ..add('cpuUtilizationPercentageInfo', cpuUtilizationPercentageInfo)
          ..add('cpuTemperatureInfo', cpuTemperatureInfo))
        .toString();
  }
}

class CpuStatusReportBuilder
    implements Builder<CpuStatusReport, CpuStatusReportBuilder> {
  _$CpuStatusReport _$v;

  String _reportTime;
  String get reportTime => _$this._reportTime;
  set reportTime(String reportTime) => _$this._reportTime = reportTime;

  ListBuilder<String> _cpuUtilizationPercentageInfo;
  ListBuilder<String> get cpuUtilizationPercentageInfo =>
      _$this._cpuUtilizationPercentageInfo ??= new ListBuilder<String>();
  set cpuUtilizationPercentageInfo(
          ListBuilder<String> cpuUtilizationPercentageInfo) =>
      _$this._cpuUtilizationPercentageInfo = cpuUtilizationPercentageInfo;

  ListBuilder<CpuTemperatureInfo> _cpuTemperatureInfo;
  ListBuilder<CpuTemperatureInfo> get cpuTemperatureInfo =>
      _$this._cpuTemperatureInfo ??= new ListBuilder<CpuTemperatureInfo>();
  set cpuTemperatureInfo(ListBuilder<CpuTemperatureInfo> cpuTemperatureInfo) =>
      _$this._cpuTemperatureInfo = cpuTemperatureInfo;

  CpuStatusReportBuilder();

  CpuStatusReportBuilder get _$this {
    if (_$v != null) {
      _reportTime = _$v.reportTime;
      _cpuUtilizationPercentageInfo =
          _$v.cpuUtilizationPercentageInfo?.toBuilder();
      _cpuTemperatureInfo = _$v.cpuTemperatureInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CpuStatusReport other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CpuStatusReport;
  }

  @override
  void update(void Function(CpuStatusReportBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CpuStatusReport build() {
    _$CpuStatusReport _$result;
    try {
      _$result = _$v ??
          new _$CpuStatusReport._(
              reportTime: reportTime,
              cpuUtilizationPercentageInfo:
                  _cpuUtilizationPercentageInfo?.build(),
              cpuTemperatureInfo: _cpuTemperatureInfo?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cpuUtilizationPercentageInfo';
        _cpuUtilizationPercentageInfo?.build();
        _$failedField = 'cpuTemperatureInfo';
        _cpuTemperatureInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CpuStatusReport', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
