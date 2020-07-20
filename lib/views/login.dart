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

import 'package:chrome_management_app/third-party/auth.dart';
import 'package:chrome_management_app/views/list.dart';
import 'package:flutter/material.dart';

/// View that will hold the Google Sign In Authenication.
class LogIn extends StatefulWidget {
  /// Creates state of the view.
  @override
  _LogInState createState() => _LogInState();
}

/// LogIn View state.
class _LogInState extends State<LogIn> {
  /// Message that appears on the login view.
  String _message = 'Google Sign In';

  /// Initial state of the view widget.
  @override
  void initState() {
    super.initState();
  }

  /// Google Auithenticate method, if it is succesful it sends user to
  /// list of devices view.
  void authenticate() async {
    GoogleAuth.authenticate().then((value) {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (BuildContext context) =>
                    DevicesListView(token: value)),
            (Route<dynamic> route) => false);
      });
    }).catchError((e) {
      setState(() {
        // TODO #34 handle errors
        _message = 'Got error $e\nPlease try again.';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chrome Device Management'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Display message
              Text('$_message\n'),
              const SizedBox(height: 80),
              RaisedButton(
                child: Text('Authenticate'),
                onPressed: () {
                  this.authenticate();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
