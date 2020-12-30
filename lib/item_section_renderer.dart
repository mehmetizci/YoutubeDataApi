import 'item_section_renderer_contents.dart';

class ItemSectionRenderer {
  List<Contents> contents;
  String trackingParams;

  ItemSectionRenderer({this.contents, this.trackingParams});

  ItemSectionRenderer.fromJson(Map<String, dynamic> json) {
    if (json['contents'] != null) {
      contents = new List<Contents>();
      json['contents'].forEach((v) {
        contents.add(new Contents.fromJson(v));
      });
    }
    trackingParams = json['trackingParams'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.contents != null) {
      data['contents'] = this.contents.map((v) => v.toJson()).toList();
    }
    data['trackingParams'] = this.trackingParams;
    return data;
  }
}
