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

import 'package:chrome_management_app/UI/common.dart';
import 'package:chrome_management_app/models/error_handler.dart';
import 'package:chrome_management_app/models/globalObject.dart';
import 'package:chrome_management_app/models/keys_util.dart';
import 'package:chrome_management_app/controllers/widget/device_summary.dart';
import 'package:chrome_management_app/objects/account_devices.dart';
import 'package:chrome_management_app/views/detail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../devices.dart';
import 'filter_search_bar.dart';

/// Stateful Widget to show a list of devices.
class DeviceList extends StatefulWidget {
  /// Constructor of Widget
  DeviceList({Key key}) : super(key: key);
  @override

  /// Create initial state of the Widget.
  _DeviceListState createState() => _DeviceListState();
}

/// DeviceList Widget states
class _DeviceListState extends State<DeviceList> {
  /// Account information from Directory Chrome Devices API.
  AccountDevices _list;

  /// Verify that all devices from account are loaded.
  bool _allDevicesLoaded = false;

  /// Stores any error/exception code.
  ErrorHandler _warning;

  /// Verify if a error/exception happend while loading the list of devices.
  bool _errorOnLoading = false;

  /// Verify the list is loading.
  bool _loading = false;

  /// Scroll controller to manage lazy load.
  ScrollController _scrollController;

  /// Stores the applied filters
  Map<Filters, String> _filtersSelected = new Map();

  /// Constructor of state.
  _DeviceListState();

  /// Initial state of the Widget.
  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
    _getInitialDevices();
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
  void _getInitialDevices() async {
    setState(() {
      _loading = true;
      _list = null;
      _allDevicesLoaded = false;
    });
    getList(
            Provider.of<GlobalObject>(context, listen: false).client,
            Provider.of<GlobalObject>(context, listen: false).accessToken,
            null,
            _filtersSelected)
        .then((value) {
      setState(() {
        _list = value;
        if (_list.nextPageToken == null) {
          _allDevicesLoaded = true;
        }
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

  /// Gets the next page of the devices list
  void _getMoreDevices() async {
    if (_allDevicesLoaded || _loading) {
      return;
    }
    setState(() {
      _loading = true;
      _errorOnLoading = false;
    });
    await getList(
            Provider.of<GlobalObject>(context, listen: false).client,
            Provider.of<GlobalObject>(context, listen: false).accessToken,
            _list.nextPageToken,
            _filtersSelected)
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
        _loading = false;
        _errorOnLoading = true;
        _warning = e;
      });
    });
  }

  /// Shows dialog to fill the value of the filter selected and then applies it.
  void _applyFilter(Filters filter) {
    filterText(context, filter, _filtersSelected[filter] ?? null)
        .then((value) => setState(() {
              if (value != null && value != '') {
                _filtersSelected[filter] = value;
                _getInitialDevices();
              }
            }));
  }

  /// Widget UI build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Top App bar with text
      appBar: AppBar(
        title: Text('Chrome OS Devices'),
        actions: <Widget>[
          // Filter pop up menu button
          PopupMenuButton<Filters>(
            onSelected: _applyFilter,
            itemBuilder: (BuildContext context) {
              return Filters.values
                  .where((element) =>
                      _filtersSelected == null ||
                      !_filtersSelected.containsKey(element))
                  .toList()
                  .map((Filters choice) {
                return PopupMenuItem<Filters>(
                  child: Text(filtersTitle[choice]),
                  value: choice,
                  enabled: true,
                );
              }).toList();
            },
            icon: Icon(Icons.filter_list),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Filters Selected
          Wrap(
            spacing: 2.0,
            children: _filtersSelected.entries
                .map((entry) => CustomFilterChip(
                    text: filtersTitle[entry.key] + ': ' + entry.value,
                    delete: () => setState(() {
                          _filtersSelected.remove(entry.key);
                          _getInitialDevices();
                        }),
                    change: () => setState(() {
                          _applyFilter(entry.key);
                        })))
                .toList(),
          ),
          _errorOnLoading
              ? _warning.statusCode > 499
                  ? alertAndRetry(_warning,
                      _list == null ? _getInitialDevices : _getMoreDevices)
                  : _list == null
                      ? alertAndLogIn(_warning, true, context)
                      : alertAndLogIn(_warning, false, context)
              : _loading == true && _list == null
                  ?
                  // Loading screen if its the first loading of the list
                  Expanded(
                      child: Center(
                      child: CircularProgressIndicator(),
                    ))
                  : Container(
                      child: _list.chromeosdevices == null ||
                              _list.chromeosdevices.length == 0
                          ?
                          // Show a message when there are no devices on the account
                          Center(
                              child: Text('No devices to show'),
                            )
                          :
                          // Show list of devices with SummaryDevice Widget
                          Expanded(
                              child: ListView.separated(
                                padding: EdgeInsets.symmetric(vertical: 8.0),
                                separatorBuilder: (context, index) => Divider(),
                                key: Key(LIST_OF_DEVICES_KEY),
                                physics: AlwaysScrollableScrollPhysics(),
                                controller: _scrollController,
                                itemCount: _list.chromeosdevices.length + 1,
                                itemBuilder: (context, index) {
                                  return index < _list.chromeosdevices.length
                                      ? new GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        DetailedDeviceView(_list
                                                                .chromeosdevices[
                                                            index]))).then((_) {
                                              _getInitialDevices();
                                            });
                                          },
                                          child: SummaryDevice(
                                              _list.chromeosdevices[index],
                                              index + 1,
                                              key: Key(SUMMARY_DEVICE_KEY +
                                                  (index + 1).toString())))
                                      : _list.nextPageToken == null
                                          ? Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 16.0),
                                              child: Center(
                                                  child: Text(
                                                'No more devices to load',
                                                style: TextStyle(
                                                    color: Colors.grey[600]),
                                              )))
                                          : Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 16.0),
                                              child: Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              ));
                                },
                              ),
                            ),
                    ),
        ],
      ),
    );
  }
}
