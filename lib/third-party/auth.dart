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

import 'package:flutter/services.dart';
import 'package:flutter_web_auth/flutter_web_auth.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

/// Model to authenticate user by flutter_web_auth.
///
/// See more https://pub.dev/packages/flutter_web_auth.
class GoogleAuth {
  /// Google Client ID
  static const String GOOGLE_CLIENT_ID =
      '119659549213-h13c2hr5fh6pghjtg957mvg2t21lajjq.apps.googleusercontent.com';

  ///Callback URI scheme
  static const String CALLBACK_URL_SCHEME =
      'com.googleusercontent.apps.119659549213-h13c2hr5fh6pghjtg957mvg2t21lajjq';

  /// Construct the url
  static final url = Uri.https('accounts.google.com', '/o/oauth2/v2/auth', {
    'response_type': 'code',
    'client_id': GOOGLE_CLIENT_ID,
    'redirect_uri': '$CALLBACK_URL_SCHEME:/',
    'scope': 'https://www.googleapis.com/auth/admin.directory.device.chromeos',
  });

  /// Authenticate User
  static dynamic authenticate() async {
    try {
      // Present the dialog to the user
      final result = await FlutterWebAuth.authenticate(
          url: url.toString(), callbackUrlScheme: CALLBACK_URL_SCHEME);
      // Extract code from resulting url
      final code = Uri.parse(result).queryParameters['code'];
      // Use this code to get an access token
      final response =
          await http.post('https://www.googleapis.com/oauth2/v4/token', body: {
        'client_id': GOOGLE_CLIENT_ID,
        'redirect_uri': '$CALLBACK_URL_SCHEME:/',
        'grant_type': 'authorization_code',
        'code': code,
      });
      // Get the access token from the response
      return jsonDecode(response.body)['access_token'] as String;
    } on PlatformException catch (e) {
      throw Exception(e);
    }
  }
}
