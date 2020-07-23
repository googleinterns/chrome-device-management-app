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

import 'dart:io';
import 'package:chrome_management_app/models/api_calls.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'data.dart';

/// Class to create a mocked http client.
class MockClient extends Mock implements http.Client {}

///Class to help organize the responses of the mock client.
class MockHelper {
  // Prepares the first response to the mocked client when it calls for the
  // first page.
  void firstPage(MockClient client) {
    when(client.get(ApiCalls.PREFIX + ApiCalls.DEVICE_LIST_URL, headers: {
      HttpHeaders.authorizationHeader: 'Bearer ${Data.ACCESS_TOKEN}'
    })).thenAnswer((_) async => http.Response(Data.FIRST_PAGE, 200));
  }

  // Prepares the first response to the mocked client when it calls for the
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
}
