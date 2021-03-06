/// Copyright 2020 Google LLC
///
/// Licensed under the Apache License, Version 2.0 (the "License");
/// you may not use this file except in compliance with the License.
/// You may obtain a copy of the License at
///
///     https://www.apache.org/licenses/LICENSE-2.0
///
/// Unless required by applicable law or agreed to in writing, software
/// distributed under the License is distributed on an "AS IS" BASIS,
/// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
/// See the License for the specific language governing permissions and
/// limitations under the License.

import 'package:chrome_management_app/objects/account_devices.dart';
import 'package:chrome_management_app/objects/basic_device.dart';
import 'package:chrome_management_app/objects/serializers.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';

void main() {
  test('Check Json parse for account device', () {
    var account = AccountDevices.fromMap(json.decode(""" 
    {
    "kind": "kind",
    "etag": "etag",
    "chromeosdevices": [
      {
        "kind": "kind 1",
        "etag": "etag 1",
        "deviceId": "device Id 1",
        "serialNumber": "serialNumber 1",
        "status": "status 1",
        "lastSync": "lastSync 1", 
        "supportEndDate": "supportEndDate 1",
        "annotatedUser": "annotated user 1",
        "annotatedLocation": "annotated location 1",
        "annotatedAssetId": "anotated asset id 1",
        "notes": "notes 1"       
      },
      {
        "kind": "kind 2",
        "etag": "etag 2",
        "deviceId": "device Id 2",
        "serialNumber": "serialNumber 2",
        "status": "status 2",
        "lastSync": "lastSync 2", 
        "supportEndDate": "supportEndDate 2",
        "annotatedUser": "annotated user 2",
        "annotatedLocation": "annotated location 2",
        "annotatedAssetId": "anotated asset id 2",
        "notes": "notes 2"       
      }
    ],
    "nextPageToken": "token"
  }
      """));
    expect(account.kind, 'kind');
    expect(account.etag, 'etag');
    for (int i = 0; i < account.chromeosdevices.length; i++) {
      expect(account.chromeosdevices[i].kind, 'kind ${i + 1}');
      expect(account.chromeosdevices[i].etag, 'etag ${i + 1}');
      expect(account.chromeosdevices[i].deviceId, 'device Id ${i + 1}');
      expect(account.chromeosdevices[i].serialNumber, 'serialNumber ${i + 1}');
      expect(account.chromeosdevices[i].status, 'status ${i + 1}');
      expect(account.chromeosdevices[i].lastSync, 'lastSync ${i + 1}');
      expect(
          account.chromeosdevices[i].supportEndDate, 'supportEndDate ${i + 1}');
      expect(
          account.chromeosdevices[i].annotatedUser, 'annotated user ${i + 1}');
      expect(account.chromeosdevices[i].annotatedLocation,
          'annotated location ${i + 1}');
      expect(account.chromeosdevices[i].annotatedAssetId,
          'anotated asset id ${i + 1}');
      expect(account.chromeosdevices[i].notes, 'notes ${i + 1}');
    }
    expect(account.nextPageToken, 'token');

    // Testing rebuilds
    var basic =
        serializers.deserializeWith(BasicDevice.serializer, json.decode(""" {
        "kind": "kind",
        "etag": "etag",
        "deviceId": "device Id",
        "serialNumber": "serialNumber",
        "status": "status",
        "lastSync": "lastSync", 
        "supportEndDate": "supportEndDate",
        "annotatedUser": "annotated user",
        "annotatedLocation": "annotated location",
        "annotatedAssetId": "anotated asset id",
        "notes": "notes"       
      }
      """));
    account = account.rebuild((b) => b.chromeosdevices..add(basic));
    account = account.rebuild((b) => b..nextPageToken = '123');
    expect(account.nextPageToken, '123');
    expect(account.chromeosdevices.length, 3);
  });
}
