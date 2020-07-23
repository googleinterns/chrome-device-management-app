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

import 'package:chrome_management_app/views/list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/// Mocks the app main, soit starts it skips the Google authentication.
class MyAppWithoutLogin extends StatelessWidget {
  final String mockToken;
  final http.Client client;
  MyAppWithoutLogin({this.mockToken, this.client});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DevicesListView(
        token: mockToken,
        client: client,
      ),
    );
  }
}
