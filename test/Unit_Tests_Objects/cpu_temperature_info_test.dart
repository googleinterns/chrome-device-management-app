import 'dart:convert';
import 'package:chrome_management_app/Objects/cpu_temperature_info.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check Json parse for cpu temperature info', () {
    final dummy = CpuTemperatureInfo.fromJson(json.decode("""
      {
        "temperature": "temp",
        "label": "label"
      }
    """));
    expect(dummy.temperature, 'temp');
    expect(dummy.label, 'label');
  });
}
