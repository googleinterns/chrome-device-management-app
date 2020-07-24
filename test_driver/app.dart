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

import 'package:flutter/cupertino.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'data.dart';
import 'mock.dart' as app;
import 'mock_helper.dart';

/// Initial function for integration test.
void main() {
  // Mock http client.
  final client = MockClient();
  // Mock helper to mock the calls to the API.
  final mockHelper = MockHelper();

  // This line enables the extension of flutter driver.
  enableFlutterDriverExtension();
  // Prepares the first page of devices for API response.
  mockHelper.firstPage(client);
  // Prepares the second page of devices for API response.
  mockHelper.secondPage(client);
  // Runs app
  runApp(app.MyAppWithoutLogin(mockToken: Data.ACCESS_TOKEN, client: client));
}
