import 'dart:convert';
import 'package:chrome_management_app/Objects/tpm_version_info.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check Json parse for tpm version info', () {
    final dummy = TpmVersionInfo.fromJson(json.decode("""
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
