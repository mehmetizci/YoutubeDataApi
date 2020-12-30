import 'description_snippets_runs.dart';

class DescriptionSnippet {
  List<Runs> runs;

  DescriptionSnippet({this.runs});

  DescriptionSnippet.fromJson(Map<String, dynamic> json) {
    if (json['runs'] != null) {
      runs = new List<Runs>();
      json['runs'].forEach((v) {
        runs.add(new Runs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.runs != null) {
      data['runs'] = this.runs.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
