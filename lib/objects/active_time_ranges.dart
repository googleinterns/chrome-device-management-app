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
//
/// The object holds active time range of a device.
///
/// See document https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource
class ActiveTimeRanges {
  String _date;
  String _activeTime;

  /// Constructor with optional variables.
  ActiveTimeRanges([this._date, this._activeTime]);

  /// Constructor form a json string.
  ActiveTimeRanges.fromJson(Map<String, dynamic> json) {
    _date = json['date'];
    _activeTime = json['activeTime'];
  }

  /// Date of usage of the device.
  String get date => _date;

  /// Duration of usage of the device in milliseconds.
  String get activeTime => _activeTime;
}
