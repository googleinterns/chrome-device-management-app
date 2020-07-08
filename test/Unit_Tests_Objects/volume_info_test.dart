import 'dart:convert';
import 'package:chrome_management_app/Objects/volume_info.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check Json parse for volume info', () {
    final dummy = VolumeInfo.fromJson(json.decode("""
      {        
        "volumeId": "volume ID",
        "storageTotal": "storage total",
        "storageFree": "storage free"
      }
    """));
    expect(dummy.volumeId, 'volume ID');
    expect(dummy.storageTotal, 'storage total');
    expect(dummy.storageFree, 'storage free');
  });
}
