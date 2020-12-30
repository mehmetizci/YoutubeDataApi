import 'params.dart';

class ServiceTrackingParams {
  String service;
  List<Params> params;

  ServiceTrackingParams({this.service, this.params});

  ServiceTrackingParams.fromJson(Map<String, dynamic> json) {
    service = json['service'];
    if (json['params'] != null) {
      params = new List<Params>();
      json['params'].forEach((v) {
        params.add(new Params.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['service'] = this.service;
    if (this.params != null) {
      data['params'] = this.params.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
