// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

/// The object holds the device response object.
///
/// Include all metadata fields, see the document from
/// https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices/get
/// , and
/// https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource.

import 'active_time_ranges.dart';
import 'basic_device.dart';
import 'cpu_status_report.dart';
import 'device_files.dart';
import 'disk_volume_report.dart';
import 'last_known_network.dart';
import 'recent_users.dart';
import 'system_ram_free_report.dart';
import 'tpm_version_info.dart';

class DetailedDevice extends BasicDevice {
  String _model;
  String _meid;
  String _orderNumber;
  bool _willAutoRenew;
  String _osVersion;
  String _platformVersion;
  String _firmwareVersion;
  String _macAddress;
  String _bootMode;
  String _lastEnrollmentTime;
  String _orgUnitPath;
  List<RecentUsers> _recentUsers;
  String _ethernetMacAddress;
  List<ActiveTimeRanges> _activeTimeRanges;
  List<DeviceFiles> _deviceFiles;
  TpmVersionInfo _tpmVersionInfo;
  List<CpuStatusReport> _cpuStatusReports;
  String _systemRamTotal;
  List<SystemRamFreeReport> _systemRamFreeReports;
  List<DiskVolumeReport> _diskVolumeReports;
  String _ethernetMacAddress0;
  String _dockMacAddress;
  String _manufactureDate;
  String _autoUpdateExpiration;
  List<LastKnownNetwork> _lastKnownNetwork;

  /// Constructor with optional variables.
  DetailedDevice(
      [kind,
      etag,
      deviceId,
      serialNumber,
      status,
      lastSync,
      supportEndDate,
      annotatedUser,
      annotatedLocation,
      annotatedAssetId,
      notes,
      this._model,
      this._meid,
      this._orderNumber,
      this._willAutoRenew,
      this._osVersion,
      this._platformVersion,
      this._firmwareVersion,
      this._macAddress,
      this._bootMode,
      this._lastEnrollmentTime,
      this._orgUnitPath,
      this._recentUsers,
      this._ethernetMacAddress,
      this._activeTimeRanges,
      this._deviceFiles,
      this._tpmVersionInfo,
      this._cpuStatusReports,
      this._systemRamTotal,
      this._systemRamFreeReports,
      this._diskVolumeReports,
      this._ethernetMacAddress0,
      this._dockMacAddress,
      this._manufactureDate,
      this._autoUpdateExpiration,
      this._lastKnownNetwork])
      : super(
            kind,
            etag,
            deviceId,
            serialNumber,
            status,
            lastSync,
            supportEndDate,
            annotatedUser,
            annotatedLocation,
            annotatedAssetId,
            notes);

  /// Constructor form a json string.
  DetailedDevice.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    _model = json['model'];
    _meid = json['meid'];
    _orderNumber = json['orderNumber'];
    _willAutoRenew = json['willAutoRenew'];
    _osVersion = json['osVersion'];
    _platformVersion = json['platformVersion'];
    _firmwareVersion = json['firmwareVersion'];
    _macAddress = json['macAddress'];
    _bootMode = json['bootMode'];
    _lastEnrollmentTime = json['lastEnrollmentTime'];
    _orgUnitPath = json['orgUnitPath'];
    if (json['recentUsers'] != null) {
      _recentUsers = new List<RecentUsers>();
      json['recentUsers'].forEach((v) {
        _recentUsers.add(new RecentUsers.fromJson(v));
      });
    }
    _ethernetMacAddress = json['ethernetMacAddress'];
    if (json['activeTimeRanges'] != null) {
      _activeTimeRanges = new List<ActiveTimeRanges>();
      json['activeTimeRanges'].forEach((v) {
        _activeTimeRanges.add(new ActiveTimeRanges.fromJson(v));
      });
    }
    if (json['deviceFiles'] != null) {
      _deviceFiles = new List<DeviceFiles>();
      json['deviceFiles'].forEach((v) {
        _deviceFiles.add(new DeviceFiles.fromJson(v));
      });
    }
    _tpmVersionInfo = json['tpmVersionInfo'] != null
        ? new TpmVersionInfo.fromJson(json['tpmVersionInfo'])
        : null;
    if (json['cpuStatusReports'] != null) {
      _cpuStatusReports = new List<CpuStatusReport>();
      json['cpuStatusReports'].forEach((v) {
        _cpuStatusReports.add(new CpuStatusReport.fromJson(v));
      });
    }
    _systemRamTotal = json['systemRamTotal'];
    if (json['systemRamFreeReports'] != null) {
      _systemRamFreeReports = new List<SystemRamFreeReport>();
      json['systemRamFreeReports'].forEach((v) {
        _systemRamFreeReports.add(new SystemRamFreeReport.fromJson(v));
      });
    }
    if (json['diskVolumeReports'] != null) {
      _diskVolumeReports = new List<DiskVolumeReport>();
      json['diskVolumeReports'].forEach((v) {
        _diskVolumeReports.add(new DiskVolumeReport.fromJson(v));
      });
    }
    _ethernetMacAddress0 = json['ethernetMacAddress0'];
    _dockMacAddress = json['dockMacAddress'];
    _manufactureDate = json['manufactureDate'];
    _autoUpdateExpiration = json['autoUpdateExpiration'];
    if (json['lastKnownNetwork'] != null) {
      _lastKnownNetwork = new List<LastKnownNetwork>();
      json['lastKnownNetwork'].forEach((v) {
        _lastKnownNetwork.add(new LastKnownNetwork.fromJson(v));
      });
    }
  }

  /// Active time ranges.
  List<ActiveTimeRanges> get activeTimeRanges => _activeTimeRanges;

  /// Timestamp after which the device will stop receving Chrome updates or
  /// support.
  String get autoUpdateExpiration => _autoUpdateExpiration;

  /// Boot mode for the device.
  String get bootMode => _bootMode;

  /// Reports of CPU utilization and temperature.
  List<CpuStatusReport> get cpuStatusReports => _cpuStatusReports;

  /// Device files to download.
  List<DeviceFiles> get deviceFiles => _deviceFiles;

  /// Reports of disk space and other info about mounted/connected volumes.
  List<DiskVolumeReport> get diskVolumeReports => _diskVolumeReports;

  /// Built-in MAC address for the docking station that the device connected to.
  String get dockMacAddress => _dockMacAddress;

  /// MAC address on the ethernet network interface.
  String get ethernetMacAddress => _ethernetMacAddress;

  /// MAC address used by the Chromebook's internal ethernet port,
  /// and for onboard network.
  String get ethernetMacAddress0 => _ethernetMacAddress0;

  /// Firmware version.
  String get firmwareVersion => _firmwareVersion;

  /// The date and time the device was last enrolled.
  String get lastEnrollmentTime => _lastEnrollmentTime;

  /// Last used networks.
  List<LastKnownNetwork> get lastKnownNetwork => _lastKnownNetwork;

  /// Wireless MAC address.
  String get macAddress => _macAddress;

  /// Date the device was manufactured.
  String get manufactureDate => _manufactureDate;

  /// Mobile Equpment Identifier or International Mobile Equipment Identity for
  /// the 3G mobile card.
  String get meid => _meid;

  /// Model information.
  String get model => _model;

  /// Order number.
  String get orderNumber => _orderNumber;

  /// Full parent path with the organizational unit's name associated with the
  /// device.
  String get orgUnitPath => _orgUnitPath;

  /// Operating system version.
  String get osVersion => _osVersion;

  /// Platform version
  String get platformVersion => _platformVersion;

  /// Recent users.
  List<RecentUsers> get recentUsers => _recentUsers;

  /// Reports of amounts of available RAM memory.
  List<SystemRamFreeReport> get systemRamFreeReports => _systemRamFreeReports;

  /// Total RAM on the device in bytes.
  String get systemRamTotal => _systemRamTotal;

  /// Trusted Plataform Module information.
  TpmVersionInfo get tpmVersionInfo => _tpmVersionInfo;

  /// Determines if the device will auto renew its support after the support
  /// end date.
  bool get willAutoRenew => _willAutoRenew;
}
