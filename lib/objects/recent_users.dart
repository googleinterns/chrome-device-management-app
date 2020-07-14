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

/// The object holds a recent userof the device.
///
/// See document https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource.

class RecentUsers {
  String _type;
  String _email;

  /// Constructor with optional variables.
  RecentUsers([this._type, this._email]);

  /// Constructor from a json string.
  RecentUsers.fromJson(Map<String, dynamic> json) {
    _type = json['type'];
    _email = json['email'];
  }

  /// The type of the user.
  String get type => _type;

  /// The user's email address.
  String get email => _email;
}
