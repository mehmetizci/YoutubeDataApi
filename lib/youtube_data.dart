import 'contents.dart';

class YoutubeData {
  String estimatedResults;
  Contents contents;
  List<OnResponseReceivedCommands> onResponseReceivedCommands;

  YoutubeData({
    this.estimatedResults,
    this.contents,
    this.onResponseReceivedCommands,
  });

  YoutubeData.fromJson(Map<String, dynamic> json) {
    estimatedResults = json['estimatedResults'];
    contents = json['contents'] != null
        ? new Contents.fromJson(json['contents'])
        : null;
    if (json['onResponseReceivedCommands'] != null) {
      onResponseReceivedCommands = new List<OnResponseReceivedCommands>();
      json['onResponseReceivedCommands'].forEach((v) {
        onResponseReceivedCommands
            .add(new OnResponseReceivedCommands.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['estimatedResults'] = this.estimatedResults;
    if (this.contents != null) {
      data['contents'] = this.contents.toJson();
    }
    if (this.onResponseReceivedCommands != null) {
      data['onResponseReceivedCommands'] =
          this.onResponseReceivedCommands.map((v) => v.toJson()).toList();
    }

    return data;
  }
}
