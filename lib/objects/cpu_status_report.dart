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

import 'cpu_temperature_info.dart';

/// The object holds reports of CPU utilization and temperature.
///
/// See document https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource

class CpuStatusReport {
  String _reportTime;
  List<String> _cpuUtilizationPercentageInfo;
  List<CpuTemperatureInfo> _cpuTemperatureInfo;

  /// Constructor with optional variables.
  CpuStatusReport(
      [this._reportTime,
      this._cpuUtilizationPercentageInfo,
      this._cpuTemperatureInfo]);

  /// Constructor form a json string.
  CpuStatusReport.fromJson(Map<String, dynamic> json) {
    _reportTime = json['reportTime'];
    _cpuUtilizationPercentageInfo =
        json['cpuUtilizationPercentageInfo'].cast<String>();
    if (json['cpuTemperatureInfo'] != null) {
      _cpuTemperatureInfo = new List<CpuTemperatureInfo>();
      json['cpuTemperatureInfo'].forEach((v) {
        _cpuTemperatureInfo.add(new CpuTemperatureInfo.fromJson(v));
      });
    }
  }

  /// Date and time the report was received.
  String get reportTime => _reportTime;

  /// List of the CPU utilization percentage.
  List<String> get cpuUtilizationPercentageInfo =>
      _cpuUtilizationPercentageInfo;

  /// List CPU temperature samples.
  List<CpuTemperatureInfo> get cpuTemperatureInfo => _cpuTemperatureInfo;
}
