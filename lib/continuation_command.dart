class ContinuationCommand {
  String token;
  String request;

  ContinuationCommand({this.token, this.request});

  ContinuationCommand.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    request = json['request'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['request'] = this.request;
    return data;
  }
}
