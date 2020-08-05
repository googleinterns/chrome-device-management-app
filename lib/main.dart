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

import 'package:chrome_management_app/models/globalObject.dart';
import 'package:chrome_management_app/views/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Intial function runs into Google Sign In view.
void main() {
  runApp(ChangeNotifierProvider(
    // Initialize the model in the builder. That way, Provider
    // can own Counter's lifecycle, making sure to call `dispose`
    // when not needed anymore.
    create: (context) => GlobalObject(null, null),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // Build a root widget and navigate it to LogIn view so it
  // can navigate further on to other views.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LogIn(),
    );
  }
}
