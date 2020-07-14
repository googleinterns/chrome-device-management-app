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

/// The object holds the device response object.
///
/// Include all metadata excepts the model, meid,orderNumber, willAutoRenew,
/// osVersion,platformVersion, firmwareVersion, macAddress, and bootMode
/// properties.
/// See the document from
/// https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices/get
///
class BasicDevice {
  String _kind;
  String _etag;
  String _deviceId;
  String _serialNumber;
  String _status;
  String _lastSync;
  String _supportEndDate;
  String _annotatedUser;
  String _annotatedLocation;
  String _annotatedAssetId;
  String _notes;

  /// Constructor with optional variables.
  BasicDevice(
      [this._kind,
      this._etag,
      this._deviceId,
      this._serialNumber,
      this._status,
      this._lastSync,
      this._supportEndDate,
      this._annotatedUser,
      this._annotatedLocation,
      this._annotatedAssetId,
      this._notes]);

  /// Constructor form a json string.
  BasicDevice.fromJson(Map<String, dynamic> json) {
    _kind = json['kind'];
    _etag = json['etag'];
    _deviceId = json['deviceId'];
    _serialNumber = json['serialNumber'];
    _status = json['status'];
    _lastSync = json['lastSync'];
    _supportEndDate = json['supportEndDate'];
    _annotatedUser = json['annotatedUser'];
    _annotatedLocation = json['annotatedLocation'];
    _annotatedAssetId = json['annotatedAssetId'];
    _notes = json['notes'];
  }

  /// Type of resource.
  String get kind => _kind;

  /// ETag of the resource.
  String get etag => _etag;

  /// The unique ID of the Chrome device.
  String get deviceId => _deviceId;

  /// The Chrome device serial number entered when the device was enabled.
  String get serialNumber => _serialNumber;

  /// The status of the device.
  String get status => _status;

  /// The date and time the device was last synchronized with the policy
  /// settings in the Admin console.
  String get lastSync => _lastSync;

  /// The final date the device will be supported.
  String get supportEndDate => _supportEndDate;

  /// The user of the device as noted by the administrator.
  String get annotatedUser => _annotatedUser;

  /// The address or location of the device as noted by the administrator.
  String get annotatedLocation => _annotatedLocation;

  /// The asset identifier as noted by an administrator or specified
  /// during enrollment.
  String get annotatedAssetId => _annotatedAssetId;

  /// Notes about this device added by the administrator.
  String get notes => _notes;
}
