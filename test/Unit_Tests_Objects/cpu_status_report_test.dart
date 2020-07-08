import 'dart:convert';
import 'package:chrome_management_app/Objects/cpu_status_report.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check Json parse for cpu status report', () {
    final dummy = CpuStatusReport.fromJson(json.decode("""
      {
        "reportTime": "report time",
        "cpuUtilizationPercentageInfo": [
          "info 1",
          "info 2"
        ],
        "cpuTemperatureInfo": [
          {
            "temperature": "temp 1",
            "label": "label 1"
          },
           {
            "temperature": "temp 2",
            "label": "label 2"
          }
        ]
      }
    """));
    expect(dummy.reportTime, 'report time');
    for (int i = 0; i < dummy.cpuUtilizationPercentageInfo.length; i++) {
      expect(dummy.cpuUtilizationPercentageInfo[i], 'info ${i + 1}');
    }
    for (int i = 0; i < dummy.cpuTemperatureInfo.length; i++) {
      expect(dummy.cpuTemperatureInfo[i].label, 'label ${i + 1}');
      expect(dummy.cpuTemperatureInfo[i].temperature, 'temp ${i + 1}');
    }
  });
}
