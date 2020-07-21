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

import 'dart:convert';
import 'dart:io';
import 'package:chrome_management_app/objects/serializers.dart';
import 'package:http/http.dart' as http;
import 'package:chrome_management_app/objects/account_devices.dart';
import 'package:chrome_management_app/objects/detailed_device.dart';

/// The model will manage all the API calls to the Directory API.
///
/// See more
/// https://developers.google.com/admin-sdk/directory/v1/guides/manage-chrome-devices.

class ApiCalls {
  /// Http client that will do the https requests.
  http.Client _client;

  ApiCalls(this._client);

  ///Url to get the intial page of the list
  static const DEVICE_LIST_URL =
      'https://www.googleapis.com/admin/directory/v1/customer/my_customer/devices/chromeos?projection=BASIC&maxResults=15';

  ///Url to get the next page of the list of devices with a next page token
  static const DEVICE_LIST_WITH_TOKEN_URL =
      'https://www.googleapis.com/admin/directory/v1/customer/my_customer/devices/chromeos?projection=BASIC&maxResults=15&pageToken=';

  ///Url to get detailed information of a device
  static const DETAILED_DEVICE_URL =
      'https://www.googleapis.com/admin/directory/v1/customer/my_customer/devices/chromeos/';

  /// Calls the Directory API to get a list of devices with max results of 15.
  ///
  /// * [authToken] is the authentication token for API to accept the requests.
  /// * [nextPageToken]  is the next page of the devices list that should
  /// retreive, if it is null the function will request the first page.
  ///
  /// This method returns a [AccountDevices] object.
  getDeviceList(String authToken, String nextPageToken) async {
    var response;
    authToken = 'Bearer $authToken';
    try {
      nextPageToken == null
          ? response = await _client.get(DEVICE_LIST_URL,
              headers: {HttpHeaders.authorizationHeader: authToken})
          : response = await _client.get(
              DEVICE_LIST_WITH_TOKEN_URL + nextPageToken,
              headers: {HttpHeaders.authorizationHeader: authToken});

      // If conection is succesful return a AccountDevices object by parsing the
      // response body
      if (response.statusCode == 200) {
        return serializers.deserializeWith(
            AccountDevices.serializer, json.decode(response.body));
      } else {
        // If that call was not successful, throw an error.
        throw Exception(response.statusCode);
      }
    } finally {
      _client.close();
    }
  }

  /// Calls the Directory API to get the detailed information of a device.
  ///
  /// * [authToken] is the authentication token for API to accept the requests.
  /// * [deviceId] is the ID of the device which its detailed information
  /// will be retrieved.
  ///
  /// This method returns a [DetailedDevice] object.
  dynamic getDetailedDevice(String authToken, String deviceId) async {
    authToken = 'Bearer $authToken';
    try {
      final response = await _client.get(DETAILED_DEVICE_URL + deviceId,
          headers: {HttpHeaders.authorizationHeader: authToken});
      // If conection is succesful return a DetailedDevice object by parsing the
      // response body
      if (response.statusCode == 200) {
        return serializers.deserializeWith(
            DetailedDevice.serializer, json.decode(response.body));
      } else {
        // If that call was not successful, throw an error.
        throw Exception(response.statusCode);
      }
    } finally {
      _client.close();
    }
  }

  // TODO Remote commands Issue #38
}
