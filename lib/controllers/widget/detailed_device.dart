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

import 'package:chrome_management_app/controllers/devices.dart';
import 'package:chrome_management_app/controllers/widget/custom_fields_card.dart';
import 'package:chrome_management_app/controllers/widget/hardware_os_card.dart';
import 'package:chrome_management_app/models/error_handler.dart';
import 'package:chrome_management_app/objects/basic_device.dart';
import 'package:chrome_management_app/objects/detailed_device.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

/// Stateful Widget to show the summary of a detailed device.
class DetailedDeviceSummary extends StatefulWidget {
  /// Authorization token to get information from the Directory API.
  final String _authToken;

  /// Http Client
  final http.Client _client;

  final BasicDevice _device;

  /// Constructor of Widget
  DetailedDeviceSummary(this._authToken, this._client, this._device, {Key key})
      : super(key: key);
  @override

  /// Create initial state of the Widget.
  _DetailedDeviceSummaryState createState() =>
      _DetailedDeviceSummaryState(_authToken, _client, _device);
}

/// DeviceList Widget states
class _DetailedDeviceSummaryState extends State<DetailedDeviceSummary> {
  /// Authorization token to get information from the Directory API.
  String _authToken;

  /// Http Client
  http.Client _client;

  /// Verify the device is loading.
  bool _loading = false;

  /// Stores any error/exception code.
  ErrorHandler _warning;

  /// Verify if a error/exception happend while loading the list of devices.
  bool _errorOnLoading = false;

  /// Basic information of the device.
  BasicDevice _basicDevice;

  /// Full information of the device.
  DetailedDevice _fullDevice;

  /// Scroll controller to manage animations.
  ScrollController _scrollController = ScrollController();
  _DetailedDeviceSummaryState(this._authToken, this._client, this._basicDevice);

  /// Initial state of the Widget.
  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
    _getDetailedDevice();
  }

  /// Get initial page of the list of devices
  _getDetailedDevice() async {
    setState(() {
      _loading = true;
      _errorOnLoading = false;
    });
    Devices.getDetailedDevice(_client, _authToken, _basicDevice.deviceId)
        .then((value) {
      setState(() {
        _fullDevice = value;
        _loading = false;
      });
    }).catchError((e) {
      setState(() {
        _loading = false;
        _errorOnLoading = true;
        _warning = e;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_basicDevice.serialNumber),
      ),
      body: _errorOnLoading
          ? _warning.statusCode > 499
              ? alertAndRetry(_warning, _getDetailedDevice)
              : alertAndLogIn(_warning, false, context)
          : CustomScrollView(
              controller: _scrollController,
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate(
                    _loading == true
                        ?
                        // Loading screen device is loading.
                        [
                            Center(
                              child: CircularProgressIndicator(),
                            )
                          ]
                        : [
                            Container(
                              height: AppBar().preferredSize.height * 3,
                              color: Colors.blue,
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  verticalDirection: VerticalDirection.down,
                                  children: <Widget>[
                                    // Serial number of the device.
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 2.0),
                                        child: Text(
                                          _basicDevice.serialNumber,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 28.0,
                                              color: Colors.white),
                                        )),

                                    // Status of the device
                                    Padding(
                                        padding: EdgeInsets.only(
                                          bottom: 2.0,
                                        ),
                                        child: Text(
                                          _basicDevice.status,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.white54),
                                        )),
                                    // Last synchronied date of the device
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 2.0),
                                      child: Text(
                                        'Last Sync: ${DateFormat.yMMMd().format(DateTime.parse(_basicDevice.lastSync))}',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white54),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            HardwareAndOsCard(_fullDevice),
                            Padding(padding: EdgeInsets.all(10)),
                            CustomFieldsCard(_fullDevice)
                          ],
                  ),
                )
              ],
            ),
    );
  }
}
