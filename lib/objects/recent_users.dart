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
part 'recent_users.g.dart';

/// The object holds a recent userof the device.
///
/// See document https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource.

abstract class RecentUsers implements Built<RecentUsers, RecentUsersBuilder> {
  /// Anonymus constructor
  RecentUsers._();

  /// Factory constructor
  static Serializer<RecentUsers> get serializer => _$recentUsersSerializer;

  /// Serializer to parse from Json
  factory RecentUsers([void Function(RecentUsersBuilder) updates]) =
      _$RecentUsers;

  /// The type of the user.
  @nullable
  String get type;

  /// The user's email address.
  @nullable
  String get email;
}
