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

import 'package:chrome_management_app/models/globalObject.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:provider/provider.dart';
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
  //Prepares the detailed view of first device for API response.
  mockHelper.detailedView(client);
  //Prepares the response to diasable the first device for API response.
  mockHelper.disableFirstDevice(client);
  //Prepares the response to reenable the first device for API response.
  mockHelper.reenableFirstDevice(client);
  //Prepares the response to deprovision the first device for API response.
  mockHelper.deprovisionFirstDevice(client);
  //Prepares the page of filtered devices for API response.
  mockHelper.filteredPage(client);
  // Runs app
  runApp(ChangeNotifierProvider(
      create: (context) => GlobalObject(Data.ACCESS_TOKEN, client),
      child: app.MyAppWithoutLogin()));
}
