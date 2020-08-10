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

import 'package:chrome_management_app/controllers/widget/detailed_device.dart';
import 'package:chrome_management_app/objects/basic_device.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

/// View to show the details from a device.
class DetailedDeviceView extends StatelessWidget {
  /// Authorizatio token to call the API.
  final String _token;

  /// Http Client
  final http.Client _client;

  /// Basic information from device.
  final BasicDevice _device;

  /// Constructor of view
  DetailedDeviceView(
    this._token,
    this._client,
    this._device, {
    Key key,
  }) : super(key: key);

  /// UI build of view
  @override
  Widget build(BuildContext context) {
    /// Makes unpoppable the view and shows [DeviceList] widget
    return WillPopScope(
        onWillPop: () => Future.value(true),
        child: DetailedDeviceSummary(_token, _client, _device));
  }
}
