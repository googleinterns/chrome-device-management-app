import 'dart:convert';
import 'package:chrome_management_app/Objects/system_ram_free_report.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check Json parse for system ram free report', () {
    final dummy = SystemRamFreeReport.fromJson(json.decode("""
      {
        "reportTime": "report time",
        "systemRamFreeInfo": 
        [
          "system ram free info 1",
          "system ram free info 2"
        ]
      }
    """));
    expect(dummy.reportTime, 'report time');
    for (int i = 0; i < dummy.systemRamFreeInfo.length; i++) {
      expect(dummy.systemRamFreeInfo[i], 'system ram free info ${i + 1}');
    }
  });
}
