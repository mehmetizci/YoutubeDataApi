import 'section_list_renderer.dart';

class PrimaryContents {
  SectionListRenderer sectionListRenderer;

  PrimaryContents({this.sectionListRenderer});

  PrimaryContents.fromJson(Map<String, dynamic> json) {
    sectionListRenderer = json['sectionListRenderer'] != null
        ? new SectionListRenderer.fromJson(json['sectionListRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sectionListRenderer != null) {
      data['sectionListRenderer'] = this.sectionListRenderer.toJson();
    }
    return data;
  }
}
