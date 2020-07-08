import 'basic_device.dart';
import 'active_time_ranges.dart';
import 'cpu_status_report.dart';
import 'device_files.dart';
import 'disk_volume_report.dart';
import 'last_known_network.dart';
import 'recent_users.dart';
import 'system_ram_free_report.dart';
import 'tpm_version_info.dart';

class DetailedDevice extends BasicDevice {
  String model;
  String meid;
  String orderNumber;
  bool willAutoRenew;
  String osVersion;
  String platformVersion;
  String firmwareVersion;
  String macAddress;
  String bootMode;
  String lastEnrollmentTime;
  String orgUnitPath;
  List<RecentUsers> recentUsers;
  String ethernetMacAddress;
  List<ActiveTimeRanges> activeTimeRanges;
  List<DeviceFiles> deviceFiles;
  TpmVersionInfo tpmVersionInfo;
  List<CpuStatusReport> cpuStatusReports;
  String systemRamTotal;
  List<SystemRamFreeReport> systemRamFreeReports;
  List<DiskVolumeReport> diskVolumeReports;
  String ethernetMacAddress0;
  String dockMacAddress;
  String manufactureDate;
  String autoUpdateExpiration;
  List<LastKnownNetwork> lastKnownNetwork;

  DetailedDevice(
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
      notes,
      this.model,
      this.meid,
      this.orderNumber,
      this.willAutoRenew,
      this.osVersion,
      this.platformVersion,
      this.firmwareVersion,
      this.macAddress,
      this.bootMode,
      this.lastEnrollmentTime,
      this.orgUnitPath,
      this.recentUsers,
      this.ethernetMacAddress,
      this.activeTimeRanges,
      this.deviceFiles,
      this.tpmVersionInfo,
      this.cpuStatusReports,
      this.systemRamTotal,
      this.systemRamFreeReports,
      this.diskVolumeReports,
      this.ethernetMacAddress0,
      this.dockMacAddress,
      this.manufactureDate,
      this.autoUpdateExpiration,
      this.lastKnownNetwork)
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

  DetailedDevice.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    kind = json['kind'];
    etag = json['etag'];
    deviceId = json['deviceId'];
    serialNumber = json['serialNumber'];
    status = json['status'];
    lastSync = json['lastSync'];
    supportEndDate = json['supportEndDate'];
    annotatedUser = json['annotatedUser'];
    annotatedLocation = json['annotatedLocation'];
    annotatedAssetId = json['annotatedAssetId'];
    notes = json['notes'];
    model = json['model'];
    meid = json['meid'];
    orderNumber = json['orderNumber'];
    willAutoRenew = json['willAutoRenew'];
    osVersion = json['osVersion'];
    platformVersion = json['platformVersion'];
    firmwareVersion = json['firmwareVersion'];
    macAddress = json['macAddress'];
    bootMode = json['bootMode'];
    lastEnrollmentTime = json['lastEnrollmentTime'];
    orgUnitPath = json['orgUnitPath'];
    if (json['recentUsers'] != null) {
      recentUsers = new List<RecentUsers>();
      json['recentUsers'].forEach((v) {
        recentUsers.add(new RecentUsers.fromJson(v));
      });
    }
    ethernetMacAddress = json['ethernetMacAddress'];
    if (json['activeTimeRanges'] != null) {
      activeTimeRanges = new List<ActiveTimeRanges>();
      json['activeTimeRanges'].forEach((v) {
        activeTimeRanges.add(new ActiveTimeRanges.fromJson(v));
      });
    }
    if (json['deviceFiles'] != null) {
      deviceFiles = new List<DeviceFiles>();
      json['deviceFiles'].forEach((v) {
        deviceFiles.add(new DeviceFiles.fromJson(v));
      });
    }
    tpmVersionInfo = json['tpmVersionInfo'] != null
        ? new TpmVersionInfo.fromJson(json['tpmVersionInfo'])
        : null;
    if (json['cpuStatusReports'] != null) {
      cpuStatusReports = new List<CpuStatusReport>();
      json['cpuStatusReports'].forEach((v) {
        cpuStatusReports.add(new CpuStatusReport.fromJson(v));
      });
    }
    systemRamTotal = json['systemRamTotal'];
    if (json['systemRamFreeReports'] != null) {
      systemRamFreeReports = new List<SystemRamFreeReport>();
      json['systemRamFreeReports'].forEach((v) {
        systemRamFreeReports.add(new SystemRamFreeReport.fromJson(v));
      });
    }
    if (json['diskVolumeReports'] != null) {
      diskVolumeReports = new List<DiskVolumeReport>();
      json['diskVolumeReports'].forEach((v) {
        diskVolumeReports.add(new DiskVolumeReport.fromJson(v));
      });
    }
    ethernetMacAddress0 = json['ethernetMacAddress0'];
    dockMacAddress = json['dockMacAddress'];
    manufactureDate = json['manufactureDate'];
    autoUpdateExpiration = json['autoUpdateExpiration'];
    if (json['lastKnownNetwork'] != null) {
      lastKnownNetwork = new List<LastKnownNetwork>();
      json['lastKnownNetwork'].forEach((v) {
        lastKnownNetwork.add(new LastKnownNetwork.fromJson(v));
      });
    }
  }
}
