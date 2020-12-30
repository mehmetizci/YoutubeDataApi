import 'thumbnails.dart';

class Thumbnail {
  List<Thumbnails> thumbnails;

  Thumbnail({this.thumbnails});

  Thumbnail.fromJson(Map<String, dynamic> json) {
    if (json['thumbnails'] != null) {
      thumbnails = new List<Thumbnails>();
      json['thumbnails'].forEach((v) {
        thumbnails.add(new Thumbnails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.thumbnails != null) {
      data['thumbnails'] = this.thumbnails.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
