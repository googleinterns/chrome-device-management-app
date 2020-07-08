class RecentUsers {
  String type;
  String email;

  RecentUsers({this.type, this.email});

  RecentUsers.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    email = json['email'];
  }
}
