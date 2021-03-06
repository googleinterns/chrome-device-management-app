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
import 'package:chrome_management_app/models/keys_util.dart';
import 'package:chrome_management_app/objects/detailed_device.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Stateful Widget to show expandable card with the information of the hardware
/// and OS of a device.
class HardwareAndOsCard extends StatefulWidget {
  /// Constructor
  HardwareAndOsCard(this._device, {Key key}) : super(key: key);

  /// Detailed device from which he information is taken
  final DetailedDevice _device;

  @override
  _HardwareAndOsCardState createState() => new _HardwareAndOsCardState();
}

class _HardwareAndOsCardState extends State<HardwareAndOsCard>
    with TickerProviderStateMixin<HardwareAndOsCard> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new AnimatedSize(
          vsync: this,
          duration: const Duration(milliseconds: 500),
          child: _isExpanded ? hardwareFull(context) : hardwareSummary(context))
    ]);
  }

  /// Collapsed card widget to show a breif summary of the hardware and OS of a
  /// device.
  Widget hardwareSummary(BuildContext context) => Card(
          child: Column(children: <Widget>[
        Row(
          children: [
            DetailCategory(
                text: 'Hardware and OS',
                width: MediaQuery.of(context).size.width * 0.4),
            CustomVerticalDivider(
                height: MediaQuery.of(context).size.height * 0.3),
            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                margin: EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    DetailedText(
                        title: 'Organization',
                        value: widget._device.orgUnitPath ?? '-',
                        key: Key(HARDWARE_OS_ORGANIZATION_KEY)),
                    DetailedText(
                        title: 'Model',
                        value: widget._device.model ?? '-',
                        key: Key(HARDWARE_OS_MODEL_KEY)),
                    DetailedText(
                      title: 'Serial Number',
                      value: widget._device.serialNumber ?? '-',
                      key: Key(HARDWARE_OS_SERIAL_NUMBER_OF_DEVICE_KEY),
                    )
                  ],
                )),
          ],
        ),
        DividerWith0MArgin(),
        BottomCardButton(
          title: 'See More',
          onTap: () => setState(() => _isExpanded = true),
          key: Key(HARDWARE_OS_MORE_LESS_BUTTON_KEY),
        )
      ]));

  /// Expanded card widget to show full information of the hardware and OS from
  /// a device.
  Widget hardwareFull(BuildContext context) => Card(
          child: Column(children: <Widget>[
        Row(
          children: [
            DetailCategory(
                text: 'Hardware and OS',
                width: MediaQuery.of(context).size.width * 0.4),
            CustomVerticalDivider(height: MediaQuery.of(context).size.height),
            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                margin: EdgeInsets.only(left: 10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      DetailedText(
                          title: 'Organization',
                          value: widget._device.orgUnitPath ?? '-',
                          key: Key(HARDWARE_OS_ORGANIZATION_KEY)),
                      DetailedText(
                          title: 'Model',
                          value: widget._device.model ?? '-',
                          key: Key(HARDWARE_OS_MODEL_KEY)),
                      DetailedText(
                          title: 'Serial Number',
                          value: widget._device.serialNumber ?? '-',
                          key: Key(HARDWARE_OS_SERIAL_NUMBER_OF_DEVICE_KEY)),
                      DetailedText(
                          title: 'Mac Address',
                          value: widget._device.macAddress ?? '-',
                          key: Key(HARDWARE_OS_MAC_ADDRESS_KEY)),
                      DetailedText(
                        title: 'Last Known Network',
                        value: widget._device.lastKnownNetwork == null
                            ? '-'
                            : widget._device.lastKnownNetwork
                                .map((o) => o.ipAddress)
                                .join('\n'),
                        key: Key(HARDWARE_OS_LAST_KNOWN_NETWORK_KEY),
                      ),
                      DetailedText(
                          title: 'OS version',
                          value: widget._device.osVersion ?? '-',
                          key: Key(HARDWARE_OS_VERSION_KEY)),
                      DetailedText(
                          title: 'Plataform Version',
                          value: widget._device.platformVersion ?? '-',
                          key: Key(HARDWARE_OS_PLATAFORM_VERSION_KEY)),
                      DetailedText(
                          title: 'Device ID',
                          value: widget._device.deviceId ?? '-',
                          key: Key(HARDWARE_OS_DEVICE_ID_KEY)),
                      DetailedText(
                          title: 'Last Enrollment Time',
                          value: widget._device.lastEnrollmentTime != null
                              ? "${DateFormat.yMMMd().format(DateTime.parse(widget._device.lastEnrollmentTime))}"
                              : '-',
                          key: Key(HARDWARE_OS_LAST_ENROLLMENT_TIME_KEY)),
                      DetailedText(
                          title: 'Auto Update Expiration',
                          value: widget._device.autoUpdateExpiration != null
                              ? '${DateFormat.yMMMd().format(DateTime.fromMillisecondsSinceEpoch(int.parse(widget._device.autoUpdateExpiration)))}'
                              : '-',
                          key: Key(HARDWARE_OS_AUTO_UPDATE_EXPIRATION_KEY)),
                    ])),
          ],
        ),
        DividerWith0MArgin(),
        BottomCardButton(
            title: 'See Less',
            onTap: () => setState(() => _isExpanded = false),
            key: Key(HARDWARE_OS_MORE_LESS_BUTTON_KEY))
      ]));
}
