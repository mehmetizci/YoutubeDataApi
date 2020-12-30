import 'video_renderer.dart';

class Contents {
  VideoRenderer videoRenderer;

  Contents({this.videoRenderer});

  Contents.fromJson(Map<String, dynamic> json) {
    videoRenderer = json['videoRenderer'] != null
        ? new VideoRenderer.fromJson(json['videoRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.videoRenderer != null) {
      data['videoRenderer'] = this.videoRenderer.toJson();
    }
    return data;
  }
}
