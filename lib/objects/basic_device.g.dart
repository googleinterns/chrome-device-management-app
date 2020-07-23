// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_device.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BasicDevice> _$basicDeviceSerializer = new _$BasicDeviceSerializer();

class _$BasicDeviceSerializer implements StructuredSerializer<BasicDevice> {
  @override
  final Iterable<Type> types = const [BasicDevice, _$BasicDevice];
  @override
  final String wireName = 'BasicDevice';

  @override
  Iterable<Object> serialize(Serializers serializers, BasicDevice object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.kind != null) {
      result
        ..add('kind')
        ..add(serializers.serialize(object.kind,
            specifiedType: const FullType(String)));
    }
    if (object.etag != null) {
      result
        ..add('etag')
        ..add(serializers.serialize(object.etag,
            specifiedType: const FullType(String)));
    }
    if (object.deviceId != null) {
      result
        ..add('deviceId')
        ..add(serializers.serialize(object.deviceId,
            specifiedType: const FullType(String)));
    }
    if (object.serialNumber != null) {
      result
        ..add('serialNumber')
        ..add(serializers.serialize(object.serialNumber,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.lastSync != null) {
      result
        ..add('lastSync')
        ..add(serializers.serialize(object.lastSync,
            specifiedType: const FullType(String)));
    }
    if (object.supportEndDate != null) {
      result
        ..add('supportEndDate')
        ..add(serializers.serialize(object.supportEndDate,
            specifiedType: const FullType(String)));
    }
    if (object.annotatedUser != null) {
      result
        ..add('annotatedUser')
        ..add(serializers.serialize(object.annotatedUser,
            specifiedType: const FullType(String)));
    }
    if (object.annotatedLocation != null) {
      result
        ..add('annotatedLocation')
        ..add(serializers.serialize(object.annotatedLocation,
            specifiedType: const FullType(String)));
    }
    if (object.annotatedAssetId != null) {
      result
        ..add('annotatedAssetId')
        ..add(serializers.serialize(object.annotatedAssetId,
            specifiedType: const FullType(String)));
    }
    if (object.notes != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(object.notes,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BasicDevice deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BasicDeviceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'kind':
          result.kind = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'etag':
          result.etag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deviceId':
          result.deviceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'serialNumber':
          result.serialNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastSync':
          result.lastSync = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'supportEndDate':
          result.supportEndDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'annotatedUser':
          result.annotatedUser = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'annotatedLocation':
          result.annotatedLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'annotatedAssetId':
          result.annotatedAssetId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BasicDevice extends BasicDevice {
  @override
  final String kind;
  @override
  final String etag;
  @override
  final String deviceId;
  @override
  final String serialNumber;
  @override
  final String status;
  @override
  final String lastSync;
  @override
  final String supportEndDate;
  @override
  final String annotatedUser;
  @override
  final String annotatedLocation;
  @override
  final String annotatedAssetId;
  @override
  final String notes;

  factory _$BasicDevice([void Function(BasicDeviceBuilder) updates]) =>
      (new BasicDeviceBuilder()..update(updates)).build();

  _$BasicDevice._(
      {this.kind,
      this.etag,
      this.deviceId,
      this.serialNumber,
      this.status,
      this.lastSync,
      this.supportEndDate,
      this.annotatedUser,
      this.annotatedLocation,
      this.annotatedAssetId,
      this.notes})
      : super._();

  @override
  BasicDevice rebuild(void Function(BasicDeviceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BasicDeviceBuilder toBuilder() => new BasicDeviceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BasicDevice &&
        kind == other.kind &&
        etag == other.etag &&
        deviceId == other.deviceId &&
        serialNumber == other.serialNumber &&
        status == other.status &&
        lastSync == other.lastSync &&
        supportEndDate == other.supportEndDate &&
        annotatedUser == other.annotatedUser &&
        annotatedLocation == other.annotatedLocation &&
        annotatedAssetId == other.annotatedAssetId &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, kind.hashCode),
                                            etag.hashCode),
                                        deviceId.hashCode),
                                    serialNumber.hashCode),
                                status.hashCode),
                            lastSync.hashCode),
                        supportEndDate.hashCode),
                    annotatedUser.hashCode),
                annotatedLocation.hashCode),
            annotatedAssetId.hashCode),
        notes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BasicDevice')
          ..add('kind', kind)
          ..add('etag', etag)
          ..add('deviceId', deviceId)
          ..add('serialNumber', serialNumber)
          ..add('status', status)
          ..add('lastSync', lastSync)
          ..add('supportEndDate', supportEndDate)
          ..add('annotatedUser', annotatedUser)
          ..add('annotatedLocation', annotatedLocation)
          ..add('annotatedAssetId', annotatedAssetId)
          ..add('notes', notes))
        .toString();
  }
}

class BasicDeviceBuilder implements Builder<BasicDevice, BasicDeviceBuilder> {
  _$BasicDevice _$v;

  String _kind;
  String get kind => _$this._kind;
  set kind(String kind) => _$this._kind = kind;

  String _etag;
  String get etag => _$this._etag;
  set etag(String etag) => _$this._etag = etag;

  String _deviceId;
  String get deviceId => _$this._deviceId;
  set deviceId(String deviceId) => _$this._deviceId = deviceId;

  String _serialNumber;
  String get serialNumber => _$this._serialNumber;
  set serialNumber(String serialNumber) => _$this._serialNumber = serialNumber;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _lastSync;
  String get lastSync => _$this._lastSync;
  set lastSync(String lastSync) => _$this._lastSync = lastSync;

  String _supportEndDate;
  String get supportEndDate => _$this._supportEndDate;
  set supportEndDate(String supportEndDate) =>
      _$this._supportEndDate = supportEndDate;

  String _annotatedUser;
  String get annotatedUser => _$this._annotatedUser;
  set annotatedUser(String annotatedUser) =>
      _$this._annotatedUser = annotatedUser;

  String _annotatedLocation;
  String get annotatedLocation => _$this._annotatedLocation;
  set annotatedLocation(String annotatedLocation) =>
      _$this._annotatedLocation = annotatedLocation;

  String _annotatedAssetId;
  String get annotatedAssetId => _$this._annotatedAssetId;
  set annotatedAssetId(String annotatedAssetId) =>
      _$this._annotatedAssetId = annotatedAssetId;

  String _notes;
  String get notes => _$this._notes;
  set notes(String notes) => _$this._notes = notes;

  BasicDeviceBuilder();

  BasicDeviceBuilder get _$this {
    if (_$v != null) {
      _kind = _$v.kind;
      _etag = _$v.etag;
      _deviceId = _$v.deviceId;
      _serialNumber = _$v.serialNumber;
      _status = _$v.status;
      _lastSync = _$v.lastSync;
      _supportEndDate = _$v.supportEndDate;
      _annotatedUser = _$v.annotatedUser;
      _annotatedLocation = _$v.annotatedLocation;
      _annotatedAssetId = _$v.annotatedAssetId;
      _notes = _$v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BasicDevice other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BasicDevice;
  }

  @override
  void update(void Function(BasicDeviceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BasicDevice build() {
    final _$result = _$v ??
        new _$BasicDevice._(
            kind: kind,
            etag: etag,
            deviceId: deviceId,
            serialNumber: serialNumber,
            status: status,
            lastSync: lastSync,
            supportEndDate: supportEndDate,
            annotatedUser: annotatedUser,
            annotatedLocation: annotatedLocation,
            annotatedAssetId: annotatedAssetId,
            notes: notes);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
