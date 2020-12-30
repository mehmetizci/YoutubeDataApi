class PublishedTimeText {
  String simpleText;

  PublishedTimeText({this.simpleText});

  PublishedTimeText.fromJson(Map<String, dynamic> json) {
    simpleText = json['simpleText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['simpleText'] = this.simpleText;
    return data;
  }
}
