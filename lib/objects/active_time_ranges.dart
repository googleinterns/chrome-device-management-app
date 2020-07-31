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
part 'active_time_ranges.g.dart';

/// The object holds active time range of a device.
///
/// See document https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource.

abstract class ActiveTimeRanges
    implements Built<ActiveTimeRanges, ActiveTimeRangesBuilder> {
  /// Anonymus constructor.
  ActiveTimeRanges._();

  /// Factory constructor
  static Serializer<ActiveTimeRanges> get serializer =>
      _$activeTimeRangesSerializer;

  /// Serializer to parse from Json.
  factory ActiveTimeRanges([void Function(ActiveTimeRangesBuilder) updates]) =
      _$ActiveTimeRanges;

  /// Map object from a json string.
  static ActiveTimeRanges fromMap(Map<String, dynamic> jsonData) {
    return serializers.deserializeWith(ActiveTimeRanges.serializer, jsonData);
  }

  /// Map object into a json string.
  Map<String, dynamic> toMap() {
    return serializers.serializeWith(ActiveTimeRanges.serializer, this);
  }

  /// Date of usage of the device.
  @nullable
  String get date;

  /// Duration of usage of the device in milliseconds.
  @nullable
  int get activeTime;
}
