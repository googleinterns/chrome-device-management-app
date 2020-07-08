class VolumeInfo {
  String volumeId;
  String storageTotal;
  String storageFree;

  VolumeInfo({this.volumeId, this.storageTotal, this.storageFree});

  VolumeInfo.fromJson(Map<String, dynamic> json) {
    volumeId = json['volumeId'];
    storageTotal = json['storageTotal'];
    storageFree = json['storageFree'];
  }
}
