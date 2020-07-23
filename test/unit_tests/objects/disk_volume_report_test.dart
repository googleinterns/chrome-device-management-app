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

import 'dart:convert';
import 'package:chrome_management_app/objects/disk_volume_report.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check Json parse for volume info', () {
    final dummy = DiskVolumeReport.fromMap(json.decode("""
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
    """));
    for (int i = 0; i < dummy.volumeInfo.length; i++) {
      expect(dummy.volumeInfo[i].volumeId, 'volume id ${i + 1}');
      expect(dummy.volumeInfo[i].storageTotal, 'storage total ${i + 1}');
      expect(dummy.volumeInfo[i].storageFree, 'storage free ${i + 1}');
    }
  });
}
