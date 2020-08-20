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
import 'package:chrome_management_app/models/api_calls.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'data.dart';

/// Class to create a mocked http client.
class MockClient extends Mock implements http.Client {}

///Class to help organize the responses of the mock client.
class MockHelper {
  Data data = Data();
  // Prepares the first response to the mocked client when it calls for the
  // first page.
  void firstPage(MockClient client) {
    when(client.get(ApiCalls.PREFIX + ApiCalls.DEVICE_LIST_URL, headers: {
      HttpHeaders.authorizationHeader: 'Bearer ${Data.ACCESS_TOKEN}'
    })).thenAnswer((_) async => http.Response(data.firstPage(), 200));
  }

  // Prepares the response to the mocked client when it calls for the
  // second page.
  void secondPage(MockClient client) {
    when(client.get(
        ApiCalls.PREFIX +
            ApiCalls.DEVICE_LIST_WITH_TOKEN_URL +
            Data.NEXT_PAGE_2,
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer ${Data.ACCESS_TOKEN}'
        })).thenAnswer((_) async => http.Response(Data.SECOND_PAGE, 200));
  }

  // Prepares the response to the mocked client when it calls for the
  // detailed view of the first device.
  void detailedView(MockClient client) {
    when(client.get(ApiCalls.PREFIX + ApiCalls.DETAILED_DEVICE_URL + 'a1',
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer ${Data.ACCESS_TOKEN}'
        })).thenAnswer((_) async => http.Response(data.detailedDevice(), 200));
  }

  // Prepares the response to the mocked client when it calls for the
  // remote command of disable a device.
  void disableFirstDevice(MockClient client) {
    when(client.post(
      ApiCalls.PREFIX +
          ApiCalls.DETAILED_DEVICE_URL +
          'a1' +
          ApiCalls.ACTION_URL,
      headers: {HttpHeaders.authorizationHeader: 'Bearer ${Data.ACCESS_TOKEN}'},
      body: jsonEncode(<String, String>{
        'action': 'disable',
      }),
    )).thenAnswer((_) async {
      data.disable();
      return http.Response('Device disabled', 200);
    });
  }

  // Prepares the response to the mocked client when it calls for the
  // remote command of reenable a device.
  void reenableFirstDevice(MockClient client) {
    when(client.post(
      ApiCalls.PREFIX +
          ApiCalls.DETAILED_DEVICE_URL +
          'a1' +
          ApiCalls.ACTION_URL,
      headers: {HttpHeaders.authorizationHeader: 'Bearer ${Data.ACCESS_TOKEN}'},
      body: jsonEncode(<String, String>{
        'action': 'reenable',
      }),
    )).thenAnswer((_) async {
      data.reenable();
      return http.Response('Device reenabled', 200);
    });
  }

  // Prepares the response to the mocked client when it calls for the
  // remote command of deprovision a device.
  void deprovisionFirstDevice(MockClient client) {
    when(client.post(
      ApiCalls.PREFIX +
          ApiCalls.DETAILED_DEVICE_URL +
          'a1' +
          ApiCalls.ACTION_URL,
      headers: {HttpHeaders.authorizationHeader: 'Bearer ${Data.ACCESS_TOKEN}'},
      body: jsonEncode(<String, String>{
        'action': 'deprovision',
        'deprovisionReason': 'retiring_device'
      }),
    )).thenAnswer((_) async {
      data.deprovision();
      return http.Response('Device provisioned', 200);
    });
  }

  // Prepares the response to the mocked client when it calls for filtiring
  // the list of devices.
  void filteredPage(MockClient client) {
    when(client.get(
        ApiCalls.PREFIX +
            ApiCalls.DEVICE_LIST_URL +
            '&query=id:serialNumber 21',
        headers: {
          HttpHeaders.authorizationHeader: 'Bearer ${Data.ACCESS_TOKEN}'
        })).thenAnswer((_) async => http.Response(Data.FILTERED_PAGE, 200));
  }
}
