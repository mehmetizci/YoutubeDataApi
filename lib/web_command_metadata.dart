class WebCommandMetadata {
  String url;
  String webPageType;
  int rootVe;

  WebCommandMetadata({this.url, this.webPageType, this.rootVe});

  WebCommandMetadata.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    webPageType = json['webPageType'];
    rootVe = json['rootVe'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['webPageType'] = this.webPageType;
    data['rootVe'] = this.rootVe;
    return data;
  }
}
