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
