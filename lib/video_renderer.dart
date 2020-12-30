import 'thumbnail.dart';
import 'description_snippet.dart';
import 'published_time_text.dart';
import 'length_text.dart';
import 'navigation_endpoint.dart';

class VideoRenderer {
  String videoId;
  Thumbnail thumbnail;
  DescriptionSnippet title;
  DescriptionSnippet descriptionSnippet;
  DescriptionSnippet longBylineText;
  PublishedTimeText publishedTimeText;
  LengthText lengthText;
  PublishedTimeText viewCountText;
  NavigationEndpoint navigationEndpoint;
  DescriptionSnippet ownerText;
  DescriptionSnippet shortBylineText;
  String trackingParams;
  bool showActionMenu;
  PublishedTimeText shortViewCountText;

  VideoRenderer({
    this.videoId,
    this.thumbnail,
    this.title,
    this.descriptionSnippet,
    this.longBylineText,
    this.publishedTimeText,
    this.lengthText,
    this.viewCountText,
    this.navigationEndpoint,
    this.ownerText,
    this.shortBylineText,
    this.trackingParams,
    this.showActionMenu,
    this.shortViewCountText,
  });

  VideoRenderer.fromJson(Map<String, dynamic> json) {
    videoId = json['videoId'];
    thumbnail = json['thumbnail'] != null
        ? new Thumbnail.fromJson(json['thumbnail'])
        : null;
    title = json['title'] != null
        ? new DescriptionSnippet.fromJson(json['title'])
        : null;
    descriptionSnippet = json['descriptionSnippet'] != null
        ? new DescriptionSnippet.fromJson(json['descriptionSnippet'])
        : null;
    longBylineText = json['longBylineText'] != null
        ? new DescriptionSnippet.fromJson(json['longBylineText'])
        : null;
    publishedTimeText = json['publishedTimeText'] != null
        ? new PublishedTimeText.fromJson(json['publishedTimeText'])
        : null;
    lengthText = json['lengthText'] != null
        ? new LengthText.fromJson(json['lengthText'])
        : null;
    viewCountText = json['viewCountText'] != null
        ? new PublishedTimeText.fromJson(json['viewCountText'])
        : null;
    navigationEndpoint = json['navigationEndpoint'] != null
        ? new NavigationEndpoint.fromJson(json['navigationEndpoint'])
        : null;
    ownerText = json['ownerText'] != null
        ? new DescriptionSnippet.fromJson(json['ownerText'])
        : null;
    shortBylineText = json['shortBylineText'] != null
        ? new DescriptionSnippet.fromJson(json['shortBylineText'])
        : null;
    trackingParams = json['trackingParams'];
    showActionMenu = json['showActionMenu'];
    shortViewCountText = json['shortViewCountText'] != null
        ? new PublishedTimeText.fromJson(json['shortViewCountText'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['videoId'] = this.videoId;
    if (this.thumbnail != null) {
      data['thumbnail'] = this.thumbnail.toJson();
    }
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    if (this.descriptionSnippet != null) {
      data['descriptionSnippet'] = this.descriptionSnippet.toJson();
    }
    if (this.longBylineText != null) {
      data['longBylineText'] = this.longBylineText.toJson();
    }
    if (this.publishedTimeText != null) {
      data['publishedTimeText'] = this.publishedTimeText.toJson();
    }
    if (this.lengthText != null) {
      data['lengthText'] = this.lengthText.toJson();
    }
    if (this.viewCountText != null) {
      data['viewCountText'] = this.viewCountText.toJson();
    }
    if (this.navigationEndpoint != null) {
      data['navigationEndpoint'] = this.navigationEndpoint.toJson();
    }
    if (this.ownerText != null) {
      data['ownerText'] = this.ownerText.toJson();
    }
    if (this.shortBylineText != null) {
      data['shortBylineText'] = this.shortBylineText.toJson();
    }
    data['trackingParams'] = this.trackingParams;
    data['showActionMenu'] = this.showActionMenu;
    if (this.shortViewCountText != null) {
      data['shortViewCountText'] = this.shortViewCountText.toJson();
    }

    return data;
  }
}
