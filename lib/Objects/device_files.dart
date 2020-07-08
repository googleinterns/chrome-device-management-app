class DeviceFiles {
  String name;
  String type;
  String downloadUrl;
  String createTime;

  DeviceFiles({this.name, this.type, this.downloadUrl, this.createTime});

  DeviceFiles.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    type = json['type'];
    downloadUrl = json['downloadUrl'];
    createTime = json['createTime'];
  }
}
