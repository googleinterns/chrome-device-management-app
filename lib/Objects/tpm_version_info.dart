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

class TpmVersionInfo {
  String family;
  String specLevel;
  String manufacturer;
  String tpmModel;
  String firmwareVersion;
  String vendorSpecific;

  TpmVersionInfo(
      {this.family,
      this.specLevel,
      this.manufacturer,
      this.tpmModel,
      this.firmwareVersion,
      this.vendorSpecific});

  TpmVersionInfo.fromJson(Map<String, dynamic> json) {
    family = json['family'];
    specLevel = json['specLevel'];
    manufacturer = json['manufacturer'];
    tpmModel = json['tpmModel'];
    firmwareVersion = json['firmwareVersion'];
    vendorSpecific = json['vendorSpecific'];
  }
}
