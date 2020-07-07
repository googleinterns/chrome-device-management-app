import 'cpu_temperature_info.dart';

class CpuStatusReport {
  String reportTime;
  List<String> cpuUtilizationPercentageInfo;
  List<CpuTemperatureInfo> cpuTemperatureInfo;

  CpuStatusReport(
      {this.reportTime,
      this.cpuUtilizationPercentageInfo,
      this.cpuTemperatureInfo});

  CpuStatusReport.fromJson(Map<String, dynamic> json) {
    reportTime = json['reportTime'];
    cpuUtilizationPercentageInfo =
        json['cpuUtilizationPercentageInfo'].cast<String>();
    if (json['cpuTemperatureInfo'] != null) {
      cpuTemperatureInfo = new List<CpuTemperatureInfo>();
      json['cpuTemperatureInfo'].forEach((v) {
        cpuTemperatureInfo.add(new CpuTemperatureInfo.fromJson(v));
      });
    }
  }
}
