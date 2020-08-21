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
import 'package:chrome_management_app/objects/detailed_device.dart';
import 'package:flutter/material.dart';

/// Enum to store the four possible fields to edit.
enum Fields { user, id, location, notes }

/// Function to show up the dialog and enable the user edit the custom fields.
Future<Map<Fields, String>> customFieldsTextDialog(
    BuildContext context, DetailedDevice device) {
  return showDialog(
      context: context,
      builder: (context) {
        return UpdateCustomFields(device.annotatedUser, device.annotatedAssetId,
            device.annotatedLocation, device.notes);
      });
}

/// Pop Up widget to edit the custom fields of a device.
class UpdateCustomFields extends StatefulWidget {
  /// Constructor of widget.
  UpdateCustomFields(
      this._annotatedUser, this._annotatedId, this._location, this._notes,
      {Key key})
      : super(key: key);

  /// String that stores the annotated user of the device.
  final String _annotatedUser;

  /// String that stores the annotated asset id of the device.
  final String _annotatedId;

  /// String that stores the annotated location of the device.
  final String _location;

  /// String that stores the notes of the device.
  final String _notes;

  @override
  State<StatefulWidget> createState() => _UpdateCustomFields();
}

class _UpdateCustomFields extends State<UpdateCustomFields> {
  /// Text edit controller for the annotated user.
  TextEditingController userTextController;

  /// Text edit controller for the annotated asset id.
  TextEditingController idTextController;

  /// Text edit controller for the annotated location.
  TextEditingController locationTextController;

  /// Text edit controller fo the notes.
  TextEditingController notesTextController;

  @override
  void initState() {
    userTextController = TextEditingController(text: widget._annotatedUser);
    idTextController = TextEditingController(text: widget._annotatedId);
    locationTextController = TextEditingController(text: widget._location);
    notesTextController = TextEditingController(text: widget._notes);
    super.initState();
  }

  /// Makes a map to return the values that were edited.
  Map<Fields, String> updateValues() {
    return {
      Fields.id: idTextController.text.trim(),
      Fields.user: userTextController.text.trim(),
      Fields.location: locationTextController.text.trim(),
      Fields.notes: notesTextController.text.trim()
    };
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
        contentPadding: EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 24.0),
        children: <Widget>[
          TextField(
              controller: userTextController,
              autofocus: true,
              decoration: new InputDecoration(
                labelText: "Annotated User",
                hintText: 'eg. joe',
              )),
          TextField(
              controller: idTextController,
              autofocus: true,
              decoration: new InputDecoration(
                labelText: "Annotated ID",
                hintText: 'eg. 123abc',
              )),
          TextField(
              controller: locationTextController,
              autofocus: true,
              decoration: new InputDecoration(
                labelText: "Location",
                hintText: 'eg. Seattle',
              )),
          TextField(
              controller: notesTextController,
              autofocus: true,
              decoration: new InputDecoration(
                labelText: "Notes",
                hintText: 'eg. This is a note',
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
                  Navigator.of(context).pop(updateValues());
                },
                child: Text('Apply'),
              )
            ],
          ),
        ]);
  }
}
