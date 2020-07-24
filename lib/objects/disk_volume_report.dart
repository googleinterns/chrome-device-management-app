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

import 'package:chrome_management_app/objects/serializers.dart';

import 'volume_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'disk_volume_report.g.dart';

/// The object holds the reports of disk space and other info
/// about mounted/connected volumes.
///
/// See document https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource.

abstract class DiskVolumeReport
    implements Built<DiskVolumeReport, DiskVolumeReportBuilder> {
  /// Anonymus constructor.
  DiskVolumeReport._();

  /// Factory constructor.
  static Serializer<DiskVolumeReport> get serializer =>
      _$diskVolumeReportSerializer;

  /// Serializer to parse from Json.
  factory DiskVolumeReport([void Function(DiskVolumeReportBuilder) updates]) =
      _$DiskVolumeReport;

  /// Map object from a json string.
  static DiskVolumeReport fromMap(Map<String, dynamic> jsonData) {
    return serializers.deserializeWith(DiskVolumeReport.serializer, jsonData);
  }

  /// Map object into a json string.
  Map<String, dynamic> toMap() {
    return serializers.serializeWith(DiskVolumeReport.serializer, this);
  }

  /// Disk volumes.
  @nullable
  BuiltList<VolumeInfo> get volumeInfo;
}
