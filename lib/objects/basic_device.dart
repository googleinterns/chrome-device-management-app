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
part 'basic_device.g.dart';

/// The object holds the device response object.
///
/// Include all metadata excepts the model, meid,orderNumber, willAutoRenew,
/// osVersion,platformVersion, firmwareVersion, macAddress, and bootMode
/// properties.
/// See the document from
/// https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices/get.

abstract class BasicDevice implements Built<BasicDevice, BasicDeviceBuilder> {
  /// Anonymus constructor
  BasicDevice._();

  /// Factory constructor
  static Serializer<BasicDevice> get serializer => _$basicDeviceSerializer;

  /// Serializer to parse from Json
  factory BasicDevice([void Function(BasicDeviceBuilder) updates]) =
      _$BasicDevice;

  /// Type of resource.
  @nullable
  String get kind;

  /// ETag of the resource.
  @nullable
  String get etag;

  /// The unique ID of the Chrome device.
  @nullable
  String get deviceId;

  /// The Chrome device serial number entered when the device was enabled.
  @nullable
  String get serialNumber;

  /// The status of the device.
  @nullable
  String get status;

  /// The date and time the device was last synchronized with the policy
  /// settings in the Admin console.
  @nullable
  String get lastSync;

  /// The final date the device will be supported.
  @nullable
  String get supportEndDate;

  /// The user of the device as noted by the administrator.
  @nullable
  String get annotatedUser;

  /// The address or location of the device as noted by the administrator.
  @nullable
  String get annotatedLocation;

  /// The asset identifier as noted by an administrator or specified
  /// during enrollment.
  @nullable
  String get annotatedAssetId;

  /// Notes about this device added by the administrator.
  @nullable
  String get notes;
}
