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
part 'tpm_version_info.g.dart';

/// The object holds he Trusted Plataform Modules information.
///
/// See document https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource.

abstract class TpmVersionInfo
    implements Built<TpmVersionInfo, TpmVersionInfoBuilder> {
  /// Anonymus constructor.
  TpmVersionInfo._();

  /// Factory constructor.
  static Serializer<TpmVersionInfo> get serializer =>
      _$tpmVersionInfoSerializer;

  /// Serializer to parse from Json.
  factory TpmVersionInfo([void Function(TpmVersionInfoBuilder) updates]) =
      _$TpmVersionInfo;

  /// Map object from a json string.
  static TpmVersionInfo fromMap(Map<String, dynamic> jsonData) {
    return serializers.deserializeWith(TpmVersionInfo.serializer, jsonData);
  }

  /// Map object into a json string.
  Map<String, dynamic> toMap() {
    return serializers.serializeWith(TpmVersionInfo.serializer, this);
  }

  /// TPM family.
  @nullable
  String get family;

  /// TPM specification level.
  @nullable
  String get specLevel;

  ///TPM manufacturer code.
  @nullable
  String get manufacturer;

  /// TPM model number.
  @nullable
  String get tpmModel;

  /// TPM firmware version.
  @nullable
  String get firmwareVersion;

  /// Vendor ID.
  @nullable
  String get vendorSpecific;
}
