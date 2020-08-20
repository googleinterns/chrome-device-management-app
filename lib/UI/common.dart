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
class TextLine extends Padding {
  TextLine(
      {@required Key key,
      @required String text,
      @required TextStyle style,
      @required EdgeInsetsGeometry padding})
      : super(
            padding: padding,
            child: Text(text,
                maxLines: 2,
                key: key,
                overflow: TextOverflow.ellipsis,
                style: style));
  // Status of the device

}

/// Widget used to show a custom title and a subtitle.
class DetailedText extends Padding {
  DetailedText(
      {@required String title, @required String value, @required Key key})
      : super(
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
                  key: key,
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                  overflow: TextOverflow.clip,
                )
              ],
            ));
}

/// Widget that creates a divider with no margin.
class DividerWith0MArgin extends Padding {
  DividerWith0MArgin() : super(padding: EdgeInsets.all(0), child: Divider());
}

/// Widget that creates a header for the detailed view.
class DetailedHeader extends Container {
  DetailedHeader(
      {@required String serialNumber,
      @required String status,
      @required String lastSync})
      : super(
          height: AppBar().preferredSize.height * 3,
          color: Colors.blue,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Serial number of the device.
                TextLine(
                  key: Key(SERIAL_NUMBER_OF_DEVICE_KEY),
                  text: serialNumber,
                  style: TextStyle(fontSize: 28.0, color: Colors.white),
                  padding: EdgeInsets.only(bottom: 2.0),
                ),
                // Status of the device
                TextLine(
                  key: Key(STATUS_OF_DEVICE_KEY),
                  text: status,
                  style: TextStyle(fontSize: 20.0, color: Colors.white54),
                  padding: EdgeInsets.only(bottom: 2.0),
                ),
                // Last synchronied date of the device
                TextLine(
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
class BottomCardButton extends Row {
  BottomCardButton(
      {@required String title, @required Function onTap, @required Key key})
      : super(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ButtonBar(
              children: [
                FlatButton(
                  onPressed: onTap,
                  child: Text(title),
                  key: key,
                )
              ],
            ),
          ],
        );
}

/// Widget that creates a custom vertical divider.
class CustomVerticalDivider extends Container {
  CustomVerticalDivider({double height})
      : super(
            height: height,
            width: 0,
            margin: EdgeInsets.all(0),
            child: VerticalDivider(
              thickness: 1,
            ));
}

/// Widget that creates a custom title.
class DetailCategory extends Container {
  DetailCategory({@required String text, @required double width})
      : super(
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

///Widget that creates a filter chip.
class CustomFilterChip extends InputChip {
  CustomFilterChip(
      {@required String text,
      @required Function delete,
      @required Function change})
      : super(
            label: Text(text,
                style: TextStyle(
                  color: Colors.white,
                )),
            backgroundColor: Colors.grey,
            deleteIcon: Icon(
              Icons.cancel,
              key: Key(FILTERS_CANCEL),
            ),
            onDeleted: delete,
            onPressed: change,
            elevation: 2.0);
}
