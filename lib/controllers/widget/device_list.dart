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

import 'package:chrome_management_app/models/keys_util.dart';
import 'package:chrome_management_app/controllers/widget/device_summary.dart';
import 'package:chrome_management_app/objects/account_devices.dart';
import 'package:chrome_management_app/objects/basic_device.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../devices.dart';

/// Stateful Widget to show a list of devices.
class DeviceList extends StatefulWidget {
  /// Authorization token to get information form the Directory API.
  final String _authToken;

  /// Http Client
  final http.Client _client;

  /// Constructor of Widget
  DeviceList(this._authToken, this._client, {Key key}) : super(key: key);
  @override

  /// Create initial state of the Widget.
  _DeviceListState createState() => _DeviceListState(_authToken, _client);
}

/// DeviceList Widget states
class _DeviceListState extends State<DeviceList> {
  /// Authorization token to call the list of devices.
  String _authToken;

  /// Account information from Directory Chrome Devices API.
  AccountDevices _list;

  /// Verify that all devices from account are loaded.
  bool _allDevicesLoaded = false;

  /// Stores any error/exception description.
  String _warning;

  /// Verify if a error/exception happend while loading the list of devices.
  bool _errorOnLoading = false;

  /// Verify the list is loading.
  bool _loading = false;

  /// Scroll controller to manage lazy load.
  ScrollController _scrollController;

  /// Http Client
  http.Client _client;

  /// Constructor of state.
  _DeviceListState(this._authToken, this._client);

  /// Initial state of the Widget.
  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
    _getInitalDevices();
    // Add listener to scroll controller to load more devices when user scrolls
    // 75% or more of the view height.
    _scrollController.addListener(() {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double currentScroll = _scrollController.position.pixels;
      double delta = MediaQuery.of(context).size.height * 0.25;
      if (maxScroll - currentScroll <= delta) {
        _getMoreDevices();
      }
    });
  }

  /// Get initial page of the list of devices
  _getInitalDevices() async {
    setState(() {
      _loading = true;
    });
    Devices.getList(_client, _authToken, null).then((value) {
      setState(() {
        _list = value;
        if (_list.nextPageToken == null) {
          _allDevicesLoaded = true;
        }
        _loading = false;
      });
    }).catchError((e) {
      setState(() {
        // TODO issue #35 manage all errors and exceptions
        _errorOnLoading = true;
        _warning = 'Got error $e';
        _loading = false;
      });
    });
  }

  /// Gets the next page of the devices list
  _getMoreDevices() async {
    if (_allDevicesLoaded || _loading) {
      return;
    }
    setState(() {
      _loading = true;
    });
    await Devices.getList(_client, _authToken, _list.nextPageToken)
        .then((value) {
      setState(() {
        value.chromeosdevices.forEach((element) {
          _list = _list.rebuild((b) => b.chromeosdevices..add(element));
        });
        _list = _list.rebuild((b) => b..nextPageToken = value.nextPageToken);

        if (_list.nextPageToken == null) {
          _allDevicesLoaded = true;
        }
        _loading = false;
      });
    }).catchError((e) {
      setState(() {
        // TODO issue #35 manage all errors and exceptions
        _errorOnLoading = true;
        _warning = 'Got error $e';
        _loading = false;
      });
    });
  }

  /// Widget UI build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top App bar with text
      appBar: AppBar(
        title: Text('Chrome OS Devices'),
      ),
      body: _loading == true && _list == null
          ?
          // Loading screen if its the first loading of the list
          Container(
              child: Center(
                child: Text('Loading...'),
              ),
            )
          : Container(
              child: _errorOnLoading == true
                  ?
                  // Warning notification when a error on loading ocurrs
                  Center(child: Text('$_warning'))
                  : _list.chromeosdevices.length == 0
                      ?
                      // Show a message when there are no devices on the account
                      Center(
                          child: Text('No devices to show'),
                        )
                      :
                      // Show list of devices with SummaryDevice Widget
                      Column(
                          children: <Widget>[
                            Expanded(
                              child: ListView.builder(
                                key: Key(LIST_OF_DEVICES_KEY),
                                physics: AlwaysScrollableScrollPhysics(),
                                controller: _scrollController,
                                itemCount: _list.chromeosdevices.length,
                                itemBuilder: (context, index) {
                                  BasicDevice device =
                                      _list.chromeosdevices[index];
                                  return SummaryDevice(device, index + 1,
                                      key: Key(SUMMARY_DEVICE_KEY +
                                          (index + 1).toString()));
                                },
                              ),
                            )
                          ],
                        ),
            ),
    );
  }
}
