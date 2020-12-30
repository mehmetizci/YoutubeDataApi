import 'two_column_search_results_renderer.dart';

class Contents {
  TwoColumnSearchResultsRenderer twoColumnSearchResultsRenderer;

  Contents({this.twoColumnSearchResultsRenderer});

  Contents.fromJson(Map<String, dynamic> json) {
    twoColumnSearchResultsRenderer =
        json['twoColumnSearchResultsRenderer'] != null
            ? new TwoColumnSearchResultsRenderer.fromJson(
                json['twoColumnSearchResultsRenderer'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.twoColumnSearchResultsRenderer != null) {
      data['twoColumnSearchResultsRenderer'] =
          this.twoColumnSearchResultsRenderer.toJson();
    }
    return data;
  }
}
