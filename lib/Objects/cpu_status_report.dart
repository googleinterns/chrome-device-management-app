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

import 'cpu_temperature_info.dart';

class CpuStatusReport {
  String reportTime;
  List<String> cpuUtilizationPercentageInfo;
  List<CpuTemperatureInfo> cpuTemperatureInfo;

  CpuStatusReport(
      {this.reportTime,
      this.cpuUtilizationPercentageInfo,
      this.cpuTemperatureInfo});

  CpuStatusReport.fromJson(Map<String, dynamic> json) {
    reportTime = json['reportTime'];
    cpuUtilizationPercentageInfo =
        json['cpuUtilizationPercentageInfo'].cast<String>();
    if (json['cpuTemperatureInfo'] != null) {
      cpuTemperatureInfo = new List<CpuTemperatureInfo>();
      json['cpuTemperatureInfo'].forEach((v) {
        cpuTemperatureInfo.add(new CpuTemperatureInfo.fromJson(v));
      });
    }
  }
}
