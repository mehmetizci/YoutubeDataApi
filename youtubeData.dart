class YoutubeData {
  ResponseContext responseContext;
  String estimatedResults;
  Contents contents;
  String trackingParams;
  Topbar topbar;
  AdSafetyReason adSafetyReason;

  YoutubeData(
      {this.responseContext,
      this.estimatedResults,
      this.contents,
      this.trackingParams,
      this.topbar,
      this.adSafetyReason});

  YoutubeData.fromJson(Map<String, dynamic> json) {
    responseContext = json['responseContext'] != null
        ? new ResponseContext.fromJson(json['responseContext'])
        : null;
    estimatedResults = json['estimatedResults'];
    contents = json['contents'] != null
        ? new Contents.fromJson(json['contents'])
        : null;
    trackingParams = json['trackingParams'];
    topbar =
        json['topbar'] != null ? new Topbar.fromJson(json['topbar']) : null;
    adSafetyReason = json['adSafetyReason'] != null
        ? new AdSafetyReason.fromJson(json['adSafetyReason'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.responseContext != null) {
      data['responseContext'] = this.responseContext.toJson();
    }
    data['estimatedResults'] = this.estimatedResults;
    if (this.contents != null) {
      data['contents'] = this.contents.toJson();
    }
    data['trackingParams'] = this.trackingParams;
    if (this.topbar != null) {
      data['topbar'] = this.topbar.toJson();
    }
    if (this.adSafetyReason != null) {
      data['adSafetyReason'] = this.adSafetyReason.toJson();
    }
    return data;
  }
}

class ResponseContext {
  List<ServiceTrackingParams> serviceTrackingParams;
  WebResponseContextExtensionData webResponseContextExtensionData;

  ResponseContext(
      {this.serviceTrackingParams, this.webResponseContextExtensionData});

  ResponseContext.fromJson(Map<String, dynamic> json) {
    if (json['serviceTrackingParams'] != null) {
      serviceTrackingParams = new List<ServiceTrackingParams>();
      json['serviceTrackingParams'].forEach((v) {
        serviceTrackingParams.add(new ServiceTrackingParams.fromJson(v));
      });
    }
    webResponseContextExtensionData =
        json['webResponseContextExtensionData'] != null
            ? new WebResponseContextExtensionData.fromJson(
                json['webResponseContextExtensionData'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.serviceTrackingParams != null) {
      data['serviceTrackingParams'] =
          this.serviceTrackingParams.map((v) => v.toJson()).toList();
    }
    if (this.webResponseContextExtensionData != null) {
      data['webResponseContextExtensionData'] =
          this.webResponseContextExtensionData.toJson();
    }
    return data;
  }
}

class ServiceTrackingParams {
  String service;
  List<Params> params;

  ServiceTrackingParams({this.service, this.params});

  ServiceTrackingParams.fromJson(Map<String, dynamic> json) {
    service = json['service'];
    if (json['params'] != null) {
      params = new List<Params>();
      json['params'].forEach((v) {
        params.add(new Params.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['service'] = this.service;
    if (this.params != null) {
      data['params'] = this.params.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Params {
  String key;
  String value;

  Params({this.key, this.value});

  Params.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['value'] = this.value;
    return data;
  }
}

class WebResponseContextExtensionData {
  YtConfigData ytConfigData;
  bool hasDecorated;

  WebResponseContextExtensionData({this.ytConfigData, this.hasDecorated});

  WebResponseContextExtensionData.fromJson(Map<String, dynamic> json) {
    ytConfigData = json['ytConfigData'] != null
        ? new YtConfigData.fromJson(json['ytConfigData'])
        : null;
    hasDecorated = json['hasDecorated'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ytConfigData != null) {
      data['ytConfigData'] = this.ytConfigData.toJson();
    }
    data['hasDecorated'] = this.hasDecorated;
    return data;
  }
}

class YtConfigData {
  String visitorData;
  int sessionIndex;
  int rootVisualElementType;

  YtConfigData(
      {this.visitorData, this.sessionIndex, this.rootVisualElementType});

  YtConfigData.fromJson(Map<String, dynamic> json) {
    visitorData = json['visitorData'];
    sessionIndex = json['sessionIndex'];
    rootVisualElementType = json['rootVisualElementType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['visitorData'] = this.visitorData;
    data['sessionIndex'] = this.sessionIndex;
    data['rootVisualElementType'] = this.rootVisualElementType;
    return data;
  }
}

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

class PrimaryContents {
  SectionListRenderer sectionListRenderer;

  PrimaryContents({this.sectionListRenderer});

  PrimaryContents.fromJson(Map<String, dynamic> json) {
    sectionListRenderer = json['sectionListRenderer'] != null
        ? new SectionListRenderer.fromJson(json['sectionListRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sectionListRenderer != null) {
      data['sectionListRenderer'] = this.sectionListRenderer.toJson();
    }
    return data;
  }
}

class SectionListRenderer {
  List<Contents> contents;
  String trackingParams;
  SubMenu subMenu;
  bool hideBottomSeparator;
  String targetId;

  SectionListRenderer(
      {this.contents,
      this.trackingParams,
      this.subMenu,
      this.hideBottomSeparator,
      this.targetId});

  SectionListRenderer.fromJson(Map<String, dynamic> json) {
    if (json['contents'] != null) {
      contents = new List<Contents>();
      json['contents'].forEach((v) {
        contents.add(new Contents.fromJson(v));
      });
    }
    trackingParams = json['trackingParams'];
    subMenu =
        json['subMenu'] != null ? new SubMenu.fromJson(json['subMenu']) : null;
    hideBottomSeparator = json['hideBottomSeparator'];
    targetId = json['targetId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.contents != null) {
      data['contents'] = this.contents.map((v) => v.toJson()).toList();
    }
    data['trackingParams'] = this.trackingParams;
    if (this.subMenu != null) {
      data['subMenu'] = this.subMenu.toJson();
    }
    data['hideBottomSeparator'] = this.hideBottomSeparator;
    data['targetId'] = this.targetId;
    return data;
  }
}

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

class ItemSectionRenderer {
  List<Contents> contents;
  String trackingParams;

  ItemSectionRenderer({this.contents, this.trackingParams});

  ItemSectionRenderer.fromJson(Map<String, dynamic> json) {
    if (json['contents'] != null) {
      contents = new List<Contents>();
      json['contents'].forEach((v) {
        contents.add(new Contents.fromJson(v));
      });
    }
    trackingParams = json['trackingParams'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.contents != null) {
      data['contents'] = this.contents.map((v) => v.toJson()).toList();
    }
    data['trackingParams'] = this.trackingParams;
    return data;
  }
}

class Contents {
  VideoRenderer videoRenderer;

  Contents({this.videoRenderer});

  Contents.fromJson(Map<String, dynamic> json) {
    videoRenderer = json['videoRenderer'] != null
        ? new VideoRenderer.fromJson(json['videoRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.videoRenderer != null) {
      data['videoRenderer'] = this.videoRenderer.toJson();
    }
    return data;
  }
}

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
  Menu menu;
  ChannelThumbnailSupportedRenderers channelThumbnailSupportedRenderers;
  List<ThumbnailOverlays> thumbnailOverlays;
  RichThumbnail richThumbnail;
  List<Badges> badges;

  VideoRenderer(
      {this.videoId,
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
      this.menu,
      this.channelThumbnailSupportedRenderers,
      this.thumbnailOverlays,
      this.richThumbnail,
      this.badges});

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
    menu = json['menu'] != null ? new Menu.fromJson(json['menu']) : null;
    channelThumbnailSupportedRenderers =
        json['channelThumbnailSupportedRenderers'] != null
            ? new ChannelThumbnailSupportedRenderers.fromJson(
                json['channelThumbnailSupportedRenderers'])
            : null;
    if (json['thumbnailOverlays'] != null) {
      thumbnailOverlays = new List<ThumbnailOverlays>();
      json['thumbnailOverlays'].forEach((v) {
        thumbnailOverlays.add(new ThumbnailOverlays.fromJson(v));
      });
    }
    richThumbnail = json['richThumbnail'] != null
        ? new RichThumbnail.fromJson(json['richThumbnail'])
        : null;
    if (json['badges'] != null) {
      badges = new List<Badges>();
      json['badges'].forEach((v) {
        badges.add(new Badges.fromJson(v));
      });
    }
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
    if (this.menu != null) {
      data['menu'] = this.menu.toJson();
    }
    if (this.channelThumbnailSupportedRenderers != null) {
      data['channelThumbnailSupportedRenderers'] =
          this.channelThumbnailSupportedRenderers.toJson();
    }
    if (this.thumbnailOverlays != null) {
      data['thumbnailOverlays'] =
          this.thumbnailOverlays.map((v) => v.toJson()).toList();
    }
    if (this.richThumbnail != null) {
      data['richThumbnail'] = this.richThumbnail.toJson();
    }
    if (this.badges != null) {
      data['badges'] = this.badges.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

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

class Thumbnails {
  String url;
  int width;
  int height;

  Thumbnails({this.url, this.width, this.height});

  Thumbnails.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['width'] = this.width;
    data['height'] = this.height;
    return data;
  }
}

class Title {
  List<Runs> runs;
  Accessibility accessibility;

  Title({this.runs, this.accessibility});

  Title.fromJson(Map<String, dynamic> json) {
    if (json['runs'] != null) {
      runs = new List<Runs>();
      json['runs'].forEach((v) {
        runs.add(new Runs.fromJson(v));
      });
    }
    accessibility = json['accessibility'] != null
        ? new Accessibility.fromJson(json['accessibility'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.runs != null) {
      data['runs'] = this.runs.map((v) => v.toJson()).toList();
    }
    if (this.accessibility != null) {
      data['accessibility'] = this.accessibility.toJson();
    }
    return data;
  }
}

class Runs {
  String text;

  Runs({this.text});

  Runs.fromJson(Map<String, dynamic> json) {
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    return data;
  }
}

class Accessibility {
  AccessibilityData accessibilityData;

  Accessibility({this.accessibilityData});

  Accessibility.fromJson(Map<String, dynamic> json) {
    accessibilityData = json['accessibilityData'] != null
        ? new AccessibilityData.fromJson(json['accessibilityData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.accessibilityData != null) {
      data['accessibilityData'] = this.accessibilityData.toJson();
    }
    return data;
  }
}

class AccessibilityData {
  String label;

  AccessibilityData({this.label});

  AccessibilityData.fromJson(Map<String, dynamic> json) {
    label = json['label'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    return data;
  }
}

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

class Runs {
  String text;
  NavigationEndpoint navigationEndpoint;

  Runs({this.text, this.navigationEndpoint});

  Runs.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    navigationEndpoint = json['navigationEndpoint'] != null
        ? new NavigationEndpoint.fromJson(json['navigationEndpoint'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    if (this.navigationEndpoint != null) {
      data['navigationEndpoint'] = this.navigationEndpoint.toJson();
    }
    return data;
  }
}

class NavigationEndpoint {
  String clickTrackingParams;
  CommandMetadata commandMetadata;
  BrowseEndpoint browseEndpoint;

  NavigationEndpoint(
      {this.clickTrackingParams, this.commandMetadata, this.browseEndpoint});

  NavigationEndpoint.fromJson(Map<String, dynamic> json) {
    clickTrackingParams = json['clickTrackingParams'];
    commandMetadata = json['commandMetadata'] != null
        ? new CommandMetadata.fromJson(json['commandMetadata'])
        : null;
    browseEndpoint = json['browseEndpoint'] != null
        ? new BrowseEndpoint.fromJson(json['browseEndpoint'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['clickTrackingParams'] = this.clickTrackingParams;
    if (this.commandMetadata != null) {
      data['commandMetadata'] = this.commandMetadata.toJson();
    }
    if (this.browseEndpoint != null) {
      data['browseEndpoint'] = this.browseEndpoint.toJson();
    }
    return data;
  }
}

class CommandMetadata {
  WebCommandMetadata webCommandMetadata;

  CommandMetadata({this.webCommandMetadata});

  CommandMetadata.fromJson(Map<String, dynamic> json) {
    webCommandMetadata = json['webCommandMetadata'] != null
        ? new WebCommandMetadata.fromJson(json['webCommandMetadata'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.webCommandMetadata != null) {
      data['webCommandMetadata'] = this.webCommandMetadata.toJson();
    }
    return data;
  }
}

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

class BrowseEndpoint {
  String browseId;

  BrowseEndpoint({this.browseId});

  BrowseEndpoint.fromJson(Map<String, dynamic> json) {
    browseId = json['browseId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['browseId'] = this.browseId;
    return data;
  }
}

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

class LengthText {
  Accessibility accessibility;
  String simpleText;

  LengthText({this.accessibility, this.simpleText});

  LengthText.fromJson(Map<String, dynamic> json) {
    accessibility = json['accessibility'] != null
        ? new Accessibility.fromJson(json['accessibility'])
        : null;
    simpleText = json['simpleText'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.accessibility != null) {
      data['accessibility'] = this.accessibility.toJson();
    }
    data['simpleText'] = this.simpleText;
    return data;
  }
}

class NavigationEndpoint {
  String clickTrackingParams;
  CommandMetadata commandMetadata;
  WatchEndpoint watchEndpoint;

  NavigationEndpoint(
      {this.clickTrackingParams, this.commandMetadata, this.watchEndpoint});

  NavigationEndpoint.fromJson(Map<String, dynamic> json) {
    clickTrackingParams = json['clickTrackingParams'];
    commandMetadata = json['commandMetadata'] != null
        ? new CommandMetadata.fromJson(json['commandMetadata'])
        : null;
    watchEndpoint = json['watchEndpoint'] != null
        ? new WatchEndpoint.fromJson(json['watchEndpoint'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['clickTrackingParams'] = this.clickTrackingParams;
    if (this.commandMetadata != null) {
      data['commandMetadata'] = this.commandMetadata.toJson();
    }
    if (this.watchEndpoint != null) {
      data['watchEndpoint'] = this.watchEndpoint.toJson();
    }
    return data;
  }
}

class WatchEndpoint {
  String videoId;
  String params;

  WatchEndpoint({this.videoId, this.params});

  WatchEndpoint.fromJson(Map<String, dynamic> json) {
    videoId = json['videoId'];
    params = json['params'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['videoId'] = this.videoId;
    data['params'] = this.params;
    return data;
  }
}

class Menu {
  MenuRenderer menuRenderer;

  Menu({this.menuRenderer});

  Menu.fromJson(Map<String, dynamic> json) {
    menuRenderer = json['menuRenderer'] != null
        ? new MenuRenderer.fromJson(json['menuRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.menuRenderer != null) {
      data['menuRenderer'] = this.menuRenderer.toJson();
    }
    return data;
  }
}

class MenuRenderer {
  List<Items> items;
  String trackingParams;
  Accessibility accessibility;

  MenuRenderer({this.items, this.trackingParams, this.accessibility});

  MenuRenderer.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = new List<Items>();
      json['items'].forEach((v) {
        items.add(new Items.fromJson(v));
      });
    }
    trackingParams = json['trackingParams'];
    accessibility = json['accessibility'] != null
        ? new Accessibility.fromJson(json['accessibility'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    data['trackingParams'] = this.trackingParams;
    if (this.accessibility != null) {
      data['accessibility'] = this.accessibility.toJson();
    }
    return data;
  }
}

class Items {
  MenuServiceItemRenderer menuServiceItemRenderer;

  Items({this.menuServiceItemRenderer});

  Items.fromJson(Map<String, dynamic> json) {
    menuServiceItemRenderer = json['menuServiceItemRenderer'] != null
        ? new MenuServiceItemRenderer.fromJson(json['menuServiceItemRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.menuServiceItemRenderer != null) {
      data['menuServiceItemRenderer'] = this.menuServiceItemRenderer.toJson();
    }
    return data;
  }
}

class MenuServiceItemRenderer {
  DescriptionSnippet text;
  Icon icon;
  ServiceEndpoint serviceEndpoint;
  String trackingParams;
  bool hasSeparator;

  MenuServiceItemRenderer(
      {this.text,
      this.icon,
      this.serviceEndpoint,
      this.trackingParams,
      this.hasSeparator});

  MenuServiceItemRenderer.fromJson(Map<String, dynamic> json) {
    text = json['text'] != null
        ? new DescriptionSnippet.fromJson(json['text'])
        : null;
    icon = json['icon'] != null ? new Icon.fromJson(json['icon']) : null;
    serviceEndpoint = json['serviceEndpoint'] != null
        ? new ServiceEndpoint.fromJson(json['serviceEndpoint'])
        : null;
    trackingParams = json['trackingParams'];
    hasSeparator = json['hasSeparator'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.text != null) {
      data['text'] = this.text.toJson();
    }
    if (this.icon != null) {
      data['icon'] = this.icon.toJson();
    }
    if (this.serviceEndpoint != null) {
      data['serviceEndpoint'] = this.serviceEndpoint.toJson();
    }
    data['trackingParams'] = this.trackingParams;
    data['hasSeparator'] = this.hasSeparator;
    return data;
  }
}

class Icon {
  String iconType;

  Icon({this.iconType});

  Icon.fromJson(Map<String, dynamic> json) {
    iconType = json['iconType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['iconType'] = this.iconType;
    return data;
  }
}

class ServiceEndpoint {
  String clickTrackingParams;
  CommandMetadata commandMetadata;
  SignalServiceEndpoint signalServiceEndpoint;
  PlaylistEditEndpoint playlistEditEndpoint;
  AddToPlaylistServiceEndpoint addToPlaylistServiceEndpoint;
  GetReportFormEndpoint getReportFormEndpoint;

  ServiceEndpoint(
      {this.clickTrackingParams,
      this.commandMetadata,
      this.signalServiceEndpoint,
      this.playlistEditEndpoint,
      this.addToPlaylistServiceEndpoint,
      this.getReportFormEndpoint});

  ServiceEndpoint.fromJson(Map<String, dynamic> json) {
    clickTrackingParams = json['clickTrackingParams'];
    commandMetadata = json['commandMetadata'] != null
        ? new CommandMetadata.fromJson(json['commandMetadata'])
        : null;
    signalServiceEndpoint = json['signalServiceEndpoint'] != null
        ? new SignalServiceEndpoint.fromJson(json['signalServiceEndpoint'])
        : null;
    playlistEditEndpoint = json['playlistEditEndpoint'] != null
        ? new PlaylistEditEndpoint.fromJson(json['playlistEditEndpoint'])
        : null;
    addToPlaylistServiceEndpoint = json['addToPlaylistServiceEndpoint'] != null
        ? new AddToPlaylistServiceEndpoint.fromJson(
            json['addToPlaylistServiceEndpoint'])
        : null;
    getReportFormEndpoint = json['getReportFormEndpoint'] != null
        ? new GetReportFormEndpoint.fromJson(json['getReportFormEndpoint'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['clickTrackingParams'] = this.clickTrackingParams;
    if (this.commandMetadata != null) {
      data['commandMetadata'] = this.commandMetadata.toJson();
    }
    if (this.signalServiceEndpoint != null) {
      data['signalServiceEndpoint'] = this.signalServiceEndpoint.toJson();
    }
    if (this.playlistEditEndpoint != null) {
      data['playlistEditEndpoint'] = this.playlistEditEndpoint.toJson();
    }
    if (this.addToPlaylistServiceEndpoint != null) {
      data['addToPlaylistServiceEndpoint'] =
          this.addToPlaylistServiceEndpoint.toJson();
    }
    if (this.getReportFormEndpoint != null) {
      data['getReportFormEndpoint'] = this.getReportFormEndpoint.toJson();
    }
    return data;
  }
}

class WebCommandMetadata {
  bool sendPost;
  String apiUrl;

  WebCommandMetadata({this.sendPost, this.apiUrl});

  WebCommandMetadata.fromJson(Map<String, dynamic> json) {
    sendPost = json['sendPost'];
    apiUrl = json['apiUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sendPost'] = this.sendPost;
    data['apiUrl'] = this.apiUrl;
    return data;
  }
}

class SignalServiceEndpoint {
  String signal;
  List<Actions> actions;

  SignalServiceEndpoint({this.signal, this.actions});

  SignalServiceEndpoint.fromJson(Map<String, dynamic> json) {
    signal = json['signal'];
    if (json['actions'] != null) {
      actions = new List<Actions>();
      json['actions'].forEach((v) {
        actions.add(new Actions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['signal'] = this.signal;
    if (this.actions != null) {
      data['actions'] = this.actions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Actions {
  String clickTrackingParams;
  AddToPlaylistCommand addToPlaylistCommand;

  Actions({this.clickTrackingParams, this.addToPlaylistCommand});

  Actions.fromJson(Map<String, dynamic> json) {
    clickTrackingParams = json['clickTrackingParams'];
    addToPlaylistCommand = json['addToPlaylistCommand'] != null
        ? new AddToPlaylistCommand.fromJson(json['addToPlaylistCommand'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['clickTrackingParams'] = this.clickTrackingParams;
    if (this.addToPlaylistCommand != null) {
      data['addToPlaylistCommand'] = this.addToPlaylistCommand.toJson();
    }
    return data;
  }
}

class AddToPlaylistCommand {
  bool openMiniplayer;
  String videoId;
  String listType;
  OnCreateListCommand onCreateListCommand;
  List<String> videoIds;

  AddToPlaylistCommand(
      {this.openMiniplayer,
      this.videoId,
      this.listType,
      this.onCreateListCommand,
      this.videoIds});

  AddToPlaylistCommand.fromJson(Map<String, dynamic> json) {
    openMiniplayer = json['openMiniplayer'];
    videoId = json['videoId'];
    listType = json['listType'];
    onCreateListCommand = json['onCreateListCommand'] != null
        ? new OnCreateListCommand.fromJson(json['onCreateListCommand'])
        : null;
    videoIds = json['videoIds'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['openMiniplayer'] = this.openMiniplayer;
    data['videoId'] = this.videoId;
    data['listType'] = this.listType;
    if (this.onCreateListCommand != null) {
      data['onCreateListCommand'] = this.onCreateListCommand.toJson();
    }
    data['videoIds'] = this.videoIds;
    return data;
  }
}

class OnCreateListCommand {
  String clickTrackingParams;
  CommandMetadata commandMetadata;
  CreatePlaylistServiceEndpoint createPlaylistServiceEndpoint;

  OnCreateListCommand(
      {this.clickTrackingParams,
      this.commandMetadata,
      this.createPlaylistServiceEndpoint});

  OnCreateListCommand.fromJson(Map<String, dynamic> json) {
    clickTrackingParams = json['clickTrackingParams'];
    commandMetadata = json['commandMetadata'] != null
        ? new CommandMetadata.fromJson(json['commandMetadata'])
        : null;
    createPlaylistServiceEndpoint =
        json['createPlaylistServiceEndpoint'] != null
            ? new CreatePlaylistServiceEndpoint.fromJson(
                json['createPlaylistServiceEndpoint'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['clickTrackingParams'] = this.clickTrackingParams;
    if (this.commandMetadata != null) {
      data['commandMetadata'] = this.commandMetadata.toJson();
    }
    if (this.createPlaylistServiceEndpoint != null) {
      data['createPlaylistServiceEndpoint'] =
          this.createPlaylistServiceEndpoint.toJson();
    }
    return data;
  }
}

class CreatePlaylistServiceEndpoint {
  List<String> videoIds;
  String params;

  CreatePlaylistServiceEndpoint({this.videoIds, this.params});

  CreatePlaylistServiceEndpoint.fromJson(Map<String, dynamic> json) {
    videoIds = json['videoIds'].cast<String>();
    params = json['params'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['videoIds'] = this.videoIds;
    data['params'] = this.params;
    return data;
  }
}

class PlaylistEditEndpoint {
  String playlistId;
  List<Actions> actions;

  PlaylistEditEndpoint({this.playlistId, this.actions});

  PlaylistEditEndpoint.fromJson(Map<String, dynamic> json) {
    playlistId = json['playlistId'];
    if (json['actions'] != null) {
      actions = new List<Actions>();
      json['actions'].forEach((v) {
        actions.add(new Actions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['playlistId'] = this.playlistId;
    if (this.actions != null) {
      data['actions'] = this.actions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Actions {
  String addedVideoId;
  String action;

  Actions({this.addedVideoId, this.action});

  Actions.fromJson(Map<String, dynamic> json) {
    addedVideoId = json['addedVideoId'];
    action = json['action'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['addedVideoId'] = this.addedVideoId;
    data['action'] = this.action;
    return data;
  }
}

class AddToPlaylistServiceEndpoint {
  String videoId;

  AddToPlaylistServiceEndpoint({this.videoId});

  AddToPlaylistServiceEndpoint.fromJson(Map<String, dynamic> json) {
    videoId = json['videoId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['videoId'] = this.videoId;
    return data;
  }
}

class GetReportFormEndpoint {
  String params;

  GetReportFormEndpoint({this.params});

  GetReportFormEndpoint.fromJson(Map<String, dynamic> json) {
    params = json['params'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['params'] = this.params;
    return data;
  }
}

class ChannelThumbnailSupportedRenderers {
  ChannelThumbnailWithLinkRenderer channelThumbnailWithLinkRenderer;

  ChannelThumbnailSupportedRenderers({this.channelThumbnailWithLinkRenderer});

  ChannelThumbnailSupportedRenderers.fromJson(Map<String, dynamic> json) {
    channelThumbnailWithLinkRenderer =
        json['channelThumbnailWithLinkRenderer'] != null
            ? new ChannelThumbnailWithLinkRenderer.fromJson(
                json['channelThumbnailWithLinkRenderer'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.channelThumbnailWithLinkRenderer != null) {
      data['channelThumbnailWithLinkRenderer'] =
          this.channelThumbnailWithLinkRenderer.toJson();
    }
    return data;
  }
}

class ChannelThumbnailWithLinkRenderer {
  Thumbnail thumbnail;
  NavigationEndpoint navigationEndpoint;
  Accessibility accessibility;

  ChannelThumbnailWithLinkRenderer(
      {this.thumbnail, this.navigationEndpoint, this.accessibility});

  ChannelThumbnailWithLinkRenderer.fromJson(Map<String, dynamic> json) {
    thumbnail = json['thumbnail'] != null
        ? new Thumbnail.fromJson(json['thumbnail'])
        : null;
    navigationEndpoint = json['navigationEndpoint'] != null
        ? new NavigationEndpoint.fromJson(json['navigationEndpoint'])
        : null;
    accessibility = json['accessibility'] != null
        ? new Accessibility.fromJson(json['accessibility'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.thumbnail != null) {
      data['thumbnail'] = this.thumbnail.toJson();
    }
    if (this.navigationEndpoint != null) {
      data['navigationEndpoint'] = this.navigationEndpoint.toJson();
    }
    if (this.accessibility != null) {
      data['accessibility'] = this.accessibility.toJson();
    }
    return data;
  }
}

class ThumbnailOverlays {
  ThumbnailOverlayTimeStatusRenderer thumbnailOverlayTimeStatusRenderer;
  ThumbnailOverlayToggleButtonRenderer thumbnailOverlayToggleButtonRenderer;
  ThumbnailOverlayNowPlayingRenderer thumbnailOverlayNowPlayingRenderer;

  ThumbnailOverlays(
      {this.thumbnailOverlayTimeStatusRenderer,
      this.thumbnailOverlayToggleButtonRenderer,
      this.thumbnailOverlayNowPlayingRenderer});

  ThumbnailOverlays.fromJson(Map<String, dynamic> json) {
    thumbnailOverlayTimeStatusRenderer =
        json['thumbnailOverlayTimeStatusRenderer'] != null
            ? new ThumbnailOverlayTimeStatusRenderer.fromJson(
                json['thumbnailOverlayTimeStatusRenderer'])
            : null;
    thumbnailOverlayToggleButtonRenderer =
        json['thumbnailOverlayToggleButtonRenderer'] != null
            ? new ThumbnailOverlayToggleButtonRenderer.fromJson(
                json['thumbnailOverlayToggleButtonRenderer'])
            : null;
    thumbnailOverlayNowPlayingRenderer =
        json['thumbnailOverlayNowPlayingRenderer'] != null
            ? new ThumbnailOverlayNowPlayingRenderer.fromJson(
                json['thumbnailOverlayNowPlayingRenderer'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.thumbnailOverlayTimeStatusRenderer != null) {
      data['thumbnailOverlayTimeStatusRenderer'] =
          this.thumbnailOverlayTimeStatusRenderer.toJson();
    }
    if (this.thumbnailOverlayToggleButtonRenderer != null) {
      data['thumbnailOverlayToggleButtonRenderer'] =
          this.thumbnailOverlayToggleButtonRenderer.toJson();
    }
    if (this.thumbnailOverlayNowPlayingRenderer != null) {
      data['thumbnailOverlayNowPlayingRenderer'] =
          this.thumbnailOverlayNowPlayingRenderer.toJson();
    }
    return data;
  }
}

class ThumbnailOverlayTimeStatusRenderer {
  DescriptionSnippet text;
  String style;

  ThumbnailOverlayTimeStatusRenderer({this.text, this.style});

  ThumbnailOverlayTimeStatusRenderer.fromJson(Map<String, dynamic> json) {
    text = json['text'] != null
        ? new DescriptionSnippet.fromJson(json['text'])
        : null;
    style = json['style'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.text != null) {
      data['text'] = this.text.toJson();
    }
    data['style'] = this.style;
    return data;
  }
}

class ThumbnailOverlayToggleButtonRenderer {
  bool isToggled;
  Icon untoggledIcon;
  Icon toggledIcon;
  String untoggledTooltip;
  String toggledTooltip;
  UntoggledServiceEndpoint untoggledServiceEndpoint;
  ToggledServiceEndpoint toggledServiceEndpoint;
  Accessibility untoggledAccessibility;
  Accessibility toggledAccessibility;
  String trackingParams;

  ThumbnailOverlayToggleButtonRenderer(
      {this.isToggled,
      this.untoggledIcon,
      this.toggledIcon,
      this.untoggledTooltip,
      this.toggledTooltip,
      this.untoggledServiceEndpoint,
      this.toggledServiceEndpoint,
      this.untoggledAccessibility,
      this.toggledAccessibility,
      this.trackingParams});

  ThumbnailOverlayToggleButtonRenderer.fromJson(Map<String, dynamic> json) {
    isToggled = json['isToggled'];
    untoggledIcon = json['untoggledIcon'] != null
        ? new Icon.fromJson(json['untoggledIcon'])
        : null;
    toggledIcon = json['toggledIcon'] != null
        ? new Icon.fromJson(json['toggledIcon'])
        : null;
    untoggledTooltip = json['untoggledTooltip'];
    toggledTooltip = json['toggledTooltip'];
    untoggledServiceEndpoint = json['untoggledServiceEndpoint'] != null
        ? new UntoggledServiceEndpoint.fromJson(
            json['untoggledServiceEndpoint'])
        : null;
    toggledServiceEndpoint = json['toggledServiceEndpoint'] != null
        ? new ToggledServiceEndpoint.fromJson(json['toggledServiceEndpoint'])
        : null;
    untoggledAccessibility = json['untoggledAccessibility'] != null
        ? new Accessibility.fromJson(json['untoggledAccessibility'])
        : null;
    toggledAccessibility = json['toggledAccessibility'] != null
        ? new Accessibility.fromJson(json['toggledAccessibility'])
        : null;
    trackingParams = json['trackingParams'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isToggled'] = this.isToggled;
    if (this.untoggledIcon != null) {
      data['untoggledIcon'] = this.untoggledIcon.toJson();
    }
    if (this.toggledIcon != null) {
      data['toggledIcon'] = this.toggledIcon.toJson();
    }
    data['untoggledTooltip'] = this.untoggledTooltip;
    data['toggledTooltip'] = this.toggledTooltip;
    if (this.untoggledServiceEndpoint != null) {
      data['untoggledServiceEndpoint'] = this.untoggledServiceEndpoint.toJson();
    }
    if (this.toggledServiceEndpoint != null) {
      data['toggledServiceEndpoint'] = this.toggledServiceEndpoint.toJson();
    }
    if (this.untoggledAccessibility != null) {
      data['untoggledAccessibility'] = this.untoggledAccessibility.toJson();
    }
    if (this.toggledAccessibility != null) {
      data['toggledAccessibility'] = this.toggledAccessibility.toJson();
    }
    data['trackingParams'] = this.trackingParams;
    return data;
  }
}

class UntoggledServiceEndpoint {
  String clickTrackingParams;
  CommandMetadata commandMetadata;
  PlaylistEditEndpoint playlistEditEndpoint;
  SignalServiceEndpoint signalServiceEndpoint;

  UntoggledServiceEndpoint(
      {this.clickTrackingParams,
      this.commandMetadata,
      this.playlistEditEndpoint,
      this.signalServiceEndpoint});

  UntoggledServiceEndpoint.fromJson(Map<String, dynamic> json) {
    clickTrackingParams = json['clickTrackingParams'];
    commandMetadata = json['commandMetadata'] != null
        ? new CommandMetadata.fromJson(json['commandMetadata'])
        : null;
    playlistEditEndpoint = json['playlistEditEndpoint'] != null
        ? new PlaylistEditEndpoint.fromJson(json['playlistEditEndpoint'])
        : null;
    signalServiceEndpoint = json['signalServiceEndpoint'] != null
        ? new SignalServiceEndpoint.fromJson(json['signalServiceEndpoint'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['clickTrackingParams'] = this.clickTrackingParams;
    if (this.commandMetadata != null) {
      data['commandMetadata'] = this.commandMetadata.toJson();
    }
    if (this.playlistEditEndpoint != null) {
      data['playlistEditEndpoint'] = this.playlistEditEndpoint.toJson();
    }
    if (this.signalServiceEndpoint != null) {
      data['signalServiceEndpoint'] = this.signalServiceEndpoint.toJson();
    }
    return data;
  }
}

class ToggledServiceEndpoint {
  String clickTrackingParams;
  CommandMetadata commandMetadata;
  PlaylistEditEndpoint playlistEditEndpoint;

  ToggledServiceEndpoint(
      {this.clickTrackingParams,
      this.commandMetadata,
      this.playlistEditEndpoint});

  ToggledServiceEndpoint.fromJson(Map<String, dynamic> json) {
    clickTrackingParams = json['clickTrackingParams'];
    commandMetadata = json['commandMetadata'] != null
        ? new CommandMetadata.fromJson(json['commandMetadata'])
        : null;
    playlistEditEndpoint = json['playlistEditEndpoint'] != null
        ? new PlaylistEditEndpoint.fromJson(json['playlistEditEndpoint'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['clickTrackingParams'] = this.clickTrackingParams;
    if (this.commandMetadata != null) {
      data['commandMetadata'] = this.commandMetadata.toJson();
    }
    if (this.playlistEditEndpoint != null) {
      data['playlistEditEndpoint'] = this.playlistEditEndpoint.toJson();
    }
    return data;
  }
}

class Actions {
  String action;
  String removedVideoId;

  Actions({this.action, this.removedVideoId});

  Actions.fromJson(Map<String, dynamic> json) {
    action = json['action'];
    removedVideoId = json['removedVideoId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['action'] = this.action;
    data['removedVideoId'] = this.removedVideoId;
    return data;
  }
}

class ThumbnailOverlayNowPlayingRenderer {
  DescriptionSnippet text;

  ThumbnailOverlayNowPlayingRenderer({this.text});

  ThumbnailOverlayNowPlayingRenderer.fromJson(Map<String, dynamic> json) {
    text = json['text'] != null
        ? new DescriptionSnippet.fromJson(json['text'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.text != null) {
      data['text'] = this.text.toJson();
    }
    return data;
  }
}

class RichThumbnail {
  MovingThumbnailRenderer movingThumbnailRenderer;

  RichThumbnail({this.movingThumbnailRenderer});

  RichThumbnail.fromJson(Map<String, dynamic> json) {
    movingThumbnailRenderer = json['movingThumbnailRenderer'] != null
        ? new MovingThumbnailRenderer.fromJson(json['movingThumbnailRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.movingThumbnailRenderer != null) {
      data['movingThumbnailRenderer'] = this.movingThumbnailRenderer.toJson();
    }
    return data;
  }
}

class MovingThumbnailRenderer {
  MovingThumbnailDetails movingThumbnailDetails;
  bool enableHoveredLogging;
  bool enableOverlay;

  MovingThumbnailRenderer(
      {this.movingThumbnailDetails,
      this.enableHoveredLogging,
      this.enableOverlay});

  MovingThumbnailRenderer.fromJson(Map<String, dynamic> json) {
    movingThumbnailDetails = json['movingThumbnailDetails'] != null
        ? new MovingThumbnailDetails.fromJson(json['movingThumbnailDetails'])
        : null;
    enableHoveredLogging = json['enableHoveredLogging'];
    enableOverlay = json['enableOverlay'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.movingThumbnailDetails != null) {
      data['movingThumbnailDetails'] = this.movingThumbnailDetails.toJson();
    }
    data['enableHoveredLogging'] = this.enableHoveredLogging;
    data['enableOverlay'] = this.enableOverlay;
    return data;
  }
}

class MovingThumbnailDetails {
  List<Thumbnails> thumbnails;
  bool logAsMovingThumbnail;

  MovingThumbnailDetails({this.thumbnails, this.logAsMovingThumbnail});

  MovingThumbnailDetails.fromJson(Map<String, dynamic> json) {
    if (json['thumbnails'] != null) {
      thumbnails = new List<Thumbnails>();
      json['thumbnails'].forEach((v) {
        thumbnails.add(new Thumbnails.fromJson(v));
      });
    }
    logAsMovingThumbnail = json['logAsMovingThumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.thumbnails != null) {
      data['thumbnails'] = this.thumbnails.map((v) => v.toJson()).toList();
    }
    data['logAsMovingThumbnail'] = this.logAsMovingThumbnail;
    return data;
  }
}

class Badges {
  MetadataBadgeRenderer metadataBadgeRenderer;

  Badges({this.metadataBadgeRenderer});

  Badges.fromJson(Map<String, dynamic> json) {
    metadataBadgeRenderer = json['metadataBadgeRenderer'] != null
        ? new MetadataBadgeRenderer.fromJson(json['metadataBadgeRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.metadataBadgeRenderer != null) {
      data['metadataBadgeRenderer'] = this.metadataBadgeRenderer.toJson();
    }
    return data;
  }
}

class MetadataBadgeRenderer {
  String style;
  String label;
  String trackingParams;
  AccessibilityData accessibilityData;

  MetadataBadgeRenderer(
      {this.style, this.label, this.trackingParams, this.accessibilityData});

  MetadataBadgeRenderer.fromJson(Map<String, dynamic> json) {
    style = json['style'];
    label = json['label'];
    trackingParams = json['trackingParams'];
    accessibilityData = json['accessibilityData'] != null
        ? new AccessibilityData.fromJson(json['accessibilityData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['style'] = this.style;
    data['label'] = this.label;
    data['trackingParams'] = this.trackingParams;
    if (this.accessibilityData != null) {
      data['accessibilityData'] = this.accessibilityData.toJson();
    }
    return data;
  }
}

class ContinuationItemRenderer {
  String trigger;
  ContinuationEndpoint continuationEndpoint;

  ContinuationItemRenderer({this.trigger, this.continuationEndpoint});

  ContinuationItemRenderer.fromJson(Map<String, dynamic> json) {
    trigger = json['trigger'];
    continuationEndpoint = json['continuationEndpoint'] != null
        ? new ContinuationEndpoint.fromJson(json['continuationEndpoint'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['trigger'] = this.trigger;
    if (this.continuationEndpoint != null) {
      data['continuationEndpoint'] = this.continuationEndpoint.toJson();
    }
    return data;
  }
}

class ContinuationEndpoint {
  String clickTrackingParams;
  CommandMetadata commandMetadata;
  ContinuationCommand continuationCommand;

  ContinuationEndpoint(
      {this.clickTrackingParams,
      this.commandMetadata,
      this.continuationCommand});

  ContinuationEndpoint.fromJson(Map<String, dynamic> json) {
    clickTrackingParams = json['clickTrackingParams'];
    commandMetadata = json['commandMetadata'] != null
        ? new CommandMetadata.fromJson(json['commandMetadata'])
        : null;
    continuationCommand = json['continuationCommand'] != null
        ? new ContinuationCommand.fromJson(json['continuationCommand'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['clickTrackingParams'] = this.clickTrackingParams;
    if (this.commandMetadata != null) {
      data['commandMetadata'] = this.commandMetadata.toJson();
    }
    if (this.continuationCommand != null) {
      data['continuationCommand'] = this.continuationCommand.toJson();
    }
    return data;
  }
}

class ContinuationCommand {
  String token;
  String request;

  ContinuationCommand({this.token, this.request});

  ContinuationCommand.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    request = json['request'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['request'] = this.request;
    return data;
  }
}

class SubMenu {
  SearchSubMenuRenderer searchSubMenuRenderer;

  SubMenu({this.searchSubMenuRenderer});

  SubMenu.fromJson(Map<String, dynamic> json) {
    searchSubMenuRenderer = json['searchSubMenuRenderer'] != null
        ? new SearchSubMenuRenderer.fromJson(json['searchSubMenuRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.searchSubMenuRenderer != null) {
      data['searchSubMenuRenderer'] = this.searchSubMenuRenderer.toJson();
    }
    return data;
  }
}

class SearchSubMenuRenderer {
  DescriptionSnippet title;
  List<Groups> groups;
  DescriptionSnippet clearAllText;
  NavigationEndpoint clearAllEndpoint;
  String trackingParams;
  Button button;

  SearchSubMenuRenderer(
      {this.title,
      this.groups,
      this.clearAllText,
      this.clearAllEndpoint,
      this.trackingParams,
      this.button});

  SearchSubMenuRenderer.fromJson(Map<String, dynamic> json) {
    title = json['title'] != null
        ? new DescriptionSnippet.fromJson(json['title'])
        : null;
    if (json['groups'] != null) {
      groups = new List<Groups>();
      json['groups'].forEach((v) {
        groups.add(new Groups.fromJson(v));
      });
    }
    clearAllText = json['clearAllText'] != null
        ? new DescriptionSnippet.fromJson(json['clearAllText'])
        : null;
    clearAllEndpoint = json['clearAllEndpoint'] != null
        ? new NavigationEndpoint.fromJson(json['clearAllEndpoint'])
        : null;
    trackingParams = json['trackingParams'];
    button =
        json['button'] != null ? new Button.fromJson(json['button']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    if (this.groups != null) {
      data['groups'] = this.groups.map((v) => v.toJson()).toList();
    }
    if (this.clearAllText != null) {
      data['clearAllText'] = this.clearAllText.toJson();
    }
    if (this.clearAllEndpoint != null) {
      data['clearAllEndpoint'] = this.clearAllEndpoint.toJson();
    }
    data['trackingParams'] = this.trackingParams;
    if (this.button != null) {
      data['button'] = this.button.toJson();
    }
    return data;
  }
}

class Groups {
  SearchFilterGroupRenderer searchFilterGroupRenderer;

  Groups({this.searchFilterGroupRenderer});

  Groups.fromJson(Map<String, dynamic> json) {
    searchFilterGroupRenderer = json['searchFilterGroupRenderer'] != null
        ? new SearchFilterGroupRenderer.fromJson(
            json['searchFilterGroupRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.searchFilterGroupRenderer != null) {
      data['searchFilterGroupRenderer'] =
          this.searchFilterGroupRenderer.toJson();
    }
    return data;
  }
}

class SearchFilterGroupRenderer {
  DescriptionSnippet title;
  List<Filters> filters;
  String trackingParams;

  SearchFilterGroupRenderer({this.title, this.filters, this.trackingParams});

  SearchFilterGroupRenderer.fromJson(Map<String, dynamic> json) {
    title = json['title'] != null
        ? new DescriptionSnippet.fromJson(json['title'])
        : null;
    if (json['filters'] != null) {
      filters = new List<Filters>();
      json['filters'].forEach((v) {
        filters.add(new Filters.fromJson(v));
      });
    }
    trackingParams = json['trackingParams'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    if (this.filters != null) {
      data['filters'] = this.filters.map((v) => v.toJson()).toList();
    }
    data['trackingParams'] = this.trackingParams;
    return data;
  }
}

class Filters {
  SearchFilterRenderer searchFilterRenderer;

  Filters({this.searchFilterRenderer});

  Filters.fromJson(Map<String, dynamic> json) {
    searchFilterRenderer = json['searchFilterRenderer'] != null
        ? new SearchFilterRenderer.fromJson(json['searchFilterRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.searchFilterRenderer != null) {
      data['searchFilterRenderer'] = this.searchFilterRenderer.toJson();
    }
    return data;
  }
}

class SearchFilterRenderer {
  DescriptionSnippet label;
  NavigationEndpoint navigationEndpoint;
  String tooltip;
  String trackingParams;
  String status;

  SearchFilterRenderer(
      {this.label,
      this.navigationEndpoint,
      this.tooltip,
      this.trackingParams,
      this.status});

  SearchFilterRenderer.fromJson(Map<String, dynamic> json) {
    label = json['label'] != null
        ? new DescriptionSnippet.fromJson(json['label'])
        : null;
    navigationEndpoint = json['navigationEndpoint'] != null
        ? new NavigationEndpoint.fromJson(json['navigationEndpoint'])
        : null;
    tooltip = json['tooltip'];
    trackingParams = json['trackingParams'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.label != null) {
      data['label'] = this.label.toJson();
    }
    if (this.navigationEndpoint != null) {
      data['navigationEndpoint'] = this.navigationEndpoint.toJson();
    }
    data['tooltip'] = this.tooltip;
    data['trackingParams'] = this.trackingParams;
    data['status'] = this.status;
    return data;
  }
}

class NavigationEndpoint {
  String clickTrackingParams;
  CommandMetadata commandMetadata;
  SearchEndpoint searchEndpoint;

  NavigationEndpoint(
      {this.clickTrackingParams, this.commandMetadata, this.searchEndpoint});

  NavigationEndpoint.fromJson(Map<String, dynamic> json) {
    clickTrackingParams = json['clickTrackingParams'];
    commandMetadata = json['commandMetadata'] != null
        ? new CommandMetadata.fromJson(json['commandMetadata'])
        : null;
    searchEndpoint = json['searchEndpoint'] != null
        ? new SearchEndpoint.fromJson(json['searchEndpoint'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['clickTrackingParams'] = this.clickTrackingParams;
    if (this.commandMetadata != null) {
      data['commandMetadata'] = this.commandMetadata.toJson();
    }
    if (this.searchEndpoint != null) {
      data['searchEndpoint'] = this.searchEndpoint.toJson();
    }
    return data;
  }
}

class SearchEndpoint {
  String query;
  String params;

  SearchEndpoint({this.query, this.params});

  SearchEndpoint.fromJson(Map<String, dynamic> json) {
    query = json['query'];
    params = json['params'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['query'] = this.query;
    data['params'] = this.params;
    return data;
  }
}

class SearchEndpoint {
  String query;

  SearchEndpoint({this.query});

  SearchEndpoint.fromJson(Map<String, dynamic> json) {
    query = json['query'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['query'] = this.query;
    return data;
  }
}

class Button {
  ToggleButtonRenderer toggleButtonRenderer;

  Button({this.toggleButtonRenderer});

  Button.fromJson(Map<String, dynamic> json) {
    toggleButtonRenderer = json['toggleButtonRenderer'] != null
        ? new ToggleButtonRenderer.fromJson(json['toggleButtonRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.toggleButtonRenderer != null) {
      data['toggleButtonRenderer'] = this.toggleButtonRenderer.toJson();
    }
    return data;
  }
}

class ToggleButtonRenderer {
  Style style;
  bool isToggled;
  bool isDisabled;
  Icon defaultIcon;
  DescriptionSnippet defaultText;
  Accessibility accessibility;
  String trackingParams;
  String defaultTooltip;
  String toggledTooltip;
  Style toggledStyle;
  AccessibilityData accessibilityData;

  ToggleButtonRenderer(
      {this.style,
      this.isToggled,
      this.isDisabled,
      this.defaultIcon,
      this.defaultText,
      this.accessibility,
      this.trackingParams,
      this.defaultTooltip,
      this.toggledTooltip,
      this.toggledStyle,
      this.accessibilityData});

  ToggleButtonRenderer.fromJson(Map<String, dynamic> json) {
    style = json['style'] != null ? new Style.fromJson(json['style']) : null;
    isToggled = json['isToggled'];
    isDisabled = json['isDisabled'];
    defaultIcon = json['defaultIcon'] != null
        ? new Icon.fromJson(json['defaultIcon'])
        : null;
    defaultText = json['defaultText'] != null
        ? new DescriptionSnippet.fromJson(json['defaultText'])
        : null;
    accessibility = json['accessibility'] != null
        ? new Accessibility.fromJson(json['accessibility'])
        : null;
    trackingParams = json['trackingParams'];
    defaultTooltip = json['defaultTooltip'];
    toggledTooltip = json['toggledTooltip'];
    toggledStyle = json['toggledStyle'] != null
        ? new Style.fromJson(json['toggledStyle'])
        : null;
    accessibilityData = json['accessibilityData'] != null
        ? new AccessibilityData.fromJson(json['accessibilityData'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.style != null) {
      data['style'] = this.style.toJson();
    }
    data['isToggled'] = this.isToggled;
    data['isDisabled'] = this.isDisabled;
    if (this.defaultIcon != null) {
      data['defaultIcon'] = this.defaultIcon.toJson();
    }
    if (this.defaultText != null) {
      data['defaultText'] = this.defaultText.toJson();
    }
    if (this.accessibility != null) {
      data['accessibility'] = this.accessibility.toJson();
    }
    data['trackingParams'] = this.trackingParams;
    data['defaultTooltip'] = this.defaultTooltip;
    data['toggledTooltip'] = this.toggledTooltip;
    if (this.toggledStyle != null) {
      data['toggledStyle'] = this.toggledStyle.toJson();
    }
    if (this.accessibilityData != null) {
      data['accessibilityData'] = this.accessibilityData.toJson();
    }
    return data;
  }
}

class Style {
  String styleType;

  Style({this.styleType});

  Style.fromJson(Map<String, dynamic> json) {
    styleType = json['styleType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['styleType'] = this.styleType;
    return data;
  }
}

class Topbar {
  DesktopTopbarRenderer desktopTopbarRenderer;

  Topbar({this.desktopTopbarRenderer});

  Topbar.fromJson(Map<String, dynamic> json) {
    desktopTopbarRenderer = json['desktopTopbarRenderer'] != null
        ? new DesktopTopbarRenderer.fromJson(json['desktopTopbarRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.desktopTopbarRenderer != null) {
      data['desktopTopbarRenderer'] = this.desktopTopbarRenderer.toJson();
    }
    return data;
  }
}

class DesktopTopbarRenderer {
  Logo logo;
  Searchbox searchbox;
  String trackingParams;
  String countryCode;
  List<TopbarButtons> topbarButtons;
  HotkeyDialog hotkeyDialog;
  DismissButton backButton;
  DismissButton forwardButton;
  DismissButton a11ySkipNavigationButton;

  DesktopTopbarRenderer(
      {this.logo,
      this.searchbox,
      this.trackingParams,
      this.countryCode,
      this.topbarButtons,
      this.hotkeyDialog,
      this.backButton,
      this.forwardButton,
      this.a11ySkipNavigationButton});

  DesktopTopbarRenderer.fromJson(Map<String, dynamic> json) {
    logo = json['logo'] != null ? new Logo.fromJson(json['logo']) : null;
    searchbox = json['searchbox'] != null
        ? new Searchbox.fromJson(json['searchbox'])
        : null;
    trackingParams = json['trackingParams'];
    countryCode = json['countryCode'];
    if (json['topbarButtons'] != null) {
      topbarButtons = new List<TopbarButtons>();
      json['topbarButtons'].forEach((v) {
        topbarButtons.add(new TopbarButtons.fromJson(v));
      });
    }
    hotkeyDialog = json['hotkeyDialog'] != null
        ? new HotkeyDialog.fromJson(json['hotkeyDialog'])
        : null;
    backButton = json['backButton'] != null
        ? new DismissButton.fromJson(json['backButton'])
        : null;
    forwardButton = json['forwardButton'] != null
        ? new DismissButton.fromJson(json['forwardButton'])
        : null;
    a11ySkipNavigationButton = json['a11ySkipNavigationButton'] != null
        ? new DismissButton.fromJson(json['a11ySkipNavigationButton'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.logo != null) {
      data['logo'] = this.logo.toJson();
    }
    if (this.searchbox != null) {
      data['searchbox'] = this.searchbox.toJson();
    }
    data['trackingParams'] = this.trackingParams;
    data['countryCode'] = this.countryCode;
    if (this.topbarButtons != null) {
      data['topbarButtons'] =
          this.topbarButtons.map((v) => v.toJson()).toList();
    }
    if (this.hotkeyDialog != null) {
      data['hotkeyDialog'] = this.hotkeyDialog.toJson();
    }
    if (this.backButton != null) {
      data['backButton'] = this.backButton.toJson();
    }
    if (this.forwardButton != null) {
      data['forwardButton'] = this.forwardButton.toJson();
    }
    if (this.a11ySkipNavigationButton != null) {
      data['a11ySkipNavigationButton'] = this.a11ySkipNavigationButton.toJson();
    }
    return data;
  }
}

class Logo {
  TopbarLogoRenderer topbarLogoRenderer;

  Logo({this.topbarLogoRenderer});

  Logo.fromJson(Map<String, dynamic> json) {
    topbarLogoRenderer = json['topbarLogoRenderer'] != null
        ? new TopbarLogoRenderer.fromJson(json['topbarLogoRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.topbarLogoRenderer != null) {
      data['topbarLogoRenderer'] = this.topbarLogoRenderer.toJson();
    }
    return data;
  }
}

class TopbarLogoRenderer {
  Icon iconImage;
  DescriptionSnippet tooltipText;
  NavigationEndpoint endpoint;
  String trackingParams;

  TopbarLogoRenderer(
      {this.iconImage, this.tooltipText, this.endpoint, this.trackingParams});

  TopbarLogoRenderer.fromJson(Map<String, dynamic> json) {
    iconImage =
        json['iconImage'] != null ? new Icon.fromJson(json['iconImage']) : null;
    tooltipText = json['tooltipText'] != null
        ? new DescriptionSnippet.fromJson(json['tooltipText'])
        : null;
    endpoint = json['endpoint'] != null
        ? new NavigationEndpoint.fromJson(json['endpoint'])
        : null;
    trackingParams = json['trackingParams'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.iconImage != null) {
      data['iconImage'] = this.iconImage.toJson();
    }
    if (this.tooltipText != null) {
      data['tooltipText'] = this.tooltipText.toJson();
    }
    if (this.endpoint != null) {
      data['endpoint'] = this.endpoint.toJson();
    }
    data['trackingParams'] = this.trackingParams;
    return data;
  }
}

class Searchbox {
  FusionSearchboxRenderer fusionSearchboxRenderer;

  Searchbox({this.fusionSearchboxRenderer});

  Searchbox.fromJson(Map<String, dynamic> json) {
    fusionSearchboxRenderer = json['fusionSearchboxRenderer'] != null
        ? new FusionSearchboxRenderer.fromJson(json['fusionSearchboxRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.fusionSearchboxRenderer != null) {
      data['fusionSearchboxRenderer'] = this.fusionSearchboxRenderer.toJson();
    }
    return data;
  }
}

class FusionSearchboxRenderer {
  Icon icon;
  DescriptionSnippet placeholderText;
  Config config;
  String trackingParams;
  SearchEndpoint searchEndpoint;

  FusionSearchboxRenderer(
      {this.icon,
      this.placeholderText,
      this.config,
      this.trackingParams,
      this.searchEndpoint});

  FusionSearchboxRenderer.fromJson(Map<String, dynamic> json) {
    icon = json['icon'] != null ? new Icon.fromJson(json['icon']) : null;
    placeholderText = json['placeholderText'] != null
        ? new DescriptionSnippet.fromJson(json['placeholderText'])
        : null;
    config =
        json['config'] != null ? new Config.fromJson(json['config']) : null;
    trackingParams = json['trackingParams'];
    searchEndpoint = json['searchEndpoint'] != null
        ? new SearchEndpoint.fromJson(json['searchEndpoint'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.icon != null) {
      data['icon'] = this.icon.toJson();
    }
    if (this.placeholderText != null) {
      data['placeholderText'] = this.placeholderText.toJson();
    }
    if (this.config != null) {
      data['config'] = this.config.toJson();
    }
    data['trackingParams'] = this.trackingParams;
    if (this.searchEndpoint != null) {
      data['searchEndpoint'] = this.searchEndpoint.toJson();
    }
    return data;
  }
}

class Config {
  WebSearchboxConfig webSearchboxConfig;

  Config({this.webSearchboxConfig});

  Config.fromJson(Map<String, dynamic> json) {
    webSearchboxConfig = json['webSearchboxConfig'] != null
        ? new WebSearchboxConfig.fromJson(json['webSearchboxConfig'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.webSearchboxConfig != null) {
      data['webSearchboxConfig'] = this.webSearchboxConfig.toJson();
    }
    return data;
  }
}

class WebSearchboxConfig {
  String requestLanguage;
  String requestDomain;
  bool hasOnscreenKeyboard;
  bool focusSearchbox;

  WebSearchboxConfig(
      {this.requestLanguage,
      this.requestDomain,
      this.hasOnscreenKeyboard,
      this.focusSearchbox});

  WebSearchboxConfig.fromJson(Map<String, dynamic> json) {
    requestLanguage = json['requestLanguage'];
    requestDomain = json['requestDomain'];
    hasOnscreenKeyboard = json['hasOnscreenKeyboard'];
    focusSearchbox = json['focusSearchbox'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['requestLanguage'] = this.requestLanguage;
    data['requestDomain'] = this.requestDomain;
    data['hasOnscreenKeyboard'] = this.hasOnscreenKeyboard;
    data['focusSearchbox'] = this.focusSearchbox;
    return data;
  }
}

class TopbarButtons {
  TopbarMenuButtonRenderer topbarMenuButtonRenderer;
  NotificationTopbarButtonRenderer notificationTopbarButtonRenderer;

  TopbarButtons(
      {this.topbarMenuButtonRenderer, this.notificationTopbarButtonRenderer});

  TopbarButtons.fromJson(Map<String, dynamic> json) {
    topbarMenuButtonRenderer = json['topbarMenuButtonRenderer'] != null
        ? new TopbarMenuButtonRenderer.fromJson(
            json['topbarMenuButtonRenderer'])
        : null;
    notificationTopbarButtonRenderer =
        json['notificationTopbarButtonRenderer'] != null
            ? new NotificationTopbarButtonRenderer.fromJson(
                json['notificationTopbarButtonRenderer'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.topbarMenuButtonRenderer != null) {
      data['topbarMenuButtonRenderer'] = this.topbarMenuButtonRenderer.toJson();
    }
    if (this.notificationTopbarButtonRenderer != null) {
      data['notificationTopbarButtonRenderer'] =
          this.notificationTopbarButtonRenderer.toJson();
    }
    return data;
  }
}

class TopbarMenuButtonRenderer {
  Icon icon;
  MenuRenderer menuRenderer;
  String trackingParams;
  Accessibility accessibility;
  String tooltip;
  String style;
  String targetId;
  Avatar avatar;
  MenuRequest menuRequest;

  TopbarMenuButtonRenderer(
      {this.icon,
      this.menuRenderer,
      this.trackingParams,
      this.accessibility,
      this.tooltip,
      this.style,
      this.targetId,
      this.avatar,
      this.menuRequest});

  TopbarMenuButtonRenderer.fromJson(Map<String, dynamic> json) {
    icon = json['icon'] != null ? new Icon.fromJson(json['icon']) : null;
    menuRenderer = json['menuRenderer'] != null
        ? new MenuRenderer.fromJson(json['menuRenderer'])
        : null;
    trackingParams = json['trackingParams'];
    accessibility = json['accessibility'] != null
        ? new Accessibility.fromJson(json['accessibility'])
        : null;
    tooltip = json['tooltip'];
    style = json['style'];
    targetId = json['targetId'];
    avatar =
        json['avatar'] != null ? new Avatar.fromJson(json['avatar']) : null;
    menuRequest = json['menuRequest'] != null
        ? new MenuRequest.fromJson(json['menuRequest'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.icon != null) {
      data['icon'] = this.icon.toJson();
    }
    if (this.menuRenderer != null) {
      data['menuRenderer'] = this.menuRenderer.toJson();
    }
    data['trackingParams'] = this.trackingParams;
    if (this.accessibility != null) {
      data['accessibility'] = this.accessibility.toJson();
    }
    data['tooltip'] = this.tooltip;
    data['style'] = this.style;
    data['targetId'] = this.targetId;
    if (this.avatar != null) {
      data['avatar'] = this.avatar.toJson();
    }
    if (this.menuRequest != null) {
      data['menuRequest'] = this.menuRequest.toJson();
    }
    return data;
  }
}

class MenuRenderer {
  MultiPageMenuRenderer multiPageMenuRenderer;

  MenuRenderer({this.multiPageMenuRenderer});

  MenuRenderer.fromJson(Map<String, dynamic> json) {
    multiPageMenuRenderer = json['multiPageMenuRenderer'] != null
        ? new MultiPageMenuRenderer.fromJson(json['multiPageMenuRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.multiPageMenuRenderer != null) {
      data['multiPageMenuRenderer'] = this.multiPageMenuRenderer.toJson();
    }
    return data;
  }
}

class MultiPageMenuRenderer {
  List<Sections> sections;
  String trackingParams;
  String style;

  MultiPageMenuRenderer({this.sections, this.trackingParams, this.style});

  MultiPageMenuRenderer.fromJson(Map<String, dynamic> json) {
    if (json['sections'] != null) {
      sections = new List<Sections>();
      json['sections'].forEach((v) {
        sections.add(new Sections.fromJson(v));
      });
    }
    trackingParams = json['trackingParams'];
    style = json['style'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sections != null) {
      data['sections'] = this.sections.map((v) => v.toJson()).toList();
    }
    data['trackingParams'] = this.trackingParams;
    data['style'] = this.style;
    return data;
  }
}

class Sections {
  MultiPageMenuSectionRenderer multiPageMenuSectionRenderer;

  Sections({this.multiPageMenuSectionRenderer});

  Sections.fromJson(Map<String, dynamic> json) {
    multiPageMenuSectionRenderer = json['multiPageMenuSectionRenderer'] != null
        ? new MultiPageMenuSectionRenderer.fromJson(
            json['multiPageMenuSectionRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.multiPageMenuSectionRenderer != null) {
      data['multiPageMenuSectionRenderer'] =
          this.multiPageMenuSectionRenderer.toJson();
    }
    return data;
  }
}

class MultiPageMenuSectionRenderer {
  List<Items> items;
  String trackingParams;

  MultiPageMenuSectionRenderer({this.items, this.trackingParams});

  MultiPageMenuSectionRenderer.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = new List<Items>();
      json['items'].forEach((v) {
        items.add(new Items.fromJson(v));
      });
    }
    trackingParams = json['trackingParams'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    data['trackingParams'] = this.trackingParams;
    return data;
  }
}

class Items {
  CompactLinkRenderer compactLinkRenderer;

  Items({this.compactLinkRenderer});

  Items.fromJson(Map<String, dynamic> json) {
    compactLinkRenderer = json['compactLinkRenderer'] != null
        ? new CompactLinkRenderer.fromJson(json['compactLinkRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.compactLinkRenderer != null) {
      data['compactLinkRenderer'] = this.compactLinkRenderer.toJson();
    }
    return data;
  }
}

class CompactLinkRenderer {
  Icon icon;
  DescriptionSnippet title;
  NavigationEndpoint navigationEndpoint;
  String trackingParams;
  String style;

  CompactLinkRenderer(
      {this.icon,
      this.title,
      this.navigationEndpoint,
      this.trackingParams,
      this.style});

  CompactLinkRenderer.fromJson(Map<String, dynamic> json) {
    icon = json['icon'] != null ? new Icon.fromJson(json['icon']) : null;
    title = json['title'] != null
        ? new DescriptionSnippet.fromJson(json['title'])
        : null;
    navigationEndpoint = json['navigationEndpoint'] != null
        ? new NavigationEndpoint.fromJson(json['navigationEndpoint'])
        : null;
    trackingParams = json['trackingParams'];
    style = json['style'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.icon != null) {
      data['icon'] = this.icon.toJson();
    }
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    if (this.navigationEndpoint != null) {
      data['navigationEndpoint'] = this.navigationEndpoint.toJson();
    }
    data['trackingParams'] = this.trackingParams;
    data['style'] = this.style;
    return data;
  }
}

class NavigationEndpoint {
  String clickTrackingParams;
  CommandMetadata commandMetadata;
  UploadEndpoint uploadEndpoint;
  SignalNavigationEndpoint signalNavigationEndpoint;
  UrlEndpoint urlEndpoint;

  NavigationEndpoint(
      {this.clickTrackingParams,
      this.commandMetadata,
      this.uploadEndpoint,
      this.signalNavigationEndpoint,
      this.urlEndpoint});

  NavigationEndpoint.fromJson(Map<String, dynamic> json) {
    clickTrackingParams = json['clickTrackingParams'];
    commandMetadata = json['commandMetadata'] != null
        ? new CommandMetadata.fromJson(json['commandMetadata'])
        : null;
    uploadEndpoint = json['uploadEndpoint'] != null
        ? new UploadEndpoint.fromJson(json['uploadEndpoint'])
        : null;
    signalNavigationEndpoint = json['signalNavigationEndpoint'] != null
        ? new SignalNavigationEndpoint.fromJson(
            json['signalNavigationEndpoint'])
        : null;
    urlEndpoint = json['urlEndpoint'] != null
        ? new UrlEndpoint.fromJson(json['urlEndpoint'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['clickTrackingParams'] = this.clickTrackingParams;
    if (this.commandMetadata != null) {
      data['commandMetadata'] = this.commandMetadata.toJson();
    }
    if (this.uploadEndpoint != null) {
      data['uploadEndpoint'] = this.uploadEndpoint.toJson();
    }
    if (this.signalNavigationEndpoint != null) {
      data['signalNavigationEndpoint'] = this.signalNavigationEndpoint.toJson();
    }
    if (this.urlEndpoint != null) {
      data['urlEndpoint'] = this.urlEndpoint.toJson();
    }
    return data;
  }
}

class UploadEndpoint {
  bool hack;

  UploadEndpoint({this.hack});

  UploadEndpoint.fromJson(Map<String, dynamic> json) {
    hack = json['hack'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hack'] = this.hack;
    return data;
  }
}

class SignalNavigationEndpoint {
  String signal;

  SignalNavigationEndpoint({this.signal});

  SignalNavigationEndpoint.fromJson(Map<String, dynamic> json) {
    signal = json['signal'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['signal'] = this.signal;
    return data;
  }
}

class UrlEndpoint {
  String url;
  String target;

  UrlEndpoint({this.url, this.target});

  UrlEndpoint.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    target = json['target'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['target'] = this.target;
    return data;
  }
}

class Avatar {
  List<Thumbnails> thumbnails;
  Accessibility accessibility;

  Avatar({this.thumbnails, this.accessibility});

  Avatar.fromJson(Map<String, dynamic> json) {
    if (json['thumbnails'] != null) {
      thumbnails = new List<Thumbnails>();
      json['thumbnails'].forEach((v) {
        thumbnails.add(new Thumbnails.fromJson(v));
      });
    }
    accessibility = json['accessibility'] != null
        ? new Accessibility.fromJson(json['accessibility'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.thumbnails != null) {
      data['thumbnails'] = this.thumbnails.map((v) => v.toJson()).toList();
    }
    if (this.accessibility != null) {
      data['accessibility'] = this.accessibility.toJson();
    }
    return data;
  }
}

class MenuRequest {
  String clickTrackingParams;
  CommandMetadata commandMetadata;
  SignalServiceEndpoint signalServiceEndpoint;

  MenuRequest(
      {this.clickTrackingParams,
      this.commandMetadata,
      this.signalServiceEndpoint});

  MenuRequest.fromJson(Map<String, dynamic> json) {
    clickTrackingParams = json['clickTrackingParams'];
    commandMetadata = json['commandMetadata'] != null
        ? new CommandMetadata.fromJson(json['commandMetadata'])
        : null;
    signalServiceEndpoint = json['signalServiceEndpoint'] != null
        ? new SignalServiceEndpoint.fromJson(json['signalServiceEndpoint'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['clickTrackingParams'] = this.clickTrackingParams;
    if (this.commandMetadata != null) {
      data['commandMetadata'] = this.commandMetadata.toJson();
    }
    if (this.signalServiceEndpoint != null) {
      data['signalServiceEndpoint'] = this.signalServiceEndpoint.toJson();
    }
    return data;
  }
}

class Actions {
  String clickTrackingParams;
  OpenPopupAction openPopupAction;

  Actions({this.clickTrackingParams, this.openPopupAction});

  Actions.fromJson(Map<String, dynamic> json) {
    clickTrackingParams = json['clickTrackingParams'];
    openPopupAction = json['openPopupAction'] != null
        ? new OpenPopupAction.fromJson(json['openPopupAction'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['clickTrackingParams'] = this.clickTrackingParams;
    if (this.openPopupAction != null) {
      data['openPopupAction'] = this.openPopupAction.toJson();
    }
    return data;
  }
}

class OpenPopupAction {
  MenuRenderer popup;
  String popupType;
  bool beReused;

  OpenPopupAction({this.popup, this.popupType, this.beReused});

  OpenPopupAction.fromJson(Map<String, dynamic> json) {
    popup =
        json['popup'] != null ? new MenuRenderer.fromJson(json['popup']) : null;
    popupType = json['popupType'];
    beReused = json['beReused'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.popup != null) {
      data['popup'] = this.popup.toJson();
    }
    data['popupType'] = this.popupType;
    data['beReused'] = this.beReused;
    return data;
  }
}

class MultiPageMenuRenderer {
  String trackingParams;
  String style;
  bool showLoadingSpinner;

  MultiPageMenuRenderer(
      {this.trackingParams, this.style, this.showLoadingSpinner});

  MultiPageMenuRenderer.fromJson(Map<String, dynamic> json) {
    trackingParams = json['trackingParams'];
    style = json['style'];
    showLoadingSpinner = json['showLoadingSpinner'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['trackingParams'] = this.trackingParams;
    data['style'] = this.style;
    data['showLoadingSpinner'] = this.showLoadingSpinner;
    return data;
  }
}

class NotificationTopbarButtonRenderer {
  Icon icon;
  MenuRequest menuRequest;
  String style;
  String trackingParams;
  Accessibility accessibility;
  String tooltip;
  MenuRequest updateUnseenCountEndpoint;
  int notificationCount;
  List<String> handlerDatas;

  NotificationTopbarButtonRenderer(
      {this.icon,
      this.menuRequest,
      this.style,
      this.trackingParams,
      this.accessibility,
      this.tooltip,
      this.updateUnseenCountEndpoint,
      this.notificationCount,
      this.handlerDatas});

  NotificationTopbarButtonRenderer.fromJson(Map<String, dynamic> json) {
    icon = json['icon'] != null ? new Icon.fromJson(json['icon']) : null;
    menuRequest = json['menuRequest'] != null
        ? new MenuRequest.fromJson(json['menuRequest'])
        : null;
    style = json['style'];
    trackingParams = json['trackingParams'];
    accessibility = json['accessibility'] != null
        ? new Accessibility.fromJson(json['accessibility'])
        : null;
    tooltip = json['tooltip'];
    updateUnseenCountEndpoint = json['updateUnseenCountEndpoint'] != null
        ? new MenuRequest.fromJson(json['updateUnseenCountEndpoint'])
        : null;
    notificationCount = json['notificationCount'];
    handlerDatas = json['handlerDatas'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.icon != null) {
      data['icon'] = this.icon.toJson();
    }
    if (this.menuRequest != null) {
      data['menuRequest'] = this.menuRequest.toJson();
    }
    data['style'] = this.style;
    data['trackingParams'] = this.trackingParams;
    if (this.accessibility != null) {
      data['accessibility'] = this.accessibility.toJson();
    }
    data['tooltip'] = this.tooltip;
    if (this.updateUnseenCountEndpoint != null) {
      data['updateUnseenCountEndpoint'] =
          this.updateUnseenCountEndpoint.toJson();
    }
    data['notificationCount'] = this.notificationCount;
    data['handlerDatas'] = this.handlerDatas;
    return data;
  }
}

class HotkeyDialog {
  HotkeyDialogRenderer hotkeyDialogRenderer;

  HotkeyDialog({this.hotkeyDialogRenderer});

  HotkeyDialog.fromJson(Map<String, dynamic> json) {
    hotkeyDialogRenderer = json['hotkeyDialogRenderer'] != null
        ? new HotkeyDialogRenderer.fromJson(json['hotkeyDialogRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.hotkeyDialogRenderer != null) {
      data['hotkeyDialogRenderer'] = this.hotkeyDialogRenderer.toJson();
    }
    return data;
  }
}

class HotkeyDialogRenderer {
  DescriptionSnippet title;
  List<Sections> sections;
  DismissButton dismissButton;
  String trackingParams;

  HotkeyDialogRenderer(
      {this.title, this.sections, this.dismissButton, this.trackingParams});

  HotkeyDialogRenderer.fromJson(Map<String, dynamic> json) {
    title = json['title'] != null
        ? new DescriptionSnippet.fromJson(json['title'])
        : null;
    if (json['sections'] != null) {
      sections = new List<Sections>();
      json['sections'].forEach((v) {
        sections.add(new Sections.fromJson(v));
      });
    }
    dismissButton = json['dismissButton'] != null
        ? new DismissButton.fromJson(json['dismissButton'])
        : null;
    trackingParams = json['trackingParams'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    if (this.sections != null) {
      data['sections'] = this.sections.map((v) => v.toJson()).toList();
    }
    if (this.dismissButton != null) {
      data['dismissButton'] = this.dismissButton.toJson();
    }
    data['trackingParams'] = this.trackingParams;
    return data;
  }
}

class Sections {
  HotkeyDialogSectionRenderer hotkeyDialogSectionRenderer;

  Sections({this.hotkeyDialogSectionRenderer});

  Sections.fromJson(Map<String, dynamic> json) {
    hotkeyDialogSectionRenderer = json['hotkeyDialogSectionRenderer'] != null
        ? new HotkeyDialogSectionRenderer.fromJson(
            json['hotkeyDialogSectionRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.hotkeyDialogSectionRenderer != null) {
      data['hotkeyDialogSectionRenderer'] =
          this.hotkeyDialogSectionRenderer.toJson();
    }
    return data;
  }
}

class HotkeyDialogSectionRenderer {
  DescriptionSnippet title;
  List<Options> options;

  HotkeyDialogSectionRenderer({this.title, this.options});

  HotkeyDialogSectionRenderer.fromJson(Map<String, dynamic> json) {
    title = json['title'] != null
        ? new DescriptionSnippet.fromJson(json['title'])
        : null;
    if (json['options'] != null) {
      options = new List<Options>();
      json['options'].forEach((v) {
        options.add(new Options.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.title != null) {
      data['title'] = this.title.toJson();
    }
    if (this.options != null) {
      data['options'] = this.options.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Options {
  HotkeyDialogSectionOptionRenderer hotkeyDialogSectionOptionRenderer;

  Options({this.hotkeyDialogSectionOptionRenderer});

  Options.fromJson(Map<String, dynamic> json) {
    hotkeyDialogSectionOptionRenderer =
        json['hotkeyDialogSectionOptionRenderer'] != null
            ? new HotkeyDialogSectionOptionRenderer.fromJson(
                json['hotkeyDialogSectionOptionRenderer'])
            : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.hotkeyDialogSectionOptionRenderer != null) {
      data['hotkeyDialogSectionOptionRenderer'] =
          this.hotkeyDialogSectionOptionRenderer.toJson();
    }
    return data;
  }
}

class HotkeyDialogSectionOptionRenderer {
  DescriptionSnippet label;
  String hotkey;
  Accessibility hotkeyAccessibilityLabel;

  HotkeyDialogSectionOptionRenderer(
      {this.label, this.hotkey, this.hotkeyAccessibilityLabel});

  HotkeyDialogSectionOptionRenderer.fromJson(Map<String, dynamic> json) {
    label = json['label'] != null
        ? new DescriptionSnippet.fromJson(json['label'])
        : null;
    hotkey = json['hotkey'];
    hotkeyAccessibilityLabel = json['hotkeyAccessibilityLabel'] != null
        ? new Accessibility.fromJson(json['hotkeyAccessibilityLabel'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.label != null) {
      data['label'] = this.label.toJson();
    }
    data['hotkey'] = this.hotkey;
    if (this.hotkeyAccessibilityLabel != null) {
      data['hotkeyAccessibilityLabel'] = this.hotkeyAccessibilityLabel.toJson();
    }
    return data;
  }
}

class DismissButton {
  ButtonRenderer buttonRenderer;

  DismissButton({this.buttonRenderer});

  DismissButton.fromJson(Map<String, dynamic> json) {
    buttonRenderer = json['buttonRenderer'] != null
        ? new ButtonRenderer.fromJson(json['buttonRenderer'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.buttonRenderer != null) {
      data['buttonRenderer'] = this.buttonRenderer.toJson();
    }
    return data;
  }
}

class ButtonRenderer {
  String style;
  String size;
  bool isDisabled;
  DescriptionSnippet text;
  String trackingParams;

  ButtonRenderer(
      {this.style, this.size, this.isDisabled, this.text, this.trackingParams});

  ButtonRenderer.fromJson(Map<String, dynamic> json) {
    style = json['style'];
    size = json['size'];
    isDisabled = json['isDisabled'];
    text = json['text'] != null
        ? new DescriptionSnippet.fromJson(json['text'])
        : null;
    trackingParams = json['trackingParams'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['style'] = this.style;
    data['size'] = this.size;
    data['isDisabled'] = this.isDisabled;
    if (this.text != null) {
      data['text'] = this.text.toJson();
    }
    data['trackingParams'] = this.trackingParams;
    return data;
  }
}

class ButtonRenderer {
  String trackingParams;
  MenuRequest command;

  ButtonRenderer({this.trackingParams, this.command});

  ButtonRenderer.fromJson(Map<String, dynamic> json) {
    trackingParams = json['trackingParams'];
    command = json['command'] != null
        ? new MenuRequest.fromJson(json['command'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['trackingParams'] = this.trackingParams;
    if (this.command != null) {
      data['command'] = this.command.toJson();
    }
    return data;
  }
}

class WebCommandMetadata {
  bool sendPost;

  WebCommandMetadata({this.sendPost});

  WebCommandMetadata.fromJson(Map<String, dynamic> json) {
    sendPost = json['sendPost'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sendPost'] = this.sendPost;
    return data;
  }
}

class Actions {
  String clickTrackingParams;
  SignalNavigationEndpoint signalAction;

  Actions({this.clickTrackingParams, this.signalAction});

  Actions.fromJson(Map<String, dynamic> json) {
    clickTrackingParams = json['clickTrackingParams'];
    signalAction = json['signalAction'] != null
        ? new SignalNavigationEndpoint.fromJson(json['signalAction'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['clickTrackingParams'] = this.clickTrackingParams;
    if (this.signalAction != null) {
      data['signalAction'] = this.signalAction.toJson();
    }
    return data;
  }
}

class ButtonRenderer {
  String style;
  String size;
  bool isDisabled;
  DescriptionSnippet text;
  String trackingParams;
  MenuRequest command;

  ButtonRenderer(
      {this.style,
      this.size,
      this.isDisabled,
      this.text,
      this.trackingParams,
      this.command});

  ButtonRenderer.fromJson(Map<String, dynamic> json) {
    style = json['style'];
    size = json['size'];
    isDisabled = json['isDisabled'];
    text = json['text'] != null
        ? new DescriptionSnippet.fromJson(json['text'])
        : null;
    trackingParams = json['trackingParams'];
    command = json['command'] != null
        ? new MenuRequest.fromJson(json['command'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['style'] = this.style;
    data['size'] = this.size;
    data['isDisabled'] = this.isDisabled;
    if (this.text != null) {
      data['text'] = this.text.toJson();
    }
    data['trackingParams'] = this.trackingParams;
    if (this.command != null) {
      data['command'] = this.command.toJson();
    }
    return data;
  }
}

class AdSafetyReason {
  bool isWebAndAppActivityEnabled;

  AdSafetyReason({this.isWebAndAppActivityEnabled});

  AdSafetyReason.fromJson(Map<String, dynamic> json) {
    isWebAndAppActivityEnabled = json['isWebAndAppActivityEnabled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['isWebAndAppActivityEnabled'] = this.isWebAndAppActivityEnabled;
    return data;
  }
}