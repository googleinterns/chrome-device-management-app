// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:chrome_management_app/models/keys_util.dart';
import 'package:flutter/material.dart';

/// Widget to show a custom text line.
Widget textLine(
    {@required Key key,
    @required String text,
    @required TextStyle style,
    @required EdgeInsetsGeometry padding}) {
  // Status of the device
  return Padding(
      padding: padding,
      child: Text(text,
          maxLines: 2,
          key: key,
          overflow: TextOverflow.ellipsis,
          style: style));
}

/// Widget used to show a custom title and a subtitle.
Widget detailedText({@required String title, @required String value}) {
  return Padding(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.w500),
            overflow: TextOverflow.clip,
          ),
          Text(
            value,
            style: TextStyle(fontSize: 16, color: Colors.black54),
            overflow: TextOverflow.clip,
          )
        ],
      ));
}

/// Widget that creates a divider with no margin.
Widget dividerWith0MArgin() {
  return Padding(padding: EdgeInsets.all(0), child: Divider());
}

/// Widget that creates a header for the detailed view.
Widget detailedHeader(
    {@required String serialNumber,
    @required String status,
    @required String lastSync}) {
  return Container(
    height: AppBar().preferredSize.height * 3,
    color: Colors.blue,
    child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Serial number of the device.
          textLine(
            key: Key(SERIAL_NUMBER_OF_DEVICE_KEY),
            text: serialNumber,
            style: TextStyle(fontSize: 28.0, color: Colors.white),
            padding: EdgeInsets.only(bottom: 2.0),
          ),
          // Status of the device
          textLine(
            key: Key(STATUS_OF_DEVICE_KEY),
            text: status,
            style: TextStyle(fontSize: 20.0, color: Colors.white54),
            padding: EdgeInsets.only(bottom: 2.0),
          ),
          // Last synchronied date of the device
          textLine(
            key: Key(LAST_SYNC_OF_DEVICE_KEY),
            text: lastSync,
            style: TextStyle(fontSize: 20.0, color: Colors.white54),
            padding: EdgeInsets.only(bottom: 2.0),
          ),
        ],
      ),
    ),
  );
}

/// Widget that creates a bottom button.
Widget bottomCardButton({@required String title, @required Function onTap}) {
  return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
    InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            title,
            style: TextStyle(color: Colors.blue[500], fontSize: 16),
          ),
        )),
  ]);
}

/// Widget that creates a custom vertical divider.
Widget verticalDivider(double height) {
  return Container(
      height: height,
      width: 0,
      margin: EdgeInsets.all(0),
      child: VerticalDivider(
        thickness: 1,
      ));
}

/// Widget that creates a custom title.
Widget detailCategory({@required String text, @required double width}) {
  return Container(
    margin: EdgeInsets.only(left: 10, right: 0),
    width: width,
    child: Text(
      text,
      style: TextStyle(
          color: Colors.black, fontSize: 28, fontWeight: FontWeight.w500),
      overflow: TextOverflow.clip,
    ),
  );
}
