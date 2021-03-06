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
import 'package:chrome_management_app/objects/cpu_status_report.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check Json parse for cpu status report', () {
    final dummy = CpuStatusReport.fromMap(json.decode("""
      {
        "reportTime": "report time",
        "cpuUtilizationPercentageInfo": [
          1,
          2
        ],
        "cpuTemperatureInfo": [
          {
            "temperature": 1,
            "label": "label 1"
          },
           {
            "temperature": 2,
            "label": "label 2"
          }
        ]
      }
    """));
    expect(dummy.reportTime, 'report time');
    for (int i = 0; i < dummy.cpuUtilizationPercentageInfo.length; i++) {
      expect(dummy.cpuUtilizationPercentageInfo[i], i + 1);
    }
    for (int i = 0; i < dummy.cpuTemperatureInfo.length; i++) {
      expect(dummy.cpuTemperatureInfo[i].label, 'label ${i + 1}');
      expect(dummy.cpuTemperatureInfo[i].temperature, i + 1);
    }
  });
}
