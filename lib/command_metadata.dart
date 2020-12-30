import 'web_command_metadata.dart';

class CommandMetadata {
  WebCommandMetadata webCommandMetadata;

  CommandMetadata({this.webCommandMetadata});

  CommandMetadata.fromJson(Map<String, dynamic> json) {
    webCommandMetadata = json['webCommandMetadata'] != null
        ? new WebCommandMetadata.fromJson(json['webCommandMetadata'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.webCommandMetadata != null) {
      data['webCommandMetadata'] = this.webCommandMetadata.toJson();
    }
    return data;
  }
}
