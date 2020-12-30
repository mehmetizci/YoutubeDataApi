import 'primary_contents.dart';

class TwoColumnSearchResultsRenderer {
  PrimaryContents primaryContents;

  TwoColumnSearchResultsRenderer({this.primaryContents});

  TwoColumnSearchResultsRenderer.fromJson(Map<String, dynamic> json) {
    primaryContents = json['primaryContents'] != null
        ? new PrimaryContents.fromJson(json['primaryContents'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.primaryContents != null) {
      data['primaryContents'] = this.primaryContents.toJson();
    }
    return data;
  }
}
