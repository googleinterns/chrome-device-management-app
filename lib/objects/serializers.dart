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

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:chrome_management_app/objects/account_devices.dart';
import 'package:chrome_management_app/objects/active_time_ranges.dart';
import 'package:chrome_management_app/objects/basic_device.dart';
import 'package:chrome_management_app/objects/cpu_status_report.dart';
import 'package:chrome_management_app/objects/cpu_temperature_info.dart';
import 'package:chrome_management_app/objects/detailed_device.dart';
import 'package:chrome_management_app/objects/device_files.dart';
import 'package:chrome_management_app/objects/disk_volume_report.dart';
import 'package:chrome_management_app/objects/last_known_network.dart';
import 'package:chrome_management_app/objects/recent_users.dart';
import 'package:chrome_management_app/objects/system_ram_free_report.dart';
import 'package:chrome_management_app/objects/tpm_version_info.dart';
import 'package:chrome_management_app/objects/volume_info.dart';
part 'serializers.g.dart';

@SerializersFor(const [
  AccountDevices,
  ActiveTimeRanges,
  BasicDevice,
  CpuStatusReport,
  CpuTemperatureInfo,
  DetailedDevice,
  DeviceFiles,
  DiskVolumeReport,
  LastKnownNetwork,
  RecentUsers,
  SystemRamFreeReport,
  TpmVersionInfo,
  VolumeInfo
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
