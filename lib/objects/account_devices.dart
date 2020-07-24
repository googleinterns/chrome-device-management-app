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

import 'basic_device.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
part 'account_devices.g.dart';

///
/// The object holds the complete response of the list of chromeosdevices.
///
/// See the document from
/// https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices/list.

abstract class AccountDevices
    implements Built<AccountDevices, AccountDevicesBuilder> {
  /// Anonymus constructor.
  AccountDevices._();

  /// Factory constructor.
  static Serializer<AccountDevices> get serializer =>
      _$accountDevicesSerializer;

  /// Serializer to parse from Json.
  factory AccountDevices([void Function(AccountDevicesBuilder) updates]) =
      _$AccountDevices;

  /// Map object from a json string.
  static AccountDevices fromMap(Map<String, dynamic> jsonData) {
    return serializers.deserializeWith(AccountDevices.serializer, jsonData);
  }

  /// Map object into a json string.
  Map<String, dynamic> toMap() {
    return serializers.serializeWith(AccountDevices.serializer, this);
  }

  /// ETag of the resource.
  @nullable
  String get etag;

  /// The type of the API resource.
  @nullable
  String get kind;

  /// Chrome OS Device objects.
  @nullable
  BuiltList<BasicDevice> get chromeosdevices;

  /// Next page token
  @nullable
  String get nextPageToken;
}
