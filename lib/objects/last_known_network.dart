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

/// The object holds the device last used network.
///
/// See document https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource.

class LastKnownNetwork {
  String _ipAddress;
  String _wanIpAddress;

  /// Constructor with optional variables.
  LastKnownNetwork([this._ipAddress, this._wanIpAddress]);

  /// Constructor from a json string.
  LastKnownNetwork.fromJson(Map<String, dynamic> json) {
    _ipAddress = json['ipAddress'];
    _wanIpAddress = json['wanIpAddress'];
  }

  /// The IP address.
  String get ipAddress => _ipAddress;

  /// The WAN IP address.
  String get wanIpAddress => _wanIpAddress;
}
