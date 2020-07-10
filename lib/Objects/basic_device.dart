/// Copyright 2020 Google LLC
///
/// Licensed under the Apache License, Version 2.0 (the "License");
/// you may not use this file except in compliance with the License.
/// You may obtain a copy of the License at
///
///     https://www.apache.org/licenses/LICENSE-2.0
///
/// Unless required by applicable law or agreed to in writing, software
/// distributed under the License is distributed on an "AS IS" BASIS,
/// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
/// See the License for the specific language governing permissions and
/// limitations under the License.

class BasicDevice {
  String kind;
  String etag;
  String deviceId;
  String serialNumber;
  String status;
  String lastSync;
  String supportEndDate;
  String annotatedUser;
  String annotatedLocation;
  String annotatedAssetId;
  String notes;

  BasicDevice(
      this.kind,
      this.etag,
      this.deviceId,
      this.serialNumber,
      this.status,
      this.lastSync,
      this.supportEndDate,
      this.annotatedUser,
      this.annotatedLocation,
      this.annotatedAssetId,
      this.notes);

  BasicDevice.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    etag = json['etag'];
    deviceId = json['deviceId'];
    serialNumber = json['serialNumber'];
    status = json['status'];
    lastSync = json['lastSync'];
    supportEndDate = json['supportEndDate'];
    annotatedUser = json['annotatedUser'];
    annotatedLocation = json['annotatedLocation'];
    annotatedAssetId = json['annotatedAssetId'];
    notes = json['notes'];
  }
}
