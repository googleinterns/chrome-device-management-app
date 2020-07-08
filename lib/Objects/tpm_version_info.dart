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
