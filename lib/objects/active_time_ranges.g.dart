// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_time_ranges.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActiveTimeRanges> _$activeTimeRangesSerializer =
    new _$ActiveTimeRangesSerializer();

class _$ActiveTimeRangesSerializer
    implements StructuredSerializer<ActiveTimeRanges> {
  @override
  final Iterable<Type> types = const [ActiveTimeRanges, _$ActiveTimeRanges];
  @override
  final String wireName = 'ActiveTimeRanges';

  @override
  Iterable<Object> serialize(Serializers serializers, ActiveTimeRanges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(String)));
    }
    if (object.activeTime != null) {
      result
        ..add('activeTime')
        ..add(serializers.serialize(object.activeTime,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ActiveTimeRanges deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActiveTimeRangesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'activeTime':
          result.activeTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ActiveTimeRanges extends ActiveTimeRanges {
  @override
  final String date;
  @override
  final String activeTime;

  factory _$ActiveTimeRanges(
          [void Function(ActiveTimeRangesBuilder) updates]) =>
      (new ActiveTimeRangesBuilder()..update(updates)).build();

  _$ActiveTimeRanges._({this.date, this.activeTime}) : super._();

  @override
  ActiveTimeRanges rebuild(void Function(ActiveTimeRangesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActiveTimeRangesBuilder toBuilder() =>
      new ActiveTimeRangesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActiveTimeRanges &&
        date == other.date &&
        activeTime == other.activeTime;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, date.hashCode), activeTime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ActiveTimeRanges')
          ..add('date', date)
          ..add('activeTime', activeTime))
        .toString();
  }
}

class ActiveTimeRangesBuilder
    implements Builder<ActiveTimeRanges, ActiveTimeRangesBuilder> {
  _$ActiveTimeRanges _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _activeTime;
  String get activeTime => _$this._activeTime;
  set activeTime(String activeTime) => _$this._activeTime = activeTime;

  ActiveTimeRangesBuilder();

  ActiveTimeRangesBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _activeTime = _$v.activeTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActiveTimeRanges other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ActiveTimeRanges;
  }

  @override
  void update(void Function(ActiveTimeRangesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ActiveTimeRanges build() {
    final _$result =
        _$v ?? new _$ActiveTimeRanges._(date: date, activeTime: activeTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
