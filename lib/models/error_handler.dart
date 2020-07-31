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
