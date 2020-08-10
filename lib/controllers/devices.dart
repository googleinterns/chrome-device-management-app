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

import 'package:chrome_management_app/objects/detailed_device.dart';
import 'package:http/http.dart' as http;
import 'package:chrome_management_app/models/api_calls.dart';
import 'package:chrome_management_app/objects/account_devices.dart';

/// Controller to retrieve an Account devices
class Devices {
  /// Method to get account devices
  static Future<AccountDevices> getList(
      http.Client client, String authToken, String nextPageToken) async {
    ApiCalls apiCall = ApiCalls(client);
    AccountDevices accountDevices =
        await apiCall.getDeviceList(authToken, nextPageToken).catchError((e) {
      throw e;
    });
    return accountDevices;
  }

  /// Method to get a detailed device from its device ID.
  static Future<DetailedDevice> getDetailedDevice(
      http.Client client, String authToken, String deviceId) async {
    ApiCalls apiCall = ApiCalls(client);
    DetailedDevice device =
        await apiCall.getDetailedDevice(authToken, deviceId).catchError((e) {
      throw e;
    });
    return device;
  }
}
