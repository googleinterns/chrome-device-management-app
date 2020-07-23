// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_device.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DetailedDevice> _$detailedDeviceSerializer =
    new _$DetailedDeviceSerializer();

class _$DetailedDeviceSerializer
    implements StructuredSerializer<DetailedDevice> {
  @override
  final Iterable<Type> types = const [DetailedDevice, _$DetailedDevice];
  @override
  final String wireName = 'DetailedDevice';

  @override
  Iterable<Object> serialize(Serializers serializers, DetailedDevice object,
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
    if (object.activeTimeRanges != null) {
      result
        ..add('activeTimeRanges')
        ..add(serializers.serialize(object.activeTimeRanges,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ActiveTimeRanges)])));
    }
    if (object.autoUpdateExpiration != null) {
      result
        ..add('autoUpdateExpiration')
        ..add(serializers.serialize(object.autoUpdateExpiration,
            specifiedType: const FullType(String)));
    }
    if (object.bootMode != null) {
      result
        ..add('bootMode')
        ..add(serializers.serialize(object.bootMode,
            specifiedType: const FullType(String)));
    }
    if (object.cpuStatusReports != null) {
      result
        ..add('cpuStatusReports')
        ..add(serializers.serialize(object.cpuStatusReports,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CpuStatusReport)])));
    }
    if (object.deviceFiles != null) {
      result
        ..add('deviceFiles')
        ..add(serializers.serialize(object.deviceFiles,
            specifiedType: const FullType(
                BuiltList, const [const FullType(DeviceFiles)])));
    }
    if (object.diskVolumeReports != null) {
      result
        ..add('diskVolumeReports')
        ..add(serializers.serialize(object.diskVolumeReports,
            specifiedType: const FullType(
                BuiltList, const [const FullType(DiskVolumeReport)])));
    }
    if (object.dockMacAddress != null) {
      result
        ..add('dockMacAddress')
        ..add(serializers.serialize(object.dockMacAddress,
            specifiedType: const FullType(String)));
    }
    if (object.ethernetMacAddress != null) {
      result
        ..add('ethernetMacAddress')
        ..add(serializers.serialize(object.ethernetMacAddress,
            specifiedType: const FullType(String)));
    }
    if (object.ethernetMacAddress0 != null) {
      result
        ..add('ethernetMacAddress0')
        ..add(serializers.serialize(object.ethernetMacAddress0,
            specifiedType: const FullType(String)));
    }
    if (object.firmwareVersion != null) {
      result
        ..add('firmwareVersion')
        ..add(serializers.serialize(object.firmwareVersion,
            specifiedType: const FullType(String)));
    }
    if (object.lastEnrollmentTime != null) {
      result
        ..add('lastEnrollmentTime')
        ..add(serializers.serialize(object.lastEnrollmentTime,
            specifiedType: const FullType(String)));
    }
    if (object.lastKnownNetwork != null) {
      result
        ..add('lastKnownNetwork')
        ..add(serializers.serialize(object.lastKnownNetwork,
            specifiedType: const FullType(
                BuiltList, const [const FullType(LastKnownNetwork)])));
    }
    if (object.macAddress != null) {
      result
        ..add('macAddress')
        ..add(serializers.serialize(object.macAddress,
            specifiedType: const FullType(String)));
    }
    if (object.manufactureDate != null) {
      result
        ..add('manufactureDate')
        ..add(serializers.serialize(object.manufactureDate,
            specifiedType: const FullType(String)));
    }
    if (object.meid != null) {
      result
        ..add('meid')
        ..add(serializers.serialize(object.meid,
            specifiedType: const FullType(String)));
    }
    if (object.model != null) {
      result
        ..add('model')
        ..add(serializers.serialize(object.model,
            specifiedType: const FullType(String)));
    }
    if (object.orderNumber != null) {
      result
        ..add('orderNumber')
        ..add(serializers.serialize(object.orderNumber,
            specifiedType: const FullType(String)));
    }
    if (object.orgUnitPath != null) {
      result
        ..add('orgUnitPath')
        ..add(serializers.serialize(object.orgUnitPath,
            specifiedType: const FullType(String)));
    }
    if (object.osVersion != null) {
      result
        ..add('osVersion')
        ..add(serializers.serialize(object.osVersion,
            specifiedType: const FullType(String)));
    }
    if (object.platformVersion != null) {
      result
        ..add('platformVersion')
        ..add(serializers.serialize(object.platformVersion,
            specifiedType: const FullType(String)));
    }
    if (object.recentUsers != null) {
      result
        ..add('recentUsers')
        ..add(serializers.serialize(object.recentUsers,
            specifiedType: const FullType(
                BuiltList, const [const FullType(RecentUsers)])));
    }
    if (object.systemRamFreeReports != null) {
      result
        ..add('systemRamFreeReports')
        ..add(serializers.serialize(object.systemRamFreeReports,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SystemRamFreeReport)])));
    }
    if (object.systemRamTotal != null) {
      result
        ..add('systemRamTotal')
        ..add(serializers.serialize(object.systemRamTotal,
            specifiedType: const FullType(String)));
    }
    if (object.tpmVersionInfo != null) {
      result
        ..add('tpmVersionInfo')
        ..add(serializers.serialize(object.tpmVersionInfo,
            specifiedType: const FullType(TpmVersionInfo)));
    }
    if (object.willAutoRenew != null) {
      result
        ..add('willAutoRenew')
        ..add(serializers.serialize(object.willAutoRenew,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  DetailedDevice deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DetailedDeviceBuilder();

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
        case 'activeTimeRanges':
          result.activeTimeRanges.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ActiveTimeRanges)]))
              as BuiltList<Object>);
          break;
        case 'autoUpdateExpiration':
          result.autoUpdateExpiration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bootMode':
          result.bootMode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cpuStatusReports':
          result.cpuStatusReports.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CpuStatusReport)]))
              as BuiltList<Object>);
          break;
        case 'deviceFiles':
          result.deviceFiles.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DeviceFiles)]))
              as BuiltList<Object>);
          break;
        case 'diskVolumeReports':
          result.diskVolumeReports.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DiskVolumeReport)]))
              as BuiltList<Object>);
          break;
        case 'dockMacAddress':
          result.dockMacAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ethernetMacAddress':
          result.ethernetMacAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ethernetMacAddress0':
          result.ethernetMacAddress0 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'firmwareVersion':
          result.firmwareVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastEnrollmentTime':
          result.lastEnrollmentTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lastKnownNetwork':
          result.lastKnownNetwork.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(LastKnownNetwork)]))
              as BuiltList<Object>);
          break;
        case 'macAddress':
          result.macAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'manufactureDate':
          result.manufactureDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'meid':
          result.meid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'model':
          result.model = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'orderNumber':
          result.orderNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'orgUnitPath':
          result.orgUnitPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'osVersion':
          result.osVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'platformVersion':
          result.platformVersion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recentUsers':
          result.recentUsers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RecentUsers)]))
              as BuiltList<Object>);
          break;
        case 'systemRamFreeReports':
          result.systemRamFreeReports.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SystemRamFreeReport)]))
              as BuiltList<Object>);
          break;
        case 'systemRamTotal':
          result.systemRamTotal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tpmVersionInfo':
          result.tpmVersionInfo.replace(serializers.deserialize(value,
              specifiedType: const FullType(TpmVersionInfo)) as TpmVersionInfo);
          break;
        case 'willAutoRenew':
          result.willAutoRenew = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$DetailedDevice extends DetailedDevice {
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
  @override
  final BuiltList<ActiveTimeRanges> activeTimeRanges;
  @override
  final String autoUpdateExpiration;
  @override
  final String bootMode;
  @override
  final BuiltList<CpuStatusReport> cpuStatusReports;
  @override
  final BuiltList<DeviceFiles> deviceFiles;
  @override
  final BuiltList<DiskVolumeReport> diskVolumeReports;
  @override
  final String dockMacAddress;
  @override
  final String ethernetMacAddress;
  @override
  final String ethernetMacAddress0;
  @override
  final String firmwareVersion;
  @override
  final String lastEnrollmentTime;
  @override
  final BuiltList<LastKnownNetwork> lastKnownNetwork;
  @override
  final String macAddress;
  @override
  final String manufactureDate;
  @override
  final String meid;
  @override
  final String model;
  @override
  final String orderNumber;
  @override
  final String orgUnitPath;
  @override
  final String osVersion;
  @override
  final String platformVersion;
  @override
  final BuiltList<RecentUsers> recentUsers;
  @override
  final BuiltList<SystemRamFreeReport> systemRamFreeReports;
  @override
  final String systemRamTotal;
  @override
  final TpmVersionInfo tpmVersionInfo;
  @override
  final bool willAutoRenew;

  factory _$DetailedDevice([void Function(DetailedDeviceBuilder) updates]) =>
      (new DetailedDeviceBuilder()..update(updates)).build();

  _$DetailedDevice._(
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
      this.notes,
      this.activeTimeRanges,
      this.autoUpdateExpiration,
      this.bootMode,
      this.cpuStatusReports,
      this.deviceFiles,
      this.diskVolumeReports,
      this.dockMacAddress,
      this.ethernetMacAddress,
      this.ethernetMacAddress0,
      this.firmwareVersion,
      this.lastEnrollmentTime,
      this.lastKnownNetwork,
      this.macAddress,
      this.manufactureDate,
      this.meid,
      this.model,
      this.orderNumber,
      this.orgUnitPath,
      this.osVersion,
      this.platformVersion,
      this.recentUsers,
      this.systemRamFreeReports,
      this.systemRamTotal,
      this.tpmVersionInfo,
      this.willAutoRenew})
      : super._();

  @override
  DetailedDevice rebuild(void Function(DetailedDeviceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetailedDeviceBuilder toBuilder() =>
      new DetailedDeviceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetailedDevice &&
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
        notes == other.notes &&
        activeTimeRanges == other.activeTimeRanges &&
        autoUpdateExpiration == other.autoUpdateExpiration &&
        bootMode == other.bootMode &&
        cpuStatusReports == other.cpuStatusReports &&
        deviceFiles == other.deviceFiles &&
        diskVolumeReports == other.diskVolumeReports &&
        dockMacAddress == other.dockMacAddress &&
        ethernetMacAddress == other.ethernetMacAddress &&
        ethernetMacAddress0 == other.ethernetMacAddress0 &&
        firmwareVersion == other.firmwareVersion &&
        lastEnrollmentTime == other.lastEnrollmentTime &&
        lastKnownNetwork == other.lastKnownNetwork &&
        macAddress == other.macAddress &&
        manufactureDate == other.manufactureDate &&
        meid == other.meid &&
        model == other.model &&
        orderNumber == other.orderNumber &&
        orgUnitPath == other.orgUnitPath &&
        osVersion == other.osVersion &&
        platformVersion == other.platformVersion &&
        recentUsers == other.recentUsers &&
        systemRamFreeReports == other.systemRamFreeReports &&
        systemRamTotal == other.systemRamTotal &&
        tpmVersionInfo == other.tpmVersionInfo &&
        willAutoRenew == other.willAutoRenew;
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
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, kind.hashCode), etag.hashCode), deviceId.hashCode), serialNumber.hashCode), status.hashCode), lastSync.hashCode), supportEndDate.hashCode), annotatedUser.hashCode), annotatedLocation.hashCode), annotatedAssetId.hashCode), notes.hashCode), activeTimeRanges.hashCode), autoUpdateExpiration.hashCode), bootMode.hashCode), cpuStatusReports.hashCode), deviceFiles.hashCode), diskVolumeReports.hashCode),
                                                                                dockMacAddress.hashCode),
                                                                            ethernetMacAddress.hashCode),
                                                                        ethernetMacAddress0.hashCode),
                                                                    firmwareVersion.hashCode),
                                                                lastEnrollmentTime.hashCode),
                                                            lastKnownNetwork.hashCode),
                                                        macAddress.hashCode),
                                                    manufactureDate.hashCode),
                                                meid.hashCode),
                                            model.hashCode),
                                        orderNumber.hashCode),
                                    orgUnitPath.hashCode),
                                osVersion.hashCode),
                            platformVersion.hashCode),
                        recentUsers.hashCode),
                    systemRamFreeReports.hashCode),
                systemRamTotal.hashCode),
            tpmVersionInfo.hashCode),
        willAutoRenew.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DetailedDevice')
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
          ..add('notes', notes)
          ..add('activeTimeRanges', activeTimeRanges)
          ..add('autoUpdateExpiration', autoUpdateExpiration)
          ..add('bootMode', bootMode)
          ..add('cpuStatusReports', cpuStatusReports)
          ..add('deviceFiles', deviceFiles)
          ..add('diskVolumeReports', diskVolumeReports)
          ..add('dockMacAddress', dockMacAddress)
          ..add('ethernetMacAddress', ethernetMacAddress)
          ..add('ethernetMacAddress0', ethernetMacAddress0)
          ..add('firmwareVersion', firmwareVersion)
          ..add('lastEnrollmentTime', lastEnrollmentTime)
          ..add('lastKnownNetwork', lastKnownNetwork)
          ..add('macAddress', macAddress)
          ..add('manufactureDate', manufactureDate)
          ..add('meid', meid)
          ..add('model', model)
          ..add('orderNumber', orderNumber)
          ..add('orgUnitPath', orgUnitPath)
          ..add('osVersion', osVersion)
          ..add('platformVersion', platformVersion)
          ..add('recentUsers', recentUsers)
          ..add('systemRamFreeReports', systemRamFreeReports)
          ..add('systemRamTotal', systemRamTotal)
          ..add('tpmVersionInfo', tpmVersionInfo)
          ..add('willAutoRenew', willAutoRenew))
        .toString();
  }
}

class DetailedDeviceBuilder
    implements Builder<DetailedDevice, DetailedDeviceBuilder> {
  _$DetailedDevice _$v;

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

  ListBuilder<ActiveTimeRanges> _activeTimeRanges;
  ListBuilder<ActiveTimeRanges> get activeTimeRanges =>
      _$this._activeTimeRanges ??= new ListBuilder<ActiveTimeRanges>();
  set activeTimeRanges(ListBuilder<ActiveTimeRanges> activeTimeRanges) =>
      _$this._activeTimeRanges = activeTimeRanges;

  String _autoUpdateExpiration;
  String get autoUpdateExpiration => _$this._autoUpdateExpiration;
  set autoUpdateExpiration(String autoUpdateExpiration) =>
      _$this._autoUpdateExpiration = autoUpdateExpiration;

  String _bootMode;
  String get bootMode => _$this._bootMode;
  set bootMode(String bootMode) => _$this._bootMode = bootMode;

  ListBuilder<CpuStatusReport> _cpuStatusReports;
  ListBuilder<CpuStatusReport> get cpuStatusReports =>
      _$this._cpuStatusReports ??= new ListBuilder<CpuStatusReport>();
  set cpuStatusReports(ListBuilder<CpuStatusReport> cpuStatusReports) =>
      _$this._cpuStatusReports = cpuStatusReports;

  ListBuilder<DeviceFiles> _deviceFiles;
  ListBuilder<DeviceFiles> get deviceFiles =>
      _$this._deviceFiles ??= new ListBuilder<DeviceFiles>();
  set deviceFiles(ListBuilder<DeviceFiles> deviceFiles) =>
      _$this._deviceFiles = deviceFiles;

  ListBuilder<DiskVolumeReport> _diskVolumeReports;
  ListBuilder<DiskVolumeReport> get diskVolumeReports =>
      _$this._diskVolumeReports ??= new ListBuilder<DiskVolumeReport>();
  set diskVolumeReports(ListBuilder<DiskVolumeReport> diskVolumeReports) =>
      _$this._diskVolumeReports = diskVolumeReports;

  String _dockMacAddress;
  String get dockMacAddress => _$this._dockMacAddress;
  set dockMacAddress(String dockMacAddress) =>
      _$this._dockMacAddress = dockMacAddress;

  String _ethernetMacAddress;
  String get ethernetMacAddress => _$this._ethernetMacAddress;
  set ethernetMacAddress(String ethernetMacAddress) =>
      _$this._ethernetMacAddress = ethernetMacAddress;

  String _ethernetMacAddress0;
  String get ethernetMacAddress0 => _$this._ethernetMacAddress0;
  set ethernetMacAddress0(String ethernetMacAddress0) =>
      _$this._ethernetMacAddress0 = ethernetMacAddress0;

  String _firmwareVersion;
  String get firmwareVersion => _$this._firmwareVersion;
  set firmwareVersion(String firmwareVersion) =>
      _$this._firmwareVersion = firmwareVersion;

  String _lastEnrollmentTime;
  String get lastEnrollmentTime => _$this._lastEnrollmentTime;
  set lastEnrollmentTime(String lastEnrollmentTime) =>
      _$this._lastEnrollmentTime = lastEnrollmentTime;

  ListBuilder<LastKnownNetwork> _lastKnownNetwork;
  ListBuilder<LastKnownNetwork> get lastKnownNetwork =>
      _$this._lastKnownNetwork ??= new ListBuilder<LastKnownNetwork>();
  set lastKnownNetwork(ListBuilder<LastKnownNetwork> lastKnownNetwork) =>
      _$this._lastKnownNetwork = lastKnownNetwork;

  String _macAddress;
  String get macAddress => _$this._macAddress;
  set macAddress(String macAddress) => _$this._macAddress = macAddress;

  String _manufactureDate;
  String get manufactureDate => _$this._manufactureDate;
  set manufactureDate(String manufactureDate) =>
      _$this._manufactureDate = manufactureDate;

  String _meid;
  String get meid => _$this._meid;
  set meid(String meid) => _$this._meid = meid;

  String _model;
  String get model => _$this._model;
  set model(String model) => _$this._model = model;

  String _orderNumber;
  String get orderNumber => _$this._orderNumber;
  set orderNumber(String orderNumber) => _$this._orderNumber = orderNumber;

  String _orgUnitPath;
  String get orgUnitPath => _$this._orgUnitPath;
  set orgUnitPath(String orgUnitPath) => _$this._orgUnitPath = orgUnitPath;

  String _osVersion;
  String get osVersion => _$this._osVersion;
  set osVersion(String osVersion) => _$this._osVersion = osVersion;

  String _platformVersion;
  String get platformVersion => _$this._platformVersion;
  set platformVersion(String platformVersion) =>
      _$this._platformVersion = platformVersion;

  ListBuilder<RecentUsers> _recentUsers;
  ListBuilder<RecentUsers> get recentUsers =>
      _$this._recentUsers ??= new ListBuilder<RecentUsers>();
  set recentUsers(ListBuilder<RecentUsers> recentUsers) =>
      _$this._recentUsers = recentUsers;

  ListBuilder<SystemRamFreeReport> _systemRamFreeReports;
  ListBuilder<SystemRamFreeReport> get systemRamFreeReports =>
      _$this._systemRamFreeReports ??= new ListBuilder<SystemRamFreeReport>();
  set systemRamFreeReports(
          ListBuilder<SystemRamFreeReport> systemRamFreeReports) =>
      _$this._systemRamFreeReports = systemRamFreeReports;

  String _systemRamTotal;
  String get systemRamTotal => _$this._systemRamTotal;
  set systemRamTotal(String systemRamTotal) =>
      _$this._systemRamTotal = systemRamTotal;

  TpmVersionInfoBuilder _tpmVersionInfo;
  TpmVersionInfoBuilder get tpmVersionInfo =>
      _$this._tpmVersionInfo ??= new TpmVersionInfoBuilder();
  set tpmVersionInfo(TpmVersionInfoBuilder tpmVersionInfo) =>
      _$this._tpmVersionInfo = tpmVersionInfo;

  bool _willAutoRenew;
  bool get willAutoRenew => _$this._willAutoRenew;
  set willAutoRenew(bool willAutoRenew) =>
      _$this._willAutoRenew = willAutoRenew;

  DetailedDeviceBuilder();

  DetailedDeviceBuilder get _$this {
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
      _activeTimeRanges = _$v.activeTimeRanges?.toBuilder();
      _autoUpdateExpiration = _$v.autoUpdateExpiration;
      _bootMode = _$v.bootMode;
      _cpuStatusReports = _$v.cpuStatusReports?.toBuilder();
      _deviceFiles = _$v.deviceFiles?.toBuilder();
      _diskVolumeReports = _$v.diskVolumeReports?.toBuilder();
      _dockMacAddress = _$v.dockMacAddress;
      _ethernetMacAddress = _$v.ethernetMacAddress;
      _ethernetMacAddress0 = _$v.ethernetMacAddress0;
      _firmwareVersion = _$v.firmwareVersion;
      _lastEnrollmentTime = _$v.lastEnrollmentTime;
      _lastKnownNetwork = _$v.lastKnownNetwork?.toBuilder();
      _macAddress = _$v.macAddress;
      _manufactureDate = _$v.manufactureDate;
      _meid = _$v.meid;
      _model = _$v.model;
      _orderNumber = _$v.orderNumber;
      _orgUnitPath = _$v.orgUnitPath;
      _osVersion = _$v.osVersion;
      _platformVersion = _$v.platformVersion;
      _recentUsers = _$v.recentUsers?.toBuilder();
      _systemRamFreeReports = _$v.systemRamFreeReports?.toBuilder();
      _systemRamTotal = _$v.systemRamTotal;
      _tpmVersionInfo = _$v.tpmVersionInfo?.toBuilder();
      _willAutoRenew = _$v.willAutoRenew;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetailedDevice other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DetailedDevice;
  }

  @override
  void update(void Function(DetailedDeviceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DetailedDevice build() {
    _$DetailedDevice _$result;
    try {
      _$result = _$v ??
          new _$DetailedDevice._(
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
              notes: notes,
              activeTimeRanges: _activeTimeRanges?.build(),
              autoUpdateExpiration: autoUpdateExpiration,
              bootMode: bootMode,
              cpuStatusReports: _cpuStatusReports?.build(),
              deviceFiles: _deviceFiles?.build(),
              diskVolumeReports: _diskVolumeReports?.build(),
              dockMacAddress: dockMacAddress,
              ethernetMacAddress: ethernetMacAddress,
              ethernetMacAddress0: ethernetMacAddress0,
              firmwareVersion: firmwareVersion,
              lastEnrollmentTime: lastEnrollmentTime,
              lastKnownNetwork: _lastKnownNetwork?.build(),
              macAddress: macAddress,
              manufactureDate: manufactureDate,
              meid: meid,
              model: model,
              orderNumber: orderNumber,
              orgUnitPath: orgUnitPath,
              osVersion: osVersion,
              platformVersion: platformVersion,
              recentUsers: _recentUsers?.build(),
              systemRamFreeReports: _systemRamFreeReports?.build(),
              systemRamTotal: systemRamTotal,
              tpmVersionInfo: _tpmVersionInfo?.build(),
              willAutoRenew: willAutoRenew);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'activeTimeRanges';
        _activeTimeRanges?.build();

        _$failedField = 'cpuStatusReports';
        _cpuStatusReports?.build();
        _$failedField = 'deviceFiles';
        _deviceFiles?.build();
        _$failedField = 'diskVolumeReports';
        _diskVolumeReports?.build();

        _$failedField = 'lastKnownNetwork';
        _lastKnownNetwork?.build();

        _$failedField = 'recentUsers';
        _recentUsers?.build();
        _$failedField = 'systemRamFreeReports';
        _systemRamFreeReports?.build();

        _$failedField = 'tpmVersionInfo';
        _tpmVersionInfo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DetailedDevice', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
