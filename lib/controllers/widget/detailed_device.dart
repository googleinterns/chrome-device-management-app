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
import 'package:chrome_management_app/controllers/devices.dart';
import 'package:chrome_management_app/controllers/widget/custom_fields_card.dart';
import 'package:chrome_management_app/controllers/widget/hardware_os_card.dart';
import 'package:chrome_management_app/controllers/widget/remote_commands.dart';
import 'package:chrome_management_app/models/error_handler.dart';
import 'package:chrome_management_app/models/globalObject.dart';
import 'package:chrome_management_app/objects/basic_device.dart';
import 'package:chrome_management_app/objects/detailed_device.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

/// Stateful Widget to show the summary of a detailed device.
class DetailedDeviceSummary extends StatefulWidget {
  final BasicDevice _device;

  /// Constructor of Widget
  DetailedDeviceSummary(this._device, {Key key}) : super(key: key);
  @override

  /// Create initial state of the Widget.
  _DetailedDeviceSummaryState createState() =>
      _DetailedDeviceSummaryState(_device);
}

/// DeviceList Widget states
class _DetailedDeviceSummaryState extends State<DetailedDeviceSummary> {
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
  _DetailedDeviceSummaryState(this._basicDevice);

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
    getDetailedDevice(
            Provider.of<GlobalObject>(context, listen: false).client,
            Provider.of<GlobalObject>(context, listen: false).accessToken,
            _basicDevice.deviceId)
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

  /// Triggers an action on the device from the pop up menu.
  _actionDevice(String choice) async {
    setState(() {
      _errorOnLoading = false;
    });
    if (choice == 'Deprovision') {
      deprovisionReason(context).then((reason) {
        if (reason != null) {
          setState(() {
            _loading = true;
          });
          deproviseDevice(
                  Provider.of<GlobalObject>(context, listen: false).client,
                  Provider.of<GlobalObject>(context, listen: false).accessToken,
                  _basicDevice.deviceId,
                  reason)
              .then((value) {
            _getDetailedDevice();
          }).catchError((e) {
            setState(() {
              _loading = false;
              _errorOnLoading = true;
              _warning = e;
            });
          });
        }
      });
    } else {
      setState(() {
        _loading = true;
      });
      changeState(
              Provider.of<GlobalObject>(context, listen: false).client,
              Provider.of<GlobalObject>(context, listen: false).accessToken,
              _basicDevice.deviceId,
              choice == 'Disable' ? 'disable' : 'reenable')
          .then((value) {
        _getDetailedDevice();
      }).catchError((e) {
        setState(() {
          _loading = false;
          _errorOnLoading = true;
          _warning = e;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _loading == true
        ?
        // Loading screen device is loading.
        Scaffold(
            appBar: AppBar(title: Text(_basicDevice.serialNumber)),
            body: Center(child: CircularProgressIndicator()))
        : Scaffold(
            appBar: _fullDevice.status == 'DEPROVISIONED'
                ? AppBar(
                    title: Text(_fullDevice.serialNumber),
                  )
                : AppBar(
                    title: Text(_fullDevice.serialNumber),
                    actions: <Widget>[
                      PopupMenuButton<String>(
                        onSelected: _actionDevice,
                        itemBuilder: (BuildContext context) {
                          return (_fullDevice.status == 'ACTIVE'
                                  ? ['Disable', 'Deprovision']
                                  : ['Reenable', 'Deprovision'])
                              .map((String choice) {
                            return PopupMenuItem<String>(
                              child: Text(choice),
                              value: choice,
                              enabled: true,
                            );
                          }).toList();
                        },
                      ),
                    ],
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
                          [
                            DetailedHeader(
                              serialNumber: _fullDevice.serialNumber,
                              status: _fullDevice.status,
                              lastSync:
                                  'Last Sync: ${DateFormat.yMMMd().format(DateTime.parse(_fullDevice.lastSync))}',
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
