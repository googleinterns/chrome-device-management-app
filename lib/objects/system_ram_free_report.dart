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

/// The object holds a report of amounts of available RAM memory.
///
/// See document https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource.

class SystemRamFreeReport {
  String _reportTime;
  List<String> _systemRamFreeInfo;

  /// Constructor with optional variables.
  SystemRamFreeReport([this._reportTime, this._systemRamFreeInfo]);

  /// Constructor form a json string.
  SystemRamFreeReport.fromJson(Map<String, dynamic> json) {
    _reportTime = json['reportTime'];
    _systemRamFreeInfo = json['systemRamFreeInfo'].cast<String>();
  }

  /// Date and time the report was received.
  String get reportTime => _reportTime;

  /// System free RAM information.
  List<String> get systemRamFreeInfo => _systemRamFreeInfo;
}
