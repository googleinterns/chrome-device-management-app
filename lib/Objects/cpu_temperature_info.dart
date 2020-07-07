class CpuTemperatureInfo {
  String temperature;
  String label;

  CpuTemperatureInfo({this.temperature, this.label});

  CpuTemperatureInfo.fromJson(Map<String, dynamic> json) {
    temperature = json['temperature'];
    label = json['label'];
  }
}
