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

import 'cpu_temperature_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'cpu_status_report.g.dart';

/// The object holds reports of CPU utilization and temperature.
///
/// See document https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource.

abstract class CpuStatusReport
    implements Built<CpuStatusReport, CpuStatusReportBuilder> {
  /// Anonymus constructor.
  CpuStatusReport._();

  /// Serializer to parse from Json.
  static Serializer<CpuStatusReport> get serializer =>
      _$cpuStatusReportSerializer;

  /// Factory constructor.
  factory CpuStatusReport([void Function(CpuStatusReportBuilder) updates]) =
      _$CpuStatusReport;

  /// Map object from a json string.
  static CpuStatusReport fromMap(Map<String, dynamic> jsonData) {
    return serializers.deserializeWith(CpuStatusReport.serializer, jsonData);
  }

  /// Map object into a json string.
  Map<String, dynamic> toMap() {
    return serializers.serializeWith(CpuStatusReport.serializer, this);
  }

  /// Date and time the report was received.
  @nullable
  String get reportTime;

  /// List of the CPU utilization percentage.
  @nullable
  BuiltList<int> get cpuUtilizationPercentageInfo;

  /// List CPU temperature samples.
  @nullable
  BuiltList<CpuTemperatureInfo> get cpuTemperatureInfo;
}
