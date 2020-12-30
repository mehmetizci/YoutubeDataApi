class LengthText {
  String simpleText;

  LengthText({this.simpleText});

  LengthText.fromJson(Map<String, dynamic> json) {
    simpleText = json['simpleText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['simpleText'] = this.simpleText;
    return data;
  }
}
