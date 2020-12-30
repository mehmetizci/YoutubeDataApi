import 'section_list_renderer_contents.dart';

class SectionListRenderer {
  List<Contents> contents;

  SectionListRenderer({
    this.contents,
  });

  SectionListRenderer.fromJson(Map<String, dynamic> json) {
    if (json['contents'] != null) {
      contents = new List<Contents>();
      json['contents'].forEach((v) {
        contents.add(new Contents.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.contents != null) {
      data['contents'] = this.contents.map((v) => v.toJson()).toList();
    }

    return data;
  }
}
