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

import 'package:chrome_management_app/views/login.dart';
import 'package:flutter/material.dart';

/// Model to manage the possible exceptions from the API responses.
class ErrorHandler implements Exception {
  /// Status code of the exception.
  int _statusCode;

  /// Message to show from the exception.
  String _message;

  /// Constructor of the exception, it assigns a message depending on the
  /// status code
  ErrorHandler(this._statusCode) {
    if (_statusCode == 401) {
      _message = 'Sesion time out, please log in again.';
    } else if (_statusCode == 403) {
      _message =
          'Forbidden access, please verify that your account have enabled the permissions.';
    } else if (_statusCode > 499) {
      _message = 'Oops something went wrong, please try again.';
    }
  }

  /// Special message for error 401 when user dont have permisions.
  String get unverifiedUser =>
      '“Please verify that CDM app is enabled and user has permissions.';

  /// Getter for message.
  String get message => _message;

  /// Getter for status code.
  int get statusCode => _statusCode;
}

getValueOrDefault(dynamic value) {
  return value == null ? '-' : value.toString();
}

/// Pops an alert to user and sends the app to the login view.
alertAndLogIn(ErrorHandler error, bool unverifiedUser, BuildContext context) {
  return new AlertDialog(
    title: Text('Warning'),
    content: SingleChildScrollView(
      child: ListBody(
        children: <Widget>[
          unverifiedUser ? Text(error.unverifiedUser) : Text(error.message),
        ],
      ),
    ),
    actions: <Widget>[
      FlatButton(
        child: Text('Reauthenticate'),
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (BuildContext context) => LogIn()),
              (Route<dynamic> route) => false);
        },
      ),
    ],
  );
}

/// Pops an alert and on tap loads the function from the parameter.
alertAndRetry(ErrorHandler error, Function func) {
  return new AlertDialog(
    title: Text('Warning'),
    content: SingleChildScrollView(
      child: ListBody(
        children: <Widget>[
          Text(error.message),
        ],
      ),
    ),
    actions: <Widget>[
      FlatButton(
        child: Text('Try again'),
        onPressed: func,
      ),
    ],
  );
}
