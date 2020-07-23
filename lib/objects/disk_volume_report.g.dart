// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disk_volume_report.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DiskVolumeReport> _$diskVolumeReportSerializer =
    new _$DiskVolumeReportSerializer();

class _$DiskVolumeReportSerializer
    implements StructuredSerializer<DiskVolumeReport> {
  @override
  final Iterable<Type> types = const [DiskVolumeReport, _$DiskVolumeReport];
  @override
  final String wireName = 'DiskVolumeReport';

  @override
  Iterable<Object> serialize(Serializers serializers, DiskVolumeReport object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.volumeInfo != null) {
      result
        ..add('volumeInfo')
        ..add(serializers.serialize(object.volumeInfo,
            specifiedType:
                const FullType(BuiltList, const [const FullType(VolumeInfo)])));
    }
    return result;
  }

  @override
  DiskVolumeReport deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DiskVolumeReportBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'volumeInfo':
          result.volumeInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(VolumeInfo)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$DiskVolumeReport extends DiskVolumeReport {
  @override
  final BuiltList<VolumeInfo> volumeInfo;

  factory _$DiskVolumeReport(
          [void Function(DiskVolumeReportBuilder) updates]) =>
      (new DiskVolumeReportBuilder()..update(updates)).build();

  _$DiskVolumeReport._({this.volumeInfo}) : super._();

  @override
  DiskVolumeReport rebuild(void Function(DiskVolumeReportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiskVolumeReportBuilder toBuilder() =>
      new DiskVolumeReportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiskVolumeReport && volumeInfo == other.volumeInfo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, volumeInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DiskVolumeReport')
          ..add('volumeInfo', volumeInfo))
        .toString();
  }
}

class DiskVolumeReportBuilder
    implements Builder<DiskVolumeReport, DiskVolumeReportBuilder> {
  _$DiskVolumeReport _$v;

  ListBuilder<VolumeInfo> _volumeInfo;
  ListBuilder<VolumeInfo> get volumeInfo =>
      _$this._volumeInfo ??= new ListBuilder<VolumeInfo>();
  set volumeInfo(ListBuilder<VolumeInfo> volumeInfo) =>
      _$this._volumeInfo = volumeInfo;

  DiskVolumeReportBuilder();

  DiskVolumeReportBuilder get _$this {
    if (_$v != null) {
      _volumeInfo = _$v.volumeInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiskVolumeReport other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DiskVolumeReport;
  }

  @override
  void update(void Function(DiskVolumeReportBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DiskVolumeReport build() {
    _$DiskVolumeReport _$result;
    try {
      _$result =
          _$v ?? new _$DiskVolumeReport._(volumeInfo: _volumeInfo?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'volumeInfo';
        _volumeInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DiskVolumeReport', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
