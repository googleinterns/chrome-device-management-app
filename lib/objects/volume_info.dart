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

/// The object holds a disk volume information.
///
/// See document https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource.

class VolumeInfo {
  String _volumeId;
  String _storageTotal;
  String _storageFree;

  /// Constructor with optional variables.
  VolumeInfo([this._volumeId, this._storageTotal, this._storageFree]);

  /// Constructor form a json string.
  VolumeInfo.fromJson(Map<String, dynamic> json) {
    _volumeId = json['volumeId'];
    _storageTotal = json['storageTotal'];
    _storageFree = json['storageFree'];
  }

  /// Volume id.
  String get volumeId => _volumeId;

  /// Total disk space in bytes.
  String get storageTotal => _storageTotal;

  /// Free disk space in bytes.
  String get storageFree => _storageFree;
}
