import 'basic_device.dart';

class AccountDevices {
  String etag;
  String kind;
  String nextPage;
  List<BasicDevice> chromeosdevices;

  AccountDevices({this.etag, this.kind, this.chromeosdevices, this.nextPage});

  AccountDevices.fromJson(Map<String, dynamic> json) {
    etag = json['etag'];
    kind = json['kind'];
    if (json['chromeosdevices'] != null) {
      chromeosdevices = new List<BasicDevice>();
      json['chromeosdevices'].forEach((value) {
        chromeosdevices.add(new BasicDevice.fromJson(value));
      });
    }
    nextPage = json['nextPageToken'];
  }
}
