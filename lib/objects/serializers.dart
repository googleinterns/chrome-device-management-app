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
