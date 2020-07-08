class LastKnownNetwork {
  String ipAddress;
  String wanIpAddress;

  LastKnownNetwork({this.ipAddress, this.wanIpAddress});

  LastKnownNetwork.fromJson(Map<String, dynamic> json) {
    ipAddress = json['ipAddress'];
    wanIpAddress = json['wanIpAddress'];
  }
}
