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

/// The object holds a device file to download.
///
/// See document https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource.

class DeviceFiles {
  String _name;
  String _type;
  String _downloadUrl;
  String _createTime;

  /// Constructor with optional variables.
  DeviceFiles([this._name, this._type, this._downloadUrl, this._createTime]);

  /// Constructor from a json string.
  DeviceFiles.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _type = json['type'];
    _downloadUrl = json['downloadUrl'];
    _createTime = json['createTime'];
  }

  /// File name.
  String get name => _name;

  /// File type.
  String get type => _type;

  /// File download URL.
  String get downloadUrl => _downloadUrl;

  /// Date and time the file was created.
  String get createTime => _createTime;
}
