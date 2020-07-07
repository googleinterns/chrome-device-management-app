import 'package:chrome_management_app/Objects/basic_device.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';

void main() {
  test('Check Json parse for basic device', () {
    final basic = BasicDevice.fromJson(json.decode(""" {
        "kind": "kind",
        "etag": "etag",
        "deviceId": "device Id",
        "serialNumber": "serialNumber",
        "status": "status",
        "lastSync": "lastSync", 
        "supportEndDate": "supportEndDate",
        "annotatedUser": "annotated user",
        "annotatedLocation": "annotated location",
        "annotatedAssetId": "anotated asset id",
        "notes": "notes"       
      }
      """));
    expect(basic.kind, 'kind');
    expect(basic.etag, 'etag');
    expect(basic.deviceId, 'device Id');
    expect(basic.serialNumber, 'serialNumber');
    expect(basic.status, 'status');
    expect(basic.lastSync, 'lastSync');
    expect(basic.supportEndDate, 'supportEndDate');
    expect(basic.annotatedUser, 'annotated user');
    expect(basic.annotatedLocation, 'annotated location');
    expect(basic.annotatedAssetId, 'anotated asset id');
    expect(basic.notes, 'notes');
  });
}
