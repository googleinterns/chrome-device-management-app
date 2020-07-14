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

/// The object holds he Trusted Plataform Modules information.
///
/// See document https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource.

class TpmVersionInfo {
  String _family;
  String _specLevel;
  String _manufacturer;
  String _tpmModel;
  String _firmwareVersion;
  String _vendorSpecific;

  /// Constructor with optional variables.
  TpmVersionInfo(
      [this._family,
      this._specLevel,
      this._manufacturer,
      this._tpmModel,
      this._firmwareVersion,
      this._vendorSpecific]);

  /// Constructor from a json string.
  TpmVersionInfo.fromJson(Map<String, dynamic> json) {
    _family = json['family'];
    _specLevel = json['specLevel'];
    _manufacturer = json['manufacturer'];
    _tpmModel = json['tpmModel'];
    _firmwareVersion = json['firmwareVersion'];
    _vendorSpecific = json['vendorSpecific'];
  }

  /// TPM family.
  String get family => _family;

  /// TPM specification level.
  String get specLevel => _specLevel;

  ///TPM manufacturer code.
  String get manufacturer => _manufacturer;

  /// TPM model number.
  String get tpmModel => _tpmModel;

  /// TPM firmware version.
  String get firmwareVersion => _firmwareVersion;

  /// Vendor ID.
  String get vendorSpecific => _vendorSpecific;
}
