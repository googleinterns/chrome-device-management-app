import 'volume_info.dart';

class DiskVolumeReport {
  List<VolumeInfo> volumeInfo;

  DiskVolumeReport({this.volumeInfo});

  DiskVolumeReport.fromJson(Map<String, dynamic> json) {
    if (json['volumeInfo'] != null) {
      volumeInfo = new List<VolumeInfo>();
      json['volumeInfo'].forEach((v) {
        volumeInfo.add(new VolumeInfo.fromJson(v));
      });
    }
  }
}
