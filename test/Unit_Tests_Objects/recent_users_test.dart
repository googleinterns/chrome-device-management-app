import 'dart:convert';
import 'package:chrome_management_app/Objects/recent_users.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Check Json parse for recent users', () {
    final dummy = RecentUsers.fromJson(json.decode("""
    {
        "email": "email",
        "type": "type"
    }
    """));
    expect(dummy.email, 'email');
    expect(dummy.type, 'type');
  });
}
