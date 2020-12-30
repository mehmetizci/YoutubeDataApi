import 'contents.dart';

class YoutubeData {
  String estimatedResults;
  Contents contents;

  YoutubeData({
    this.estimatedResults,
    this.contents,
  });

  YoutubeData.fromJson(Map<String, dynamic> json) {
    estimatedResults = json['estimatedResults'];
    contents = json['contents'] != null
        ? new Contents.fromJson(json['contents'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['estimatedResults'] = this.estimatedResults;
    if (this.contents != null) {
      data['contents'] = this.contents.toJson();
    }

    return data;
  }
}
