class Runs {
  String text;
  bool bold;

  Runs({this.text, this.bold});

  Runs.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    bold = json['bold'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['bold'] = this.bold;
    return data;
  }
}
