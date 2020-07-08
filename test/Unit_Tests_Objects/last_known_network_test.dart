import 'dart:convert';
import 'package:chrome_management_app/Objects/last_known_network.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check Json parse for last known network', () {
    final dummy = LastKnownNetwork.fromJson(json.decode("""
      {        
        "ipAddress": "ip address",
        "wanIpAddress": "wan ip address"
      }
    """));
    expect(dummy.ipAddress, 'ip address');
    expect(dummy.wanIpAddress, 'wan ip address');
  });
}
