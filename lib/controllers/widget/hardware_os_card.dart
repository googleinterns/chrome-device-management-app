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
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              width: MediaQuery.of(context).size.width * 0.4,
              child: Text(
                'Hardware and OS',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w500),
                overflow: TextOverflow.clip,
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: 0,
                margin: EdgeInsets.all(0),
                child: VerticalDivider(
                  thickness: 1,
                )),
            Container(
                width: MediaQuery.of(context).size.width * 0.4,
                margin: EdgeInsets.only(left: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Organization',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500),
                              overflow: TextOverflow.clip,
                            ),
                            Text(
                              widget._device.orgUnitPath ?? '-',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                              overflow: TextOverflow.clip,
                            )
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Model',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500),
                              overflow: TextOverflow.clip,
                            ),
                            Text(
                              widget._device.model ?? '-',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                              overflow: TextOverflow.clip,
                            )
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Serial Number',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500),
                              overflow: TextOverflow.clip,
                            ),
                            Text(
                              widget._device.serialNumber ?? '-',
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                              overflow: TextOverflow.clip,
                            )
                          ],
                        ))
                  ],
                )),
          ],
        ),
        Padding(padding: EdgeInsets.all(0), child: Divider()),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ButtonBar(
              children: [
                FlatButton(
                    onPressed: () => setState(() => _isExpanded = true),
                    child: Text('See More'))
              ],
            ),
          ],
        ),
      ]));

  /// Expanded card widget to show full information of the hardware and OS from
  /// a device.
  Widget hardwareFull(BuildContext context) => Card(
          child: Column(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, right: 0),
              width: MediaQuery.of(context).size.width * 0.4,
              child: Text(
                'Hardware and OS',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w500),
                overflow: TextOverflow.clip,
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height,
                width: 0,
                margin: EdgeInsets.all(0),
                child: VerticalDivider(
                  thickness: 1,
                )),
            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                margin: EdgeInsets.only(left: 10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Organization',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                                overflow: TextOverflow.clip,
                              ),
                              Text(
                                widget._device.orgUnitPath ?? '-',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                                overflow: TextOverflow.clip,
                              )
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Model',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                                overflow: TextOverflow.clip,
                              ),
                              Text(
                                widget._device.model ?? '-',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                                overflow: TextOverflow.clip,
                              )
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Mac Address',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                                overflow: TextOverflow.clip,
                              ),
                              Text(
                                widget._device.macAddress ?? '-',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                                overflow: TextOverflow.clip,
                              )
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Last Known Network',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                                overflow: TextOverflow.clip,
                              ),
                              Text(
                                widget._device.lastKnownNetwork == null
                                    ? '-'
                                    : widget._device.lastKnownNetwork
                                        .map((o) => o.ipAddress)
                                        .join('\n'),
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                                overflow: TextOverflow.clip,
                              )
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'OS version',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                                overflow: TextOverflow.clip,
                              ),
                              Text(
                                widget._device.osVersion ?? '-',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                                overflow: TextOverflow.clip,
                              )
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Plataform Version',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                                overflow: TextOverflow.clip,
                              ),
                              Text(
                                widget._device.platformVersion ?? '-',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                                overflow: TextOverflow.clip,
                              )
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Device ID',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                                overflow: TextOverflow.clip,
                              ),
                              Text(
                                widget._device.deviceId ?? '-',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                                overflow: TextOverflow.clip,
                              )
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Last Enrollment Time',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                                overflow: TextOverflow.clip,
                              ),
                              Text(
                                widget._device.lastEnrollmentTime ?? '-',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                                overflow: TextOverflow.clip,
                              )
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Auto Update Expiration',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                                overflow: TextOverflow.clip,
                              ),
                              Text(
                                '${DateFormat.yMMMd().format(DateTime.fromMillisecondsSinceEpoch(int.parse(widget._device.autoUpdateExpiration)))}',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                                overflow: TextOverflow.clip,
                              )
                            ],
                          )),
                    ])),
          ],
        ),
        Padding(padding: EdgeInsets.all(0), child: Divider()),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ButtonBar(
              children: [
                FlatButton(
                    onPressed: () => setState(() => _isExpanded = false),
                    child: Text('See Less'))
              ],
            ),
          ],
        ),
      ]));
}
