import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:chrome_management_app/Objects/account_devices.dart';
import 'package:chrome_management_app/Objects/detailed_device.dart';

//Url to get the intial page of the list of devices
final deviceListUrl =
    'https://www.googleapis.com/admin/directory/v1/customer/my_customer/devices/chromeos?projection=BASIC&maxResults=15';
//Url to get the next page of the list of devices
final deviceListWithTokenUrl =
    'https://www.googleapis.com/admin/directory/v1/customer/my_customer/devices/chromeos?projection=BASIC&maxResults=15&pageToken=';
//Url to get detailed information of a device
final detailedDeviceUrl =
    'https://www.googleapis.com/admin/directory/v1/customer/my_customer/devices/chromeos/';

class ApiCalls {
  /// Calls the Directory API to get a list of devices with max results of 15
  /// [authToken] is the authentication token for API to accept the requests
  /// [nextPageToken]  is the next page of the devices list that should retreive
  /// This method returns a [AccountDevices] object
  static getDeviceList(
      http.Client client, String authToken, String nextPageToken) async {
    var response;
    authToken = 'Bearer $authToken';
    if (nextPageToken == null) {
      response = await client.get(deviceListUrl,
          headers: {HttpHeaders.authorizationHeader: authToken});
    } else {
      response = await client.get(deviceListWithTokenUrl + nextPageToken,
          headers: {HttpHeaders.authorizationHeader: authToken});
    }
    // If conection is succesful return a AccountDevices object by parsing the
    // response body
    if (response.statusCode == 200) {
      return AccountDevices.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('${response.statusCode} ${response.body}');
    }
  }

  /// Calls the Directory API to get the detailed information of a device
  /// [authToken] is the authentication token for API to accept the requests
  /// [deviceId] is the ID of the device which its detailed information will be
  /// retrieved
  /// This method returns a [DetailedDevice] object
  static dynamic getDetailedDevice(
      http.Client client, String authToken, String deviceId) async {
    authToken = 'Bearer $authToken';
    final response = await client.get(detailedDeviceUrl + deviceId,
        headers: {HttpHeaders.authorizationHeader: authToken});
    // If conection is succesful return a DetailedDevice object by parsing the
    // response body
    if (response.statusCode == 200) {
      return DetailedDevice.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('${response.statusCode} ${response.body}');
    }
  }

  // TODO Remote commands ...
}
