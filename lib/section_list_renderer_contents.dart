import 'item_section_renderer.dart';
import 'continuation_item_renderer.dart';

class Contents {
  ItemSectionRenderer itemSectionRenderer;
  ContinuationItemRenderer continuationItemRenderer;

  Contents({this.itemSectionRenderer, this.continuationItemRenderer});

  Contents.fromJson(Map<String, dynamic> json) {
    itemSectionRenderer = json['itemSectionRenderer'] != null
        ? new ItemSectionRenderer.fromJson(json['itemSectionRenderer'])
        : null;
    continuationItemRenderer = json['continuationItemRenderer'] != null
        ? new ContinuationItemRenderer.fromJson(
            json['continuationItemRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.itemSectionRenderer != null) {
      data['itemSectionRenderer'] = this.itemSectionRenderer.toJson();
    }
    if (this.continuationItemRenderer != null) {
      data['continuationItemRenderer'] = this.continuationItemRenderer.toJson();
    }
    return data;
  }
}
