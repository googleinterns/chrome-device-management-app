import 'package:chrome_management_app/Objects/detailed_device.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';

void main() {
  test('Check Json parse for full device', () {
    final full = DetailedDevice.fromJson(json.decode("""{
    "kind": "kind",
    "etag": "etag",
    "deviceId": "device ID",
    "serialNumber": "serial number",
    "status": "status",
    "lastSync": "last sync",
    "supportEndDate": "support end date",
    "annotatedUser": "user",
    "annotatedLocation": "location",
    "annotatedAssetId": "asset ID",
    "notes": "notes",
    "model": "model",
    "meid": "meid",
    "orderNumber": "order number",
    "willAutoRenew": true,
    "osVersion": "os version",
    "platformVersion": "plataform version",
    "firmwareVersion": "firmware version",
    "macAddress": "mac address",
    "bootMode": "boot mode",
    "lastEnrollmentTime": "last enrolled date",
    "orgUnitPath": "org unit path",
    "recentUsers": [
      {
        "type": "type 1",
        "email": "email 1"
      },
      {
        "type": "type 2",
        "email": "email 2"
      }
    ],
    "ethernetMacAddress": "ethernet mac address",
    "activeTimeRanges": [
      {
        "date": "date 1",
        "activeTime": "active time 1"
      },
      {
        "date": "date 2",
        "activeTime": "active time 2"
      }
    ],
    "deviceFiles": [
      {
        "name": "name 1",
        "type": "type 1",
        "downloadUrl": "url 1",
        "createTime": "create time 1"
      },
      {
        "name": "name 2",
        "type": "type 2",
        "downloadUrl": "url 2",
        "createTime": "create time 2"
      }
    ],
    "tpmVersionInfo": {
      "family": "family",
      "specLevel": "spec level",
      "manufacturer": "manufacter",
      "tpmModel": "tpm model",
      "firmwareVersion": "firmware version",
      "vendorSpecific": "vendor specific"
    },
    "cpuStatusReports": [
      {
        "reportTime": "report time 1",
        "cpuUtilizationPercentageInfo": [
          "info 1",
          "info 2"
        ],
        "cpuTemperatureInfo": [
          {
            "temperature": "temp 1",
            "label": "label 1"
          },
           {
            "temperature": "temp 2",
            "label": "label 2"
          }
        ]
      }
    ],
    "systemRamTotal": "total ram",
    "systemRamFreeReports": [
      {
        "reportTime": "report time 1",
        "systemRamFreeInfo": [
          "system ram free info 1",
          "system ram free info 2"
        ]
      },
      {
        "reportTime": "report time 2",
        "systemRamFreeInfo": [
          "system ram free info 1",
          "system ram free info 2"
        ]
      }
    ],
    "diskVolumeReports": [
      {
        "volumeInfo": [
          {
            "volumeId": "volume id 1",
            "storageTotal": "storage total 1",
            "storageFree": "storage free 1"
          },
          {
            "volumeId": "volume id 2",
            "storageTotal": "storage total 2",
            "storageFree": "storage free 2"
          }
        ]
      },
      {
        "volumeInfo": [
          {
            "volumeId": "volume id 1",
            "storageTotal": "storage total 1",
            "storageFree": "storage free 1"
          },
          {
            "volumeId": "volume id 2",
            "storageTotal": "storage total 2",
            "storageFree": "storage free 2"
          }
        ]
      }
    ],
    "ethernetMacAddress0": "ethernet mac address 0",
    "dockMacAddress": "dock mac address",
    "manufactureDate": "manufacture date",
    "autoUpdateExpiration": "auto update expiration",
    "lastKnownNetwork": [
      {
        "ipAddress": "ip address 1",
        "wanIpAddress": "wan ip address 1"
      },
      {
        "ipAddress": "ip address 2",
        "wanIpAddress": "wan ip address 2"
      }
    ]
  }
      """));
    expect(full.kind, 'kind');
    expect(full.etag, 'etag');
    expect(full.deviceId, 'device ID');
    expect(full.serialNumber, 'serial number');
    expect(full.status, 'status');
    expect(full.lastSync, 'last sync');
    expect(full.supportEndDate, 'support end date');
    expect(full.annotatedUser, 'user');
    expect(full.annotatedLocation, 'location');
    expect(full.annotatedAssetId, 'asset ID');
    expect(full.notes, 'notes');
    expect(full.model, 'model');
    expect(full.meid, 'meid');
    expect(full.orderNumber, 'order number');
    expect(full.willAutoRenew, true);
    expect(full.osVersion, 'os version');
    expect(full.platformVersion, 'plataform version');
    expect(full.firmwareVersion, 'firmware version');
    expect(full.macAddress, 'mac address');
    expect(full.bootMode, 'boot mode');
    expect(full.lastEnrollmentTime, 'last enrolled date');
    expect(full.orgUnitPath, 'org unit path');

    for (int i = 0; i < full.recentUsers.length; i++) {
      expect(full.recentUsers[i].type, 'type ${i + 1}');
      expect(full.recentUsers[i].email, 'email ${i + 1}');
    }

    expect(full.ethernetMacAddress0, 'ethernet mac address 0');

    for (int i = 0; i < full.activeTimeRanges.length; i++) {
      expect(full.activeTimeRanges[i].date, 'date ${i + 1}');
      expect(full.activeTimeRanges[i].activeTime, 'active time ${i + 1}');
    }
    for (int i = 0; i < full.deviceFiles.length; i++) {
      expect(full.deviceFiles[i].name, 'name ${i + 1}');
      expect(full.deviceFiles[i].type, 'type ${i + 1}');
      expect(full.deviceFiles[i].downloadUrl, 'url ${i + 1}');
      expect(full.deviceFiles[i].createTime, 'create time ${i + 1}');
    }

    expect(full.tpmVersionInfo.family, 'family');
    expect(full.tpmVersionInfo.specLevel, 'spec level');
    expect(full.tpmVersionInfo.manufacturer, 'manufacter');
    expect(full.tpmVersionInfo.tpmModel, 'tpm model');
    expect(full.tpmVersionInfo.firmwareVersion, 'firmware version');
    expect(full.tpmVersionInfo.vendorSpecific, 'vendor specific');

    for (int i = 0; i < full.cpuStatusReports.length; i++) {
      expect(full.cpuStatusReports[i].reportTime, 'report time ${i + 1}');
      for (int j = 0;
          j < full.cpuStatusReports[i].cpuUtilizationPercentageInfo.length;
          j++) {
        expect(full.cpuStatusReports[i].cpuUtilizationPercentageInfo[j],
            'info ${j + 1}');
      }
      for (int j = 0;
          j < full.cpuStatusReports[i].cpuTemperatureInfo.length;
          j++) {
        expect(full.cpuStatusReports[i].cpuTemperatureInfo[j].temperature,
            'temp ${j + 1}');
        expect(full.cpuStatusReports[i].cpuTemperatureInfo[j].label,
            'label ${j + 1}');
      }
    }
    expect(full.systemRamTotal, 'total ram');
    for (int i = 0; i < full.systemRamFreeReports.length; i++) {
      expect(full.systemRamFreeReports[i].reportTime, 'report time ${i + 1}');
      for (int j = 0;
          j < full.systemRamFreeReports[i].systemRamFreeInfo.length;
          j++) {
        expect(full.systemRamFreeReports[i].systemRamFreeInfo[j],
            'system ram free info ${j + 1}');
      }
    }
    for (int i = 0; i < full.diskVolumeReports.length; i++) {
      for (int j = 0; j < full.diskVolumeReports[i].volumeInfo.length; j++) {
        expect(full.diskVolumeReports[i].volumeInfo[j].volumeId,
            'volume id ${j + 1}');
        expect(full.diskVolumeReports[i].volumeInfo[j].storageTotal,
            'storage total ${j + 1}');
        expect(full.diskVolumeReports[i].volumeInfo[j].storageFree,
            'storage free ${j + 1}');
      }
    }
    expect(full.ethernetMacAddress0, 'ethernet mac address 0');
    expect(full.dockMacAddress, 'dock mac address');
    expect(full.manufactureDate, 'manufacture date');
    expect(full.autoUpdateExpiration, 'auto update expiration');

    for (int i = 0; i < full.lastKnownNetwork.length; i++) {
      expect(full.lastKnownNetwork[i].ipAddress, 'ip address ${i + 1}');
      expect(full.lastKnownNetwork[i].wanIpAddress, 'wan ip address ${i + 1}');
    }
  });
}
