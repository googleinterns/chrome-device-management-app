class SystemRamFreeReport {
  String reportTime;
  List<String> systemRamFreeInfo;

  SystemRamFreeReport({this.reportTime, this.systemRamFreeInfo});

  SystemRamFreeReport.fromJson(Map<String, dynamic> json) {
    reportTime = json['reportTime'];
    systemRamFreeInfo = json['systemRamFreeInfo'].cast<String>();
  }
}
