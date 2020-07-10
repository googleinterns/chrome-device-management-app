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

import 'package:chrome_management_app/Objects/basic_device.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';

void main() {
  test('Check Json parse for basic device', () {
    final basic = BasicDevice.fromJson(json.decode(""" {
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
    expect(basic.kind, 'kind');
    expect(basic.etag, 'etag');
    expect(basic.deviceId, 'device Id');
    expect(basic.serialNumber, 'serialNumber');
    expect(basic.status, 'status');
    expect(basic.lastSync, 'lastSync');
    expect(basic.supportEndDate, 'supportEndDate');
    expect(basic.annotatedUser, 'annotated user');
    expect(basic.annotatedLocation, 'annotated location');
    expect(basic.annotatedAssetId, 'anotated asset id');
    expect(basic.notes, 'notes');
  });
}
