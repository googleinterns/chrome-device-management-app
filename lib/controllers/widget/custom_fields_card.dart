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
          child: _isExpanded ? customFull(context) : customSummary(context))
    ]);
  }

  /// Collapsed card widget to show a breif summary of the custom fields of a
  /// device.
  Widget customSummary(BuildContext context) => Card(
          child: Column(children: <Widget>[
        Row(
          children: [
            DetailCategory(
                text: 'Custom fields',
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
                        title: 'Asset ID',
                        value: widget._device.annotatedAssetId ?? '-'),
                    DetailedText(
                        title: 'User',
                        value: widget._device.annotatedUser ?? '-'),
                    DetailedText(
                        title: 'Location',
                        value: widget._device.annotatedLocation ?? '-')
                  ],
                )),
          ],
        ),
        DividerWith0MArgin(),
        BottomCardButton(
            title: 'See More', onTap: () => setState(() => _isExpanded = true))
      ]));

  /// Expanded card widget to show full information of the custom fields from
  /// a device.
  Widget customFull(BuildContext context) => Card(
          child: Column(children: <Widget>[
        Row(
          children: [
            DetailCategory(
                text: 'Custom fields',
                width: MediaQuery.of(context).size.width * 0.4),
            CustomVerticalDivider(
                height: MediaQuery.of(context).size.height * 0.5),
            Container(
                width: MediaQuery.of(context).size.width * 0.5,
                margin: EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    DetailedText(
                        title: 'Asset ID',
                        value: widget._device.annotatedAssetId ?? '-'),
                    DetailedText(
                        title: 'User',
                        value: widget._device.annotatedUser ?? '-'),
                    DetailedText(
                        title: 'Location',
                        value: widget._device.annotatedLocation ?? '-'),
                    DetailedText(
                        title: 'Notes', value: widget._device.notes ?? '-')
                  ],
                )),
          ],
        ),
        DividerWith0MArgin(),
        BottomCardButton(
            title: 'See Less', onTap: () => setState(() => _isExpanded = false))
      ]));
}
