import 'dart:convert';
import 'package:chrome_management_app/Objects/active_time_ranges.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check Json parse for active time ranges', () {
    final dummy = ActiveTimeRanges.fromJson(json.decode("""
      {
        "date": "date 1",
        "activeTime": "active time 1"
      }
    """));
    expect(dummy.activeTime, 'active time 1');
    expect(dummy.date, 'date 1');
  });
}
