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
import 'package:chrome_management_app/controllers/widget/filter_search_bar.dart';
import 'package:chrome_management_app/controllers/widget/remote_commands.dart';
import 'package:chrome_management_app/models/error_handler.dart';
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

  /// Url prefix
  static const PREFIX = 'https://www.googleapis.com/admin/directory/v1';

  ///Url to get the intial page of the list
  static const DEVICE_LIST_URL =
      '/customer/my_customer/devices/chromeos?projection=BASIC&maxResults=15';

  ///Url to get the next page of the list of devices with a next page token
  static const DEVICE_LIST_WITH_TOKEN_URL =
      '/customer/my_customer/devices/chromeos?projection=BASIC&maxResults=15&pageToken=';

  ///Url to get detailed information of a device
  static const DETAILED_DEVICE_URL = '/customer/my_customer/devices/chromeos/';

  /// Url to do a action on a device.
  static const ACTION_URL = '/action';

  /// List of deprovision reasons.
  Map<Reasons, String> deprovisionReasons = {
    Reasons.different_model_replacement: 'different_model_replacement',
    Reasons.retiring_device: 'retiring_device',
    Reasons.same_model_replacement: 'same_model_replacement',
    Reasons.upgrade_transfer: 'upgrade_transfer'
  };

  /// Map to stroe the query code for each filter.
  Map<Filters, String> queryCode = {
    Filters.asset_id: 'asset_id',
    Filters.date_registered: 'register',
    Filters.ethernet_mac: 'ethernet_mac',
    Filters.last_sync: 'sync',
    Filters.location: 'location',
    Filters.notes: 'note',
    Filters.recent_user: 'recent_user',
    Filters.serial_number: 'id',
    Filters.status: 'status',
    Filters.user: 'user',
    Filters.wifi_mac: 'wifi_mac'
  };

  /// Calls the Directory API to get a list of devices with max results of 15.
  ///
  /// * [authToken] is the authentication token for API to accept the requests.
  /// * [nextPageToken]  is the next page of the devices list that should
  /// retreive, if it is null the function will request the first page.
  ///
  /// This method returns a [AccountDevices] object.
  Future<AccountDevices> getDeviceList(String authToken, String nextPageToken,
      Map<Filters, String> filters) async {
    var response;
    var url = nextPageToken == null
        ? PREFIX + DEVICE_LIST_URL
        : PREFIX + DEVICE_LIST_WITH_TOKEN_URL + nextPageToken;
    if (filters != null && filters.isNotEmpty) {
      url += '&query=' +
          filters.entries
              .map((e) => queryCode[e.key] + ':' + e.value)
              .join(' ');
    }
    authToken = 'Bearer $authToken';
    _client == null
        ? response = await http
            .get(url, headers: {HttpHeaders.authorizationHeader: authToken})
        : response = await _client
            .get(url, headers: {HttpHeaders.authorizationHeader: authToken});

    // If conection is succesful return a AccountDevices object by parsing the
    // response body
    if (response.statusCode == 200) {
      return AccountDevices.fromMap(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw ErrorHandler(response.statusCode);
    }
  }

  /// Calls the Directory API to get the detailed information of a device.
  ///
  /// * [authToken] is the authentication token for API to accept the requests.
  /// * [deviceId] is the ID of the device which its detailed information
  /// will be retrieved.
  ///
  /// This method returns a [DetailedDevice] object.
  Future<DetailedDevice> getDetailedDevice(
      String authToken, String deviceId) async {
    var response;
    authToken = 'Bearer $authToken';
    _client == null
        ? response = await http.get(
            PREFIX + DETAILED_DEVICE_URL + deviceId,
            headers: {HttpHeaders.authorizationHeader: authToken},
          )
        : response = await _client.get(PREFIX + DETAILED_DEVICE_URL + deviceId,
            headers: {HttpHeaders.authorizationHeader: authToken});
    // If conection is succesful return a DetailedDevice object by parsing the
    // response body
    if (response.statusCode == 200) {
      return DetailedDevice.fromMap(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw ErrorHandler(response.statusCode);
    }
  }

  /// Calls the Directory API to deprovise a device.
  ///
  /// * [authToken] is the authentication token for API to accept the requests.
  /// * [deviceId] is the ID of the device which its detailed information
  /// will be retrieved.
  /// * [reason] is the reason why the device is getting a deprovision.
  ///
  /// This method returns true if the action was completed.
  Future<bool> deprovision(
      String authToken, String deviceId, Reasons reason) async {
    var response;
    authToken = 'Bearer $authToken';
    _client == null
        ? response = await http.post(
            PREFIX + DETAILED_DEVICE_URL + deviceId + ACTION_URL,
            headers: {HttpHeaders.authorizationHeader: authToken},
            body: jsonEncode(<String, String>{
              'action': 'deprovision',
              'deprovisionReason': deprovisionReasons[reason]
            }),
          )
        : response = await _client.post(
            PREFIX + DETAILED_DEVICE_URL + deviceId + ACTION_URL,
            headers: {HttpHeaders.authorizationHeader: authToken},
            body: jsonEncode(<String, String>{
              'action': 'deprovision',
              'deprovisionReason': deprovisionReasons[reason]
            }));
    // If conection is succesful return a DetailedDevice object by parsing the
    // response body
    if (response.statusCode == 200) {
      return true;
    } else {
      // If that call was not successful, throw an error.
      throw ErrorHandler(response.statusCode);
    }
  }

  /// Calls the Directory API to disable a device.
  ///
  /// * [authToken] is the authentication token for API to accept the requests.
  /// * [deviceId] is the ID of the device which its detailed information
  /// will be retrieved.
  ///
  /// This method returns true if the action was completed.
  Future<bool> changeState(
      String authToken, String deviceId, String action) async {
    var response;
    authToken = 'Bearer $authToken';
    _client == null
        ? response = await http.post(
            PREFIX + DETAILED_DEVICE_URL + deviceId + ACTION_URL,
            headers: {HttpHeaders.authorizationHeader: authToken},
            body: jsonEncode(<String, String>{
              'action': action,
            }),
          )
        : response = await _client.post(
            PREFIX + DETAILED_DEVICE_URL + deviceId + ACTION_URL,
            headers: {HttpHeaders.authorizationHeader: authToken},
            body: jsonEncode(<String, String>{
              'action': action,
            }));
    // If conection is succesful return a DetailedDevice object by parsing the
    // response body
    if (response.statusCode == 200) {
      return true;
    } else {
      // If that call was not successful, throw an error.
      throw ErrorHandler(response.statusCode);
    }
  }
}
