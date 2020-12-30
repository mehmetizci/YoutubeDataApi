import 'continuation_endpoint.dart';

class ContinuationItemRenderer {
  String trigger;
  ContinuationEndpoint continuationEndpoint;

  ContinuationItemRenderer({this.trigger, this.continuationEndpoint});

  ContinuationItemRenderer.fromJson(Map<String, dynamic> json) {
    trigger = json['trigger'];
    continuationEndpoint = json['continuationEndpoint'] != null
        ? new ContinuationEndpoint.fromJson(json['continuationEndpoint'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['trigger'] = this.trigger;
    if (this.continuationEndpoint != null) {
      data['continuationEndpoint'] = this.continuationEndpoint.toJson();
    }
    return data;
  }
}
