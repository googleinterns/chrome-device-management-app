import 'package:http/http.dart' as http;
import 'package:chrome_management_app/models/api_calls.dart';
import 'package:chrome_management_app/objects/account_devices.dart';

/// Controller to retrieve an Account devices
class Devices {
  /// Method to get account devices
  static Future<AccountDevices> getList(
      ApiCalls apiCall, String authToken, String nextPageToken) async {
    AccountDevices accountDevices;
    accountDevices =
        await apiCall.getDeviceList(authToken, nextPageToken).catchError((e) {
      throw Exception(e);
    });
    return accountDevices;
  }
}
