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

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:chrome_management_app/objects/serializers.dart';
part 'cpu_temperature_info.g.dart';

/// The object holds a CPU temperature sample.
///
/// See document https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource.

abstract class CpuTemperatureInfo
    implements Built<CpuTemperatureInfo, CpuTemperatureInfoBuilder> {
  /// Anonymus constructor.
  CpuTemperatureInfo._();

  /// Factory constructor.
  static Serializer<CpuTemperatureInfo> get serializer =>
      _$cpuTemperatureInfoSerializer;

  /// Serializer to parse from Json.
  factory CpuTemperatureInfo(
          [void Function(CpuTemperatureInfoBuilder) updates]) =
      _$CpuTemperatureInfo;

  /// Map object from a json string.
  static CpuTemperatureInfo fromMap(Map<String, dynamic> jsonData) {
    return serializers.deserializeWith(CpuTemperatureInfo.serializer, jsonData);
  }

  /// Map object into a json string.
  Map<String, dynamic> toMap() {
    return serializers.serializeWith(CpuTemperatureInfo.serializer, this);
  }

  /// Temperature in Celsius degrees.
  @nullable
  int get temperature;

  /// CPU label
  @nullable
  String get label;
}
