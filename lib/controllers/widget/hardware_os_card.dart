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
            detailCategory(
                text: 'Hardware and OS',
                width: MediaQuery.of(context).size.width * 0.4),
            verticalDivider(MediaQuery.of(context).size.height * 0.3),
            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                margin: EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    detailedText(
                        title: 'Organization',
                        value: getValueOrDefault(widget._device.orgUnitPath)),
                    detailedText(
                        title: 'Model',
                        value: getValueOrDefault(widget._device.model)),
                    detailedText(
                        title: 'Serial Number',
                        value: getValueOrDefault(widget._device.serialNumber))
                  ],
                )),
          ],
        ),
        dividerWith0MArgin(),
        bottomCardButton(
            title: 'See More', onTap: () => setState(() => _isExpanded = true))
      ]));

  /// Expanded card widget to show full information of the hardware and OS from
  /// a device.
  Widget hardwareFull(BuildContext context) => Card(
          child: Column(children: <Widget>[
        Row(
          children: [
            detailCategory(
                text: 'Hardware and OS',
                width: MediaQuery.of(context).size.width * 0.4),
            verticalDivider(MediaQuery.of(context).size.height),
            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                margin: EdgeInsets.only(left: 10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      detailedText(
                          title: 'Organization',
                          value: getValueOrDefault(widget._device.orgUnitPath)),
                      detailedText(
                          title: 'Model',
                          value: getValueOrDefault(widget._device.model)),
                      detailedText(
                          title: 'Serial Number',
                          value:
                              getValueOrDefault(widget._device.serialNumber)),
                      detailedText(
                          title: 'Mac Address',
                          value: getValueOrDefault(widget._device.macAddress)),
                      detailedText(
                        title: 'Last Known Network',
                        value: widget._device.lastKnownNetwork == null
                            ? '-'
                            : widget._device.lastKnownNetwork
                                .map((o) => o.ipAddress)
                                .join('\n'),
                      ),
                      detailedText(
                          title: 'OS version',
                          value: getValueOrDefault(widget._device.osVersion)),
                      detailedText(
                          title: 'Plataform Version',
                          value: getValueOrDefault(
                              widget._device.platformVersion)),
                      detailedText(
                          title: 'Device ID',
                          value: getValueOrDefault(widget._device.deviceId)),
                      detailedText(
                          title: 'Last Enrollment Time',
                          value: getValueOrDefault(
                              widget._device.lastEnrollmentTime)),
                      detailedText(
                          title: 'Auto Update Expiration',
                          value:
                              '${DateFormat.yMMMd().format(DateTime.fromMillisecondsSinceEpoch(int.parse(widget._device.autoUpdateExpiration)))}'),
                    ])),
          ],
        ),
        dividerWith0MArgin(),
        bottomCardButton(
            title: 'See More',
            onTap: () => setState(() => _isExpanded = false)),
      ]));
}
