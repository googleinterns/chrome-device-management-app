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

import 'package:chrome_management_app/models/error_handler.dart';
import 'package:chrome_management_app/objects/detailed_device.dart';
import 'package:flutter/material.dart';

/// Stateful Widget to show expandable card with the information of the custom
/// fields of a device.
class CustomFieldsCard extends StatefulWidget {
  /// Constructor
  CustomFieldsCard(this._device, {Key key}) : super(key: key);

  /// Detailed device from which he information is taken
  final DetailedDevice _device;

  @override
  _CustomFieldsCardState createState() => new _CustomFieldsCardState();
}

class _CustomFieldsCardState extends State<CustomFieldsCard>
    with TickerProviderStateMixin<CustomFieldsCard> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new AnimatedSize(
          vsync: this,
          duration: const Duration(milliseconds: 500),
          child: new ConstrainedBox(
              constraints: new BoxConstraints(),
              child:
                  _isExpanded ? customFull(context) : customSummary(context)))
    ]);
  }

  /// Collapsed card widget to show a breif summary of the custom fields of a
  /// device.
  Widget customSummary(BuildContext context) => Card(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Text(
                    'Custom fields',
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
                                  'Asset ID',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500),
                                  overflow: TextOverflow.clip,
                                ),
                                Text(
                                  getValueOrDefault(
                                      widget._device.annotatedAssetId),
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
                                  'User',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w500),
                                  overflow: TextOverflow.clip,
                                ),
                                Text(
                                  getValueOrDefault(
                                      widget._device.annotatedUser),
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
                                'Location',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                                overflow: TextOverflow.clip,
                              ),
                              Text(
                                getValueOrDefault(
                                    widget._device.annotatedLocation),
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black54),
                                overflow: TextOverflow.clip,
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            Padding(padding: EdgeInsets.all(0), child: Divider()),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () => setState(() => _isExpanded = true),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'See More',
                      style: TextStyle(color: Colors.blue[500], fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  /// Expanded card widget to show full information of the custom fields from
  /// a device.
  Widget customFull(BuildContext context) => Card(
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
                'Custom fields',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w500),
                overflow: TextOverflow.clip,
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.5,
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
                                'Asset ID',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                                overflow: TextOverflow.clip,
                              ),
                              Text(
                                getValueOrDefault(
                                    widget._device.annotatedAssetId),
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
                                'User',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                                overflow: TextOverflow.clip,
                              ),
                              Text(
                                getValueOrDefault(widget._device.annotatedUser),
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
                              'Location',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500),
                              overflow: TextOverflow.clip,
                            ),
                            Text(
                              getValueOrDefault(
                                  widget._device.annotatedLocation),
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                              overflow: TextOverflow.clip,
                            )
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Notes',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                                overflow: TextOverflow.clip,
                              ),
                              Text(
                                getValueOrDefault(widget._device.notes),
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
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          InkWell(
            onTap: () => setState(() => _isExpanded = false),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'See Less',
                style: TextStyle(color: Colors.blue[500], fontSize: 16),
              ),
            ),
          )
        ]),
      ]));
}
