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

/// Enum to get the values of the possible options of deprovision.
enum Reasons {
  different_model_replacement,
  retiring_device,
  same_model_replacement,
  upgrade_transfer
}

/// Pop Up widget to show the possible reasons of a deprovision.
class DeprovisionReasonSelect extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DeprovisionReasonSelect();
}

class _DeprovisionReasonSelect extends State<DeprovisionReasonSelect> {
  /// Option selected, by default is in different model replacemnet.
  Reasons _reason = Reasons.different_model_replacement;
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: const Text('Select reason for deprovision'),
      children: <Widget>[
        ListTile(
          leading: Radio(
            value: Reasons.different_model_replacement,
            groupValue: _reason,
            onChanged: (Reasons value) {
              setState(() {
                _reason = value;
              });
            },
          ),
          title: const Text('Different model replacement'),
        ),
        ListTile(
          leading: Radio(
            value: Reasons.retiring_device,
            groupValue: _reason,
            onChanged: (Reasons value) {
              setState(() {
                _reason = value;
              });
            },
          ),
          title: const Text('Retiring device'),
        ),
        ListTile(
          leading: Radio(
            value: Reasons.same_model_replacement,
            groupValue: _reason,
            onChanged: (Reasons value) {
              setState(() {
                _reason = value;
              });
            },
          ),
          title: const Text('Same model replacement'),
        ),
        ListTile(
          leading: Radio(
            value: Reasons.upgrade_transfer,
            groupValue: _reason,
            onChanged: (Reasons value) {
              setState(() {
                _reason = value;
              });
            },
          ),
          title: const Text('Upgrade transfer'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop(_reason.index);
              },
              child: Text('Deprovise device'),
            )
          ],
        )
      ],
    );
  }
}
