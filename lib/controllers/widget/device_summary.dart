import 'package:chrome_management_app/objects/basic_device.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Stateless Widget to show a summary of a Chrome device.
class SummaryDevice extends StatelessWidget {
  /// Chrome device to be rendered.
  final BasicDevice _device;

  /// Constructir of Widget.
  const SummaryDevice(this._device);

  /// Widget UI build.
  @override
  Widget build(BuildContext context) {
    /// Takes a color to be the background of the leading circle avatar.
    final _circleColor = Colors
        .primaries[_device.deviceId.codeUnits.first % Colors.primaries.length];

    /// Chooses the text color of the circle avatar depending of its
    /// background color.
    final _textColor =
        _circleColor.computeLuminance() > .5 ? Colors.black : Colors.white;
    return new Padding(
      // Padding of the widget
      padding: EdgeInsets.only(left: 20, top: 10),
      child: Row(
        // Creates leading circle avatar with the first to characters of the
        // serial number of the device.
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: _circleColor,
            child: Text(_device.serialNumber.substring(0, 2).toUpperCase(),
                style: TextStyle(color: _textColor)),
          ),
          Padding(padding: EdgeInsets.only(left: 12.0)),
          // Summary of the device
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Serial number of the device.
                Padding(
                    padding: EdgeInsets.only(bottom: 2.0),
                    child: Text(
                      _device.serialNumber,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.bold),
                    )),
                // User of the device.
                Padding(
                    padding: EdgeInsets.only(bottom: 2.0),
                    child: Text(
                      'User: ${_device.annotatedUser}',
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                      style: TextStyle(fontSize: 14.0, color: Colors.black87),
                    )),
                // Status of the device
                Padding(
                    padding: EdgeInsets.only(bottom: 2.0),
                    child: Text(
                      'Status: ${_device.status}',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12.0, color: Colors.black87),
                    )),
                // Last synchronied date of the device
                Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    'Last Sync: ${DateFormat.yMMMd().format(DateTime.parse(_device.lastSync))}',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12.0, color: Colors.grey[700]),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
