/// Copyright 2020 Google LLC
///
/// Licensed under the Apache License, Version 2.0 (the "License");
/// you may not use this file except in compliance with the License.
/// You may obtain a copy of the License at
///
///     https://www.apache.org/licenses/LICENSE-2.0
///
/// Unless required by applicable law or agreed to in writing, software
/// distributed under the License is distributed on an "AS IS" BASIS,
/// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
/// See the License for the specific language governing permissions and
/// limitations under the License.

import 'dart:convert';
import 'package:chrome_management_app/objects/tpm_version_info.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check Json parse for tpm version info', () {
    final dummy = TpmVersionInfo.fromMap(json.decode("""
      {        
      "family": "family",
      "specLevel": "spec level",
      "manufacturer": "manufacter",
      "tpmModel": "tpm model",
      "firmwareVersion": "firmware version",
      "vendorSpecific": "vendor specific"
      }
    """));
    expect(dummy.family, 'family');
    expect(dummy.firmwareVersion, 'firmware version');
    expect(dummy.manufacturer, 'manufacter');
    expect(dummy.specLevel, 'spec level');
    expect(dummy.tpmModel, 'tpm model');
    expect(dummy.vendorSpecific, 'vendor specific');
  });
}
