/// Copyright 2020 Google LLC
///
/// Licensed under the Apache License, Version 2.0 (the "License");
/// you may not use this file except in compliance with the License.
/// You may obtain a copy of the License at
///
///     https://www.apache.org/licenses/LICENSE-2.0
///
/// Unless required by applicable law or agreed to in writing, software
/// distributed under the License is distributed on an "AS IS" BASIS,
/// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
/// See the License for the specific language governing permissions and
/// limitations under the License.

import 'basic_device.dart';

class AccountDevices {
  String etag;
  String kind;
  String nextPage;
  List<BasicDevice> chromeosdevices;

  AccountDevices({this.etag, this.kind, this.chromeosdevices, this.nextPage});

  AccountDevices.fromJson(Map<String, dynamic> json) {
    etag = json['etag'];
    kind = json['kind'];
    if (json['chromeosdevices'] != null) {
      chromeosdevices = new List<BasicDevice>();
      json['chromeosdevices'].forEach((value) {
        chromeosdevices.add(new BasicDevice.fromJson(value));
      });
    }
    nextPage = json['nextPageToken'];
  }
}
