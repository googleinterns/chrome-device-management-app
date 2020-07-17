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

import 'dart:io';
import 'package:chrome_management_app/objects/account_devices.dart';
import 'package:chrome_management_app/objects/detailed_device.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:chrome_management_app/models/api_calls.dart';

/// Class to mock a http client
class MockClient extends Mock implements http.Client {}

main() {
  /// Mock a authentication token
  final authToken = '123';

  /// Mock a next page token
  final nextPageToken = '456';

  /// Mock a device ID
  final deviceId = '789';

  /// Mock json response from [deviceList] and [deviceListWithTokenUrl]
  final jsonAccountDevices = """
    {
    "kind": "kind",
    "etag": "etag",
    "chromeosdevices": [
      {
        "kind": "kind 1",
        "etag": "etag 1",
        "deviceId": "device Id 1",
        "serialNumber": "serialNumber 1",
        "status": "status 1",
        "lastSync": "lastSync 1", 
        "supportEndDate": "supportEndDate 1",
        "annotatedUser": "annotated user 1",
        "annotatedLocation": "annotated location 1",
        "annotatedAssetId": "anotated asset id 1",
        "notes": "notes 1"       
      }
    ],
    "nextPageToken": "token"
    }""";

  /// Mock json response from [detailedDeviceUrl]
  final jsonDetailedDevice = """
    {
    "kind": "kind",
    "etag": "etag",
    "deviceId": "device ID",
    "serialNumber": "serial number",
    "status": "status",
    "lastSync": "last sync",
    "supportEndDate": "support end date",
    "annotatedUser": "user",
    "annotatedLocation": "location",
    "annotatedAssetId": "asset ID",
    "notes": "notes",
    "model": "model",
    "meid": "meid",
    "orderNumber": "order number",
    "willAutoRenew": true,
    "osVersion": "os version",
    "platformVersion": "plataform version",
    "firmwareVersion": "firmware version",
    "macAddress": "mac address",
    "bootMode": "boot mode",
    "lastEnrollmentTime": "last enrolled date",
    "orgUnitPath": "org unit path"
    }""";

  /// Group of tests to do to the api calls, each test has its objective
  group('Api Calls', () {
    test(
        'returns AccountDevices if the http call completes successfully without next page token',
        () async {
      final client = MockClient();
      when(client.get(ApiCalls.DEVICE_LIST_URL,
              headers: {HttpHeaders.authorizationHeader: 'Bearer $authToken'}))
          .thenAnswer((_) async => http.Response(jsonAccountDevices, 200));
      final apiCall = ApiCalls(client);

      expect(
          await apiCall.getDeviceList(authToken, null), isA<AccountDevices>());
    });

    test(
        "throws an exception if the http call for list of devices without next page token completes with an error",
        () {
      final client = MockClient();
      when(client.get(ApiCalls.DEVICE_LIST_URL,
              headers: {HttpHeaders.authorizationHeader: 'Bearer $authToken'}))
          .thenAnswer((_) async => http.Response('Not Found', 404));
      final apiCall = ApiCalls(client);

      expect(apiCall.getDeviceList(authToken, null), throwsException);
    });

    test(
        'returns AccountDevices if the http call completes successfully with next page token',
        () async {
      final client = MockClient();
      when(client.get(ApiCalls.DEVICE_LIST_WITH_TOKEN_URL,
              headers: {HttpHeaders.authorizationHeader: 'Bearer $authToken'}))
          .thenAnswer((_) async => http.Response(jsonAccountDevices, 200));
      final apiCall = ApiCalls(client);

      expect(await apiCall.getDeviceList(authToken, nextPageToken),
          isA<AccountDevices>());
    });
    test(
        "throws an exception if the http call for list of devices with next page token completes with an error",
        () {
      final client = MockClient();
      when(client.get(ApiCalls.DEVICE_LIST_WITH_TOKEN_URL,
              headers: {HttpHeaders.authorizationHeader: 'Bearer $authToken'}))
          .thenAnswer((_) async => http.Response('Not Found', 404));
      final apiCall = ApiCalls(client);

      expect(apiCall.getDeviceList(authToken, nextPageToken), throwsException);
    });

    test(
        'returns DetailedDevice if the http call to detailed device completes successfully',
        () async {
      final client = MockClient();
      when(client.get(ApiCalls.DETAILED_DEVICE_URL,
              headers: {HttpHeaders.authorizationHeader: 'Bearer $authToken'}))
          .thenAnswer((_) async => http.Response(jsonDetailedDevice, 200));
      final apiCall = ApiCalls(client);
      expect(await apiCall.getDetailedDevice(authToken, deviceId),
          isA<DetailedDevice>());
    });
    test(
        "throws an exception if the http call for detailed device completes with an error",
        () {
      final client = MockClient();
      when(client.get(ApiCalls.DETAILED_DEVICE_URL,
              headers: {HttpHeaders.authorizationHeader: 'Bearer $authToken'}))
          .thenAnswer((_) async => http.Response('Not Found', 404));
      final apiCall = ApiCalls(client);
      expect(apiCall.getDetailedDevice(authToken, deviceId), throwsException);
    });
  });
}
