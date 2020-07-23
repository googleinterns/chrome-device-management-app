// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_ram_free_report.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SystemRamFreeReport> _$systemRamFreeReportSerializer =
    new _$SystemRamFreeReportSerializer();

class _$SystemRamFreeReportSerializer
    implements StructuredSerializer<SystemRamFreeReport> {
  @override
  final Iterable<Type> types = const [
    SystemRamFreeReport,
    _$SystemRamFreeReport
  ];
  @override
  final String wireName = 'SystemRamFreeReport';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SystemRamFreeReport object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.reportTime != null) {
      result
        ..add('reportTime')
        ..add(serializers.serialize(object.reportTime,
            specifiedType: const FullType(String)));
    }
    if (object.systemRamFreeInfo != null) {
      result
        ..add('systemRamFreeInfo')
        ..add(serializers.serialize(object.systemRamFreeInfo,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  SystemRamFreeReport deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SystemRamFreeReportBuilder();

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
        case 'systemRamFreeInfo':
          result.systemRamFreeInfo.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$SystemRamFreeReport extends SystemRamFreeReport {
  @override
  final String reportTime;
  @override
  final BuiltList<String> systemRamFreeInfo;

  factory _$SystemRamFreeReport(
          [void Function(SystemRamFreeReportBuilder) updates]) =>
      (new SystemRamFreeReportBuilder()..update(updates)).build();

  _$SystemRamFreeReport._({this.reportTime, this.systemRamFreeInfo})
      : super._();

  @override
  SystemRamFreeReport rebuild(
          void Function(SystemRamFreeReportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SystemRamFreeReportBuilder toBuilder() =>
      new SystemRamFreeReportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemRamFreeReport &&
        reportTime == other.reportTime &&
        systemRamFreeInfo == other.systemRamFreeInfo;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, reportTime.hashCode), systemRamFreeInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SystemRamFreeReport')
          ..add('reportTime', reportTime)
          ..add('systemRamFreeInfo', systemRamFreeInfo))
        .toString();
  }
}

class SystemRamFreeReportBuilder
    implements Builder<SystemRamFreeReport, SystemRamFreeReportBuilder> {
  _$SystemRamFreeReport _$v;

  String _reportTime;
  String get reportTime => _$this._reportTime;
  set reportTime(String reportTime) => _$this._reportTime = reportTime;

  ListBuilder<String> _systemRamFreeInfo;
  ListBuilder<String> get systemRamFreeInfo =>
      _$this._systemRamFreeInfo ??= new ListBuilder<String>();
  set systemRamFreeInfo(ListBuilder<String> systemRamFreeInfo) =>
      _$this._systemRamFreeInfo = systemRamFreeInfo;

  SystemRamFreeReportBuilder();

  SystemRamFreeReportBuilder get _$this {
    if (_$v != null) {
      _reportTime = _$v.reportTime;
      _systemRamFreeInfo = _$v.systemRamFreeInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemRamFreeReport other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SystemRamFreeReport;
  }

  @override
  void update(void Function(SystemRamFreeReportBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SystemRamFreeReport build() {
    _$SystemRamFreeReport _$result;
    try {
      _$result = _$v ??
          new _$SystemRamFreeReport._(
              reportTime: reportTime,
              systemRamFreeInfo: _systemRamFreeInfo?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'systemRamFreeInfo';
        _systemRamFreeInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SystemRamFreeReport', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
