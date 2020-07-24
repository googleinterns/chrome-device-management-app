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
part 'last_known_network.g.dart';

/// The object holds the device last used network.
///
/// See document https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource.

abstract class LastKnownNetwork
    implements Built<LastKnownNetwork, LastKnownNetworkBuilder> {
  /// Anonymus constructor.
  LastKnownNetwork._();

  /// Factory constructor.
  static Serializer<LastKnownNetwork> get serializer =>
      _$lastKnownNetworkSerializer;

  /// Serializer to parse from Json.
  factory LastKnownNetwork([void Function(LastKnownNetworkBuilder) updates]) =
      _$LastKnownNetwork;

  /// Map object from a json string.
  static LastKnownNetwork fromMap(Map<String, dynamic> jsonData) {
    return serializers.deserializeWith(LastKnownNetwork.serializer, jsonData);
  }

  /// Map object into a json string.
  Map<String, dynamic> toMap() {
    return serializers.serializeWith(LastKnownNetwork.serializer, this);
  }

  /// The IP address.
  @nullable
  String get ipAddress;

  /// The WAN IP address.
  @nullable
  String get wanIpAddress;
}
