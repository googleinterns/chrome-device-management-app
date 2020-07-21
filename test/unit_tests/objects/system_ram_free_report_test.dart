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
import 'package:chrome_management_app/objects/serializers.dart';
import 'package:chrome_management_app/objects/system_ram_free_report.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check Json parse for system ram free report', () {
    final dummy = serializers.deserializeWith(
        SystemRamFreeReport.serializer, json.decode("""
      {
        "reportTime": "report time",
        "systemRamFreeInfo": 
        [
          "system ram free info 1",
          "system ram free info 2"
        ]
      }
    """));
    expect(dummy.reportTime, 'report time');
    for (int i = 0; i < dummy.systemRamFreeInfo.length; i++) {
      expect(dummy.systemRamFreeInfo[i], 'system ram free info ${i + 1}');
    }
  });
}
