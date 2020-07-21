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

import 'active_time_ranges.dart';
import 'cpu_status_report.dart';
import 'device_files.dart';
import 'disk_volume_report.dart';
import 'last_known_network.dart';
import 'recent_users.dart';
import 'system_ram_free_report.dart';
import 'tpm_version_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'detailed_device.g.dart';

/// The object holds the device response object.
///
/// Include all metadata fields, see the document from
/// https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices/get
/// , and
/// https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource.

abstract class DetailedDevice
    implements Built<DetailedDevice, DetailedDeviceBuilder> {
  /// Anonymus constructor
  DetailedDevice._();

  /// Factory constructor
  static Serializer<DetailedDevice> get serializer =>
      _$detailedDeviceSerializer;

  /// Serializer to parse from Json
  factory DetailedDevice([void Function(DetailedDeviceBuilder) updates]) =
      _$DetailedDevice;

  /// Type of resource.
  @nullable
  String get kind;

  /// ETag of the resource.
  @nullable
  String get etag;

  /// The unique ID of the Chrome device.
  @nullable
  String get deviceId;

  /// The Chrome device serial number entered when the device was enabled.
  @nullable
  String get serialNumber;

  /// The status of the device.
  @nullable
  String get status;

  /// The date and time the device was last synchronized with the policy
  /// settings in the Admin console.
  @nullable
  String get lastSync;

  /// The final date the device will be supported.
  @nullable
  String get supportEndDate;

  /// The user of the device as noted by the administrator.
  @nullable
  String get annotatedUser;

  /// The address or location of the device as noted by the administrator.
  @nullable
  String get annotatedLocation;

  /// The asset identifier as noted by an administrator or specified
  /// during enrollment.
  @nullable
  String get annotatedAssetId;

  /// Notes about this device added by the administrator.
  @nullable
  String get notes;

  /// Active time ranges.
  @nullable
  BuiltList<ActiveTimeRanges> get activeTimeRanges;

  /// Timestamp after which the device will stop receving Chrome updates or
  /// support.
  @nullable
  String get autoUpdateExpiration;

  /// Boot mode for the device.
  @nullable
  String get bootMode;

  /// Reports of CPU utilization and temperature.
  @nullable
  BuiltList<CpuStatusReport> get cpuStatusReports;

  /// Device files to download.
  @nullable
  BuiltList<DeviceFiles> get deviceFiles;

  /// Reports of disk space and other info about mounted/connected volumes.
  @nullable
  BuiltList<DiskVolumeReport> get diskVolumeReports;

  /// Built-in MAC address for the docking station that the device connected to.
  @nullable
  String get dockMacAddress;

  /// MAC address on the ethernet network interface.
  @nullable
  String get ethernetMacAddress;

  /// MAC address used by the Chromebook's internal ethernet port,
  /// and for onboard network.
  @nullable
  String get ethernetMacAddress0;

  /// Firmware version.
  @nullable
  String get firmwareVersion;

  /// The date and time the device was last enrolled.
  @nullable
  String get lastEnrollmentTime;

  /// Last used networks.
  @nullable
  BuiltList<LastKnownNetwork> get lastKnownNetwork;

  /// Wireless MAC address.
  @nullable
  String get macAddress;

  /// Date the device was manufactured.
  @nullable
  String get manufactureDate;

  /// Mobile Equpment Identifier or International Mobile Equipment Identity for
  /// the 3G mobile card.
  @nullable
  String get meid;

  /// Model information.
  @nullable
  String get model;

  /// Order number.
  @nullable
  String get orderNumber;

  /// Full parent path with the organizational unit's name associated with the
  /// device.
  @nullable
  String get orgUnitPath;

  /// Operating system version.
  @nullable
  String get osVersion;

  /// Platform version
  @nullable
  String get platformVersion;

  /// Recent users.
  @nullable
  BuiltList<RecentUsers> get recentUsers;

  /// Reports of amounts of available RAM memory.
  @nullable
  BuiltList<SystemRamFreeReport> get systemRamFreeReports;

  /// Total RAM on the device in bytes.
  @nullable
  String get systemRamTotal;

  /// Trusted Plataform Module information.
  @nullable
  TpmVersionInfo get tpmVersionInfo;

  /// Determines if the device will auto renew its support after the support
  /// end date.
  @nullable
  bool get willAutoRenew;
}
