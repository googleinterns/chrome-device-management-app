import 'dart:convert';
import 'package:chrome_management_app/Objects/disk_volume_report.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check Json parse for volume info', () {
    final dummy = DiskVolumeReport.fromJson(json.decode("""
      {
        "volumeInfo": [
          {
            "volumeId": "volume id 1",
            "storageTotal": "storage total 1",
            "storageFree": "storage free 1"
          },
          {
            "volumeId": "volume id 2",
            "storageTotal": "storage total 2",
            "storageFree": "storage free 2"
          }
        ]
      }
    """));
    for (int i = 0; i < dummy.volumeInfo.length; i++) {
      expect(dummy.volumeInfo[i].volumeId, 'volume id ${i + 1}');
      expect(dummy.volumeInfo[i].storageTotal, 'storage total ${i + 1}');
      expect(dummy.volumeInfo[i].storageFree, 'storage free ${i + 1}');
    }
  });
}
