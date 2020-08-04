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
import 'package:flutter/material.dart';

/// Pops an alert and on tap loads the function from the parameter.
Future<int> deprovisionReason(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return DeprovisionReasonSelect();
      });
}

/// Pop Up widget to show the possible reasons of a deprovision.
class DeprovisionReasonSelect extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DeprovisionReasonSelect();
}

class _DeprovisionReasonSelect extends State<DeprovisionReasonSelect> {
  int _reason;
  bool _option1 = false;
  bool _option2 = false;
  bool _option3 = false;
  bool _option4 = false;
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text('Select reason for deprovision'),
      children: <Widget>[
        CheckboxListTile(
          onChanged: (bool newValue) {
            _reason = 1;
            setState(() {
              _option1 = newValue;
              _option2 = false;
              _option3 = false;
              _option4 = false;
            });
          },
          value: _option1,
          title: const Text('Different model replacement'),
        ),
        CheckboxListTile(
          onChanged: (bool newValue) {
            _reason = 2;
            setState(() {
              _option1 = false;
              _option2 = newValue;
              _option3 = false;
              _option4 = false;
            });
          },
          value: _option2,
          title: const Text('Retiring device'),
        ),
        CheckboxListTile(
          onChanged: (bool newValue) {
            _reason = 3;
            setState(() {
              _option1 = false;
              _option2 = false;
              _option3 = newValue;
              _option4 = false;
            });
          },
          value: _option3,
          title: const Text('Same model replacement'),
        ),
        CheckboxListTile(
          onChanged: (bool newValue) {
            _reason = 4;
            setState(() {
              _option1 = false;
              _option2 = false;
              _option3 = false;
              _option4 = newValue;
            });
          },
          value: _option4,
          title: const Text('Upgrade transfer'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop(0);
              },
              child: Text('Cancel'),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop(_reason);
              },
              child: Text('Deprovise device'),
            )
          ],
        )
      ],
    );
  }
}
