class ActiveTimeRanges {
  String date;
  String activeTime;

  ActiveTimeRanges({this.date, this.activeTime});

  ActiveTimeRanges.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    activeTime = json['activeTime'];
  }
}
