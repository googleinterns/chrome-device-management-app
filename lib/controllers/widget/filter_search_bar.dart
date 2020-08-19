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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Enum to manage all the filter options.
enum Filters {
  asset_id,
  last_sync,
  date_registered,
  ethernet_mac,
  location,
  notes,
  recent_user,
  serial_number,
  status,
  user,
  wifi_mac
}

/// Map to manage all the filters text hints.
const Map<Filters, String> filtersHint = {
  Filters.asset_id: '1234',
  Filters.ethernet_mac: 'e8ea6a157981',
  Filters.location: 'Seattle',
  Filters.notes: 'loaned from john',
  Filters.recent_user: 'user@mydomain.com',
  Filters.serial_number: '12345abcdefg',
  Filters.user: 'joe',
  Filters.wifi_mac: ''
};

/// Map to manage all the filters title strings.
const Map<Filters, String> filtersTitle = {
  Filters.asset_id: 'Asset Id',
  Filters.last_sync: 'Last Sync',
  Filters.date_registered: 'Date Registered',
  Filters.ethernet_mac: 'Ethernet Mac Address',
  Filters.location: 'Location',
  Filters.notes: 'Notes',
  Filters.recent_user: 'Recent User',
  Filters.serial_number: 'Serial Number',
  Filters.status: 'Status',
  Filters.user: 'User',
  Filters.wifi_mac: 'Wifi Mac Address'
};

/// Enum to manage all the status options.
enum Status { provisioned, disable, deprovisioned }

/// Map to manage all the status title strings.
const Map<Status, String> statusTitle = {
  Status.deprovisioned: 'deprovisioned',
  Status.disable: 'disabled',
  Status.provisioned: 'provisioned'
};

/// Pops an alert and on tap loads the function from the parameter.
Future<String> filterText(BuildContext context, Filters filter, String text) {
  return showDialog(
      context: context,
      builder: (context) {
        return FilterTextDialog(
          filter: filter,
          text: text,
        );
      });
}

/// Verifies if the filter is a date.
bool _isDate(Filters filter) {
  return filter == Filters.date_registered || filter == Filters.last_sync;
}

/// Formats a date into a string.
String _formatDate(DateTime date) {
  return DateFormat('yyyy-MM-dd').format(date);
}

/// Shows a pop up of a date picker.
_pickDate(BuildContext context, DateTime date, DateTime firstDate,
    DateTime lastDate) {
  return showDatePicker(
      context: context,
      initialDate: date ?? DateTime.now(),
      firstDate: firstDate ?? DateTime(1990),
      lastDate: lastDate ?? DateTime(DateTime.now().year + 5));
}

/// Dialog to fill and apply a filter
class FilterTextDialog extends StatefulWidget {
  final Filters filter;
  final String text;
  FilterTextDialog({this.filter, this.text});
  @override
  _FilterTextDialog createState() => _FilterTextDialog(filter, text);
}

class _FilterTextDialog extends State<FilterTextDialog> {
  /// Stores value of the filter.
  String _text;

  ///Stores type of filter.
  Filters _filter;

  /// Constructor of state.
  _FilterTextDialog(this._filter, this._text);

  /// Text edit controller.
  TextEditingController textController;

  /// Option of date filter.
  String _optionDate;

  /// Date to establish a range, it stores the before date value.
  DateTime _before;

  /// Date to establish a range, it stores the after date value
  DateTime _after;

  /// Stores a especific date.
  DateTime _date;

  /// Stores the [Status] option.
  Status _status;

  /// List of the options to filter a date.
  final _dateOptions = [
    'Basic date',
    'Before a date',
    'After a date',
    'Within a date range'
  ];

  /// Initial function.
  @override
  void initState() {
    // Set date values to actual date.
    _optionDate = 'Basic date';
    List<String> dates;
    _date = DateTime.now();
    _before = DateTime.now();
    _after = DateTime.now();
    // Set text controller to text variable.
    textController = TextEditingController(text: this._text);
    // Check if a date is editing so it gets its previous value.
    if (_isDate(_filter) && _text != null) {
      dates = _text.split('..');
      if (dates.length > 1) {
        if (dates.first == '') {
          _date = DateTime.parse(dates.last);
          _optionDate = 'Before a date';
        } else if (dates.last == '') {
          _date = DateTime.parse(dates.first);
          _optionDate = 'After a date';
        } else {
          _optionDate = 'Within a date range';
          _before = DateTime.parse(dates.first);
          _after = DateTime.parse(dates.last);
        }
      } else {
        _date = DateTime.parse(dates.first);
      }
    }
    // Set inital status value.
    _status = _filter == Filters.status && _text != null
        ? _text == statusTitle[Status.provisioned]
            ? Status.provisioned
            : _text == statusTitle[Status.deprovisioned]
                ? Status.deprovisioned
                : Status.disable
        : Status.provisioned;
    super.initState();
  }

  /// Function to get a date to query string.
  String _dateToString(optionDate) {
    return optionDate == 'Basic date'
        ? _formatDate(_date)
        : optionDate == 'Before a date'
            ? '..' + _formatDate(_date)
            : optionDate == 'After a date'
                ? _formatDate(_date) + '..'
                : _formatDate(_before) + '..' + _formatDate(_after);
  }

  /// Function to change the value of the status filter value.
  void _changeStatusValue(Status value) {
    setState(() {
      _status = value;
    });
  }

  /// Dialog that shows when filter to apply is a date.
  _dateDialog(String option) {
    return option == 'Within a date range'
        ? Column(
            children: <Widget>[
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: <Widget>[
                  FlatButton(
                      onPressed: () async {
                        _pickDate(context, _before, null, _after)
                            .then((value) => setState(() {
                                  _before = value ?? _before;
                                }));
                      },
                      child: Text(
                        _formatDate(_before),
                      )),
                  Text('to'),
                  FlatButton(
                    onPressed: () async {
                      _pickDate(context, _after, _before, null)
                          .then((value) => setState(() {
                                _after = value ?? _after;
                              }));
                    },
                    child: Text(
                      _formatDate(_after),
                    ),
                  )
                ],
              ),
            ],
          )
        : Column(
            children: <Widget>[
              ButtonBar(alignment: MainAxisAlignment.center, children: <Widget>[
                Text('Select date:'),
                FlatButton(
                    onPressed: () {
                      _pickDate(context, _date, null, null)
                          .then((value) => setState(() {
                                _date = value ?? _date;
                              }));
                    },
                    child: Text(
                      _formatDate(_date),
                    ))
              ]),
            ],
          );
  }

  /// Dialog to select device status filter.
  Widget _selectStatus() {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Radio(
              value: Status.provisioned,
              groupValue: _status,
              onChanged: _changeStatusValue),
          title: const Text('Provisioned'),
        ),
        ListTile(
          leading: Radio(
              value: Status.disable,
              groupValue: _status,
              onChanged: _changeStatusValue),
          title: const Text('Disabled'),
        ),
        ListTile(
          leading: Radio(
              value: Status.deprovisioned,
              groupValue: _status,
              onChanged: _changeStatusValue),
          title: const Text('Deprovisioned'),
        )
      ],
    );
  }

  /// Dialog in which a date is selected.
  Widget _selectDate() {
    return Column(
      children: <Widget>[
        Text(
          filtersTitle[_filter],
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        new DropdownButton<String>(
          value: _optionDate,
          items: _dateOptions.map((String value) {
            return new DropdownMenuItem<String>(
              value: value,
              child: new Text(value),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              _optionDate = value;
            });
          },
        ),
        _dateDialog(_optionDate)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
        contentPadding: EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
        children: <Widget>[
          _isDate(_filter)
              ? _selectDate()
              : _filter == Filters.status
                  ? _selectStatus()
                  :
                  // Text field to input the value of the filter selected.
                  new TextField(
                      controller: textController,
                      autofocus: true,
                      decoration: new InputDecoration(
                        labelText: filtersTitle[_filter],
                        hintText: 'eg. ' + filtersHint[_filter],
                      )),
          ButtonBar(
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Cancel')),
              FlatButton(
                key: Key(FILTERS_APPLY),
                onPressed: () {
                  Navigator.of(context).pop(_isDate(_filter)
                      ? _dateToString(_optionDate)
                      : _filter == Filters.status
                          ? statusTitle[_status]
                          : textController.text.trim());
                },
                child: Text('Apply'),
              )
            ],
          ),
        ]);
  }
}
