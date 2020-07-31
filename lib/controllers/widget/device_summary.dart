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
import 'package:chrome_management_app/objects/basic_device.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Stateless Widget to show a summary of a Chrome device.
class SummaryDevice extends StatelessWidget {
  /// Chrome device to be rendered.
  final BasicDevice _device;

  /// Index of the list of devices
  final int _index;

  /// Constructir of Widget.
  const SummaryDevice(this._device, this._index, {Key key}) : super(key: key);

  /// Widget UI build.
  @override
  Widget build(BuildContext context) {
    /// Takes a color to be the background of the leading circle avatar.
    final _circleColor = Colors
        .primaries[_device.deviceId.codeUnits.first % Colors.primaries.length];

    /// Chooses the text color of the circle avatar depending of its
    /// background color.
    final _textColor =
        _circleColor.computeLuminance() > .5 ? Colors.black : Colors.white;
    return new Padding(
      // Padding of the widget
      padding: EdgeInsets.only(left: 20),
      child: Row(
        // Creates leading circle avatar with the first to characters of the
        // serial number of the device.
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: _circleColor,
            child: Text(_device.serialNumber.substring(0, 2).toUpperCase(),
                style: TextStyle(color: _textColor)),
          ),
          Padding(padding: EdgeInsets.only(left: 12.0)),
          // Summary of the device
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Serial number of the device.
                Padding(
                    padding: EdgeInsets.only(bottom: 2.0),
                    child: Text(
                      _device.serialNumber,
                      maxLines: 1,
                      key: Key(SERIAL_NUMBER_OF_DEVICE_KEY + _index.toString()),
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    )),
                // User of the device.
                Padding(
                    padding: EdgeInsets.only(bottom: 2.0),
                    child: Text(
                      'User: ${_device.annotatedUser}',
                      maxLines: 2,
                      key: Key(USER_OF_DEVICE_KEY + _index.toString()),
                      overflow: TextOverflow.clip,
                      style: TextStyle(fontSize: 14.0, color: Colors.black87),
                    )),
                // Status of the device
                Padding(
                    padding: EdgeInsets.only(bottom: 2.0),
                    child: Text(
                      'Status: ${_device.status}',
                      maxLines: 2,
                      key: Key(STATUS_OF_DEVICE_KEY + _index.toString()),
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12.0, color: Colors.black87),
                    )),
                // Last synchronied date of the device
                Text(
                  'Last Sync: ${DateFormat.yMMMd().format(DateTime.parse(_device.lastSync))}',
                  maxLines: 2,
                  key: Key(LAST_SYNC_OF_DEVICE_KEY + _index.toString()),
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12.0, color: Colors.grey[700]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
