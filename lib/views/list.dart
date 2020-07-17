import 'package:chrome_management_app/controllers/widget/device_list.dart';
import 'package:flutter/material.dart';

/// View to show the list of devices of an account.
///
class DevicesListView extends StatelessWidget {
  /// Authorizatio token to call the API.
  final String token;

  /// Constructor of view
  DevicesListView({Key key, @required this.token}) : super(key: key);

  /// UI build of view
  @override
  Widget build(BuildContext context) {
    /// Makes unpoppable the view and shows [DeviceList] widget
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: Scaffold(
          body: Container(child: DeviceList(token)),
        ));
  }
}
