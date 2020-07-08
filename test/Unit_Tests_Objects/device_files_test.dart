import 'dart:convert';
import 'package:chrome_management_app/Objects/device_files.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check Json parse for device files', () {
    final dummy = DeviceFiles.fromJson(json.decode("""
      {        
        "name": "name",
        "type": "type",
        "downloadUrl": "url",
        "createTime": "create time"
      }
    """));
    expect(dummy.createTime, 'create time');
    expect(dummy.downloadUrl, 'url');
    expect(dummy.name, 'name');
    expect(dummy.type, 'type');
  });
}
