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

import 'volume_info.dart';

/// The object holds the reports of disk space and other info
/// about mounted/connected volumes.
///
/// See document https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource.

class DiskVolumeReport {
  List<VolumeInfo> _volumeInfo;

  /// Constructor with optional variables.
  DiskVolumeReport([this._volumeInfo]);

  /// Constructor form a json string.
  DiskVolumeReport.fromJson(Map<String, dynamic> json) {
    if (json['volumeInfo'] != null) {
      _volumeInfo = new List<VolumeInfo>();
      json['volumeInfo'].forEach((v) {
        volumeInfo.add(new VolumeInfo.fromJson(v));
      });
    }
  }

  /// Disk volumes.
  List<VolumeInfo> get volumeInfo => _volumeInfo;
}
