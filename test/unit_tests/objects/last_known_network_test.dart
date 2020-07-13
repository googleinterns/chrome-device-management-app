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

import 'dart:convert';
import 'package:chrome_management_app/objects/last_known_network.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check Json parse for last known network', () {
    final dummy = LastKnownNetwork.fromJson(json.decode("""
      {        
        "ipAddress": "ip address",
        "wanIpAddress": "wan ip address"
      }
    """));
    expect(dummy.ipAddress, 'ip address');
    expect(dummy.wanIpAddress, 'wan ip address');
  });
}