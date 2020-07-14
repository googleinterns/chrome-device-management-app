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

/// The object holds a CPU temperature sample.
///
/// See document https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource

class CpuTemperatureInfo {
  String _temperature;
  String _label;

  /// Constructor with optional variables.
  CpuTemperatureInfo([this._temperature, this._label]);

  /// Constructor form a json string.
  CpuTemperatureInfo.fromJson(Map<String, dynamic> json) {
    _temperature = json['temperature'];
    _label = json['label'];
  }

  /// Temperature in Celsius degrees.
  String get temperature => _temperature;

  /// CPU label
  String get label => _label;
}
