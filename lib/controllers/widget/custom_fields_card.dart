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

/// Stateful Widget to show expandable card with the information of the custom
/// fields of a device.
class CustomFieldsCard extends StatefulWidget {
  /// Constructor
  CustomFieldsCard(this._device, this._editValues, {Key key}) : super(key: key);

  /// Detailed device from which he information is taken
  final DetailedDevice _device;

  /// Function to call when user clicks on edit values.
  final Function _editValues;

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
          child: _isExpanded
              ? customFull(context, widget._editValues)
              : customSummary(context, widget._editValues))
    ]);
  }

  /// Collapsed card widget to show a breif summary of the custom fields of a
  /// device.
  Widget customSummary(BuildContext context, Function editValues) => Card(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.edit), onPressed: editValues)
                      ],
                    ),
                    DetailedText(
                        title: 'Asset ID',
                        value: widget._device.annotatedAssetId ?? '-',
                        key: Key(CUSTOM_FIELDS_ASSET_ID_KEY)),
                    DetailedText(
                        title: 'User',
                        value: widget._device.annotatedUser ?? '-',
                        key: Key(CUSTOM_FIELDS_USER_KEY)),
                    DetailedText(
                        title: 'Location',
                        value: widget._device.annotatedLocation ?? '-',
                        key: Key(CUSTOM_FIELDS_LOCATION_KEY))
                  ],
                )),
          ],
        ),
        DividerWith0MArgin(),
        BottomCardButton(
            title: 'See More',
            onTap: () => setState(() => _isExpanded = true),
            key: Key(CUSTOM_FIELDS_MORE_LESS_BUTTON_KEY))
      ]));

  /// Expanded card widget to show full information of the custom fields from
  /// a device.
  Widget customFull(BuildContext context, Function editValues) => Card(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.edit), onPressed: editValues)
                      ],
                    ),
                    DetailedText(
                        title: 'Asset ID',
                        value: widget._device.annotatedAssetId ?? '-',
                        key: Key(CUSTOM_FIELDS_ASSET_ID_KEY)),
                    DetailedText(
                        title: 'User',
                        value: widget._device.annotatedUser ?? '-',
                        key: Key(CUSTOM_FIELDS_USER_KEY)),
                    DetailedText(
                        title: 'Location',
                        value: widget._device.annotatedLocation ?? '-',
                        key: Key(CUSTOM_FIELDS_LOCATION_KEY)),
                    DetailedText(
                        title: 'Notes',
                        value: widget._device.notes ?? '-',
                        key: Key(CUSTOM_FIELDS_NOTES_KEY))
                  ],
                )),
          ],
        ),
        DividerWith0MArgin(),
        BottomCardButton(
            title: 'See Less',
            onTap: () => setState(() => _isExpanded = false),
            key: Key(CUSTOM_FIELDS_MORE_LESS_BUTTON_KEY))
      ]));
}
