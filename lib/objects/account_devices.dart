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

import 'basic_device.dart';

///
/// The object holds the complete response of the list of chromeosdevices.
///
/// See the document from
/// https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices/list.
class AccountDevices {
  String _etag;
  String _kind;
  List<BasicDevice> _chromeosdevices;

  /// Token used to access the next page of this result.
  String nextPage;

  /// Constructor with optional variables.
  AccountDevices(
      [this._etag, this._kind, this._chromeosdevices, this.nextPage]);

  /// Constructor form a json string.
  AccountDevices.fromJson(Map<String, dynamic> json) {
    _etag = json['etag'];
    _kind = json['kind'];
    if (json['chromeosdevices'] != null) {
      _chromeosdevices = new List<BasicDevice>();
      json['chromeosdevices'].forEach((value) {
        _chromeosdevices.add(new BasicDevice.fromJson(value));
      });
    }
    nextPage = json['nextPageToken'];
  }

  /// ETag of the resource.
  String get etag => _etag;

  /// The type of the API resource.
  String get kind => _kind;

  /// Chrome OS Device objects.
  List<BasicDevice> get chromeosdevices => _chromeosdevices;
}
