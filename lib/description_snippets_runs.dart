import 'navigation_endpoint.dart';

class Runs {
  String text;
  NavigationEndpoint navigationEndpoint;

  Runs({this.text, this.navigationEndpoint});

  Runs.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    navigationEndpoint = json['navigationEndpoint'] != null
        ? new NavigationEndpoint.fromJson(json['navigationEndpoint'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    if (this.navigationEndpoint != null) {
      data['navigationEndpoint'] = this.navigationEndpoint.toJson();
    }
    return data;
  }
}
