import 'dart:io';
import 'package:chrome_management_app/Objects/account_devices.dart';
import 'package:chrome_management_app/Objects/detailed_device.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;
import 'package:chrome_management_app/Models/api_calls.dart';

/// Class to mock a http client
class MockClient extends Mock implements http.Client {}

main() {
  /// Mock a authentication token
  final authToken = '123';

  /// Mock a next page token
  final nextPageToken = '456';

  /// Mock a device ID
  final deviceId = '789';

  /// Url to get the intial page of the list of devices
  final deviceListUrl =
      'https://www.googleapis.com/admin/directory/v1/customer/my_customer/devices/chromeos?projection=BASIC&maxResults=15';

  /// Url to get the next page of the list of devices
  final deviceListWithTokenUrl =
      'https://www.googleapis.com/admin/directory/v1/customer/my_customer/devices/chromeos?projection=BASIC&maxResults=15&pageToken=$nextPageToken';

  /// Url to get detailed information of a device
  final detailedDeviceUrl =
      'https://www.googleapis.com/admin/directory/v1/customer/my_customer/devices/chromeos/$deviceId';

  /// Mock json response from [deviceList] and [deviceListWithTokenUrl]
  final jsonAccountDevices = """
    {
    "kind": "kind",
    "etag": "etag",
    "chromeosdevices": [
      {
        "kind": "kind 1",
        "etag": "etag 1",
        "deviceId": "device Id 1",
        "serialNumber": "serialNumber 1",
        "status": "status 1",
        "lastSync": "lastSync 1", 
        "supportEndDate": "supportEndDate 1",
        "annotatedUser": "annotated user 1",
        "annotatedLocation": "annotated location 1",
        "annotatedAssetId": "anotated asset id 1",
        "notes": "notes 1"       
      }
    ],
    "nextPageToken": "token"
    }""";

  /// Mock json response from [detailedDeviceUrl]
  final jsonDetailedDevice = """
    {
    "kind": "kind",
    "etag": "etag",
    "deviceId": "device ID",
    "serialNumber": "serial number",
    "status": "status",
    "lastSync": "last sync",
    "supportEndDate": "support end date",
    "annotatedUser": "user",
    "annotatedLocation": "location",
    "annotatedAssetId": "asset ID",
    "notes": "notes",
    "model": "model",
    "meid": "meid",
    "orderNumber": "order number",
    "willAutoRenew": true,
    "osVersion": "os version",
    "platformVersion": "plataform version",
    "firmwareVersion": "firmware version",
    "macAddress": "mac address",
    "bootMode": "boot mode",
    "lastEnrollmentTime": "last enrolled date",
    "orgUnitPath": "org unit path"
    }""";

  /// Group of tests to do to the api calls, each test has its objective
  group('Api Calls', () {
    test(
        'returns AccountDevices if the http call completes successfully without next page token',
        () async {
      final client = MockClient();
      when(client.get(deviceListUrl,
              headers: {HttpHeaders.authorizationHeader: 'Bearer $authToken'}))
          .thenAnswer((_) async => http.Response(jsonAccountDevices, 200));

      expect(await ApiCalls.getDeviceList(client, authToken, null),
          isA<AccountDevices>());
    });

    test(
        "throws an exception if the http call for list of devices without next page token completes with an error",
        () {
      final client = MockClient();
      when(client.get(deviceListUrl,
              headers: {HttpHeaders.authorizationHeader: 'Bearer $authToken'}))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      expect(ApiCalls.getDeviceList(client, authToken, null), throwsException);
    });

    test(
        'returns AccountDevices if the http call completes successfully with next page token',
        () async {
      final client = MockClient();
      when(client.get(deviceListWithTokenUrl,
              headers: {HttpHeaders.authorizationHeader: 'Bearer $authToken'}))
          .thenAnswer((_) async => http.Response(jsonAccountDevices, 200));

      expect(await ApiCalls.getDeviceList(client, authToken, nextPageToken),
          isA<AccountDevices>());
    });
    test(
        "throws an exception if the http call for list of devices with next page token completes with an error",
        () {
      final client = MockClient();
      when(client.get(deviceListWithTokenUrl,
              headers: {HttpHeaders.authorizationHeader: 'Bearer $authToken'}))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      expect(ApiCalls.getDeviceList(client, authToken, nextPageToken),
          throwsException);
    });

    test(
        'returns DetailedDevice if the http call to detailed device completes successfully',
        () async {
      final client = MockClient();
      when(client.get(detailedDeviceUrl,
              headers: {HttpHeaders.authorizationHeader: 'Bearer $authToken'}))
          .thenAnswer((_) async => http.Response(jsonDetailedDevice, 200));

      expect(await ApiCalls.getDetailedDevice(client, authToken, deviceId),
          isA<DetailedDevice>());
    });
    test(
        "throws an exception if the http call for detailed device completes with an error",
        () {
      final client = MockClient();
      when(client.get(detailedDeviceUrl,
              headers: {HttpHeaders.authorizationHeader: 'Bearer $authToken'}))
          .thenAnswer((_) async => http.Response('Not Found', 404));

      expect(ApiCalls.getDetailedDevice(client, authToken, deviceId),
          throwsException);
    });
  });
}
