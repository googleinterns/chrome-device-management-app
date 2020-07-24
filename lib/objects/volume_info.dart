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
part 'volume_info.g.dart';

/// The object holds a disk volume information.
///
/// See document https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource.

abstract class VolumeInfo implements Built<VolumeInfo, VolumeInfoBuilder> {
  /// Anonymus constructor.
  VolumeInfo._();

  /// Factory constructor.
  static Serializer<VolumeInfo> get serializer => _$volumeInfoSerializer;

  /// Serializer to parse from Json.
  factory VolumeInfo([void Function(VolumeInfoBuilder) updates]) = _$VolumeInfo;

  /// Map object from a json string.
  static VolumeInfo fromMap(Map<String, dynamic> jsonData) {
    return serializers.deserializeWith(VolumeInfo.serializer, jsonData);
  }

  /// Map object into a json string.
  Map<String, dynamic> toMap() {
    return serializers.serializeWith(VolumeInfo.serializer, this);
  }

  /// Volume id.
  @nullable
  String get volumeId;

  /// Total disk space in bytes.
  @nullable
  String get storageTotal;

  /// Free disk space in bytes.
  @nullable
  String get storageFree;
}
