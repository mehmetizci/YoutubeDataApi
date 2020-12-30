// To parse this JSON data, do
//
//     final youtubeDataGetApi = youtubeDataGetApiFromJson(jsonString);

import 'dart:convert';

class YoutubeDataGetApi {
  YoutubeDataGetApi({
    this.responseContext,
    this.estimatedResults,
    this.contents,
    this.trackingParams,
    this.topbar,
    this.adSafetyReason,
  });

  ResponseContext responseContext;
  String estimatedResults;
  Contents contents;
  String trackingParams;
  Topbar topbar;
  AdSafetyReason adSafetyReason;

  factory YoutubeDataGetApi.fromRawJson(String str) =>
      YoutubeDataGetApi.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory YoutubeDataGetApi.fromJson(Map<String, dynamic> json) =>
      YoutubeDataGetApi(
        responseContext: json["responseContext"] == null
            ? null
            : ResponseContext.fromJson(json["responseContext"]),
        estimatedResults:
            json["estimatedResults"] == null ? null : json["estimatedResults"],
        contents: json["contents"] == null
            ? null
            : Contents.fromJson(json["contents"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        topbar: json["topbar"] == null ? null : Topbar.fromJson(json["topbar"]),
        adSafetyReason: json["adSafetyReason"] == null
            ? null
            : AdSafetyReason.fromJson(json["adSafetyReason"]),
      );

  Map<String, dynamic> toJson() => {
        "responseContext":
            responseContext == null ? null : responseContext.toJson(),
        "estimatedResults": estimatedResults == null ? null : estimatedResults,
        "contents": contents == null ? null : contents.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "topbar": topbar == null ? null : topbar.toJson(),
        "adSafetyReason":
            adSafetyReason == null ? null : adSafetyReason.toJson(),
      };
}

class AdSafetyReason {
  AdSafetyReason({
    this.isWebAndAppActivityEnabled,
  });

  bool isWebAndAppActivityEnabled;

  factory AdSafetyReason.fromRawJson(String str) =>
      AdSafetyReason.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AdSafetyReason.fromJson(Map<String, dynamic> json) => AdSafetyReason(
        isWebAndAppActivityEnabled: json["isWebAndAppActivityEnabled"] == null
            ? null
            : json["isWebAndAppActivityEnabled"],
      );

  Map<String, dynamic> toJson() => {
        "isWebAndAppActivityEnabled": isWebAndAppActivityEnabled == null
            ? null
            : isWebAndAppActivityEnabled,
      };
}

class Contents {
  Contents({
    this.twoColumnSearchResultsRenderer,
  });

  TwoColumnSearchResultsRenderer twoColumnSearchResultsRenderer;

  factory Contents.fromRawJson(String str) =>
      Contents.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Contents.fromJson(Map<String, dynamic> json) => Contents(
        twoColumnSearchResultsRenderer:
            json["twoColumnSearchResultsRenderer"] == null
                ? null
                : TwoColumnSearchResultsRenderer.fromJson(
                    json["twoColumnSearchResultsRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "twoColumnSearchResultsRenderer": twoColumnSearchResultsRenderer == null
            ? null
            : twoColumnSearchResultsRenderer.toJson(),
      };
}

class TwoColumnSearchResultsRenderer {
  TwoColumnSearchResultsRenderer({
    this.primaryContents,
  });

  PrimaryContents primaryContents;

  factory TwoColumnSearchResultsRenderer.fromRawJson(String str) =>
      TwoColumnSearchResultsRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TwoColumnSearchResultsRenderer.fromJson(Map<String, dynamic> json) =>
      TwoColumnSearchResultsRenderer(
        primaryContents: json["primaryContents"] == null
            ? null
            : PrimaryContents.fromJson(json["primaryContents"]),
      );

  Map<String, dynamic> toJson() => {
        "primaryContents":
            primaryContents == null ? null : primaryContents.toJson(),
      };
}

class PrimaryContents {
  PrimaryContents({
    this.sectionListRenderer,
  });

  SectionListRenderer sectionListRenderer;

  factory PrimaryContents.fromRawJson(String str) =>
      PrimaryContents.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PrimaryContents.fromJson(Map<String, dynamic> json) =>
      PrimaryContents(
        sectionListRenderer: json["sectionListRenderer"] == null
            ? null
            : SectionListRenderer.fromJson(json["sectionListRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "sectionListRenderer":
            sectionListRenderer == null ? null : sectionListRenderer.toJson(),
      };
}

class SectionListRenderer {
  SectionListRenderer({
    this.contents,
    this.trackingParams,
    this.subMenu,
    this.hideBottomSeparator,
    this.targetId,
  });

  List<SectionListRendererContent> contents;
  String trackingParams;
  SubMenu subMenu;
  bool hideBottomSeparator;
  String targetId;

  factory SectionListRenderer.fromRawJson(String str) =>
      SectionListRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SectionListRenderer.fromJson(Map<String, dynamic> json) =>
      SectionListRenderer(
        contents: json["contents"] == null
            ? null
            : List<SectionListRendererContent>.from(json["contents"]
                .map((x) => SectionListRendererContent.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        subMenu:
            json["subMenu"] == null ? null : SubMenu.fromJson(json["subMenu"]),
        hideBottomSeparator: json["hideBottomSeparator"] == null
            ? null
            : json["hideBottomSeparator"],
        targetId: json["targetId"] == null ? null : json["targetId"],
      );

  Map<String, dynamic> toJson() => {
        "contents": contents == null
            ? null
            : List<dynamic>.from(contents.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "subMenu": subMenu == null ? null : subMenu.toJson(),
        "hideBottomSeparator":
            hideBottomSeparator == null ? null : hideBottomSeparator,
        "targetId": targetId == null ? null : targetId,
      };
}

class SectionListRendererContent {
  SectionListRendererContent({
    this.itemSectionRenderer,
    this.continuationItemRenderer,
  });

  ItemSectionRenderer itemSectionRenderer;
  ContinuationItemRenderer continuationItemRenderer;

  factory SectionListRendererContent.fromRawJson(String str) =>
      SectionListRendererContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SectionListRendererContent.fromJson(Map<String, dynamic> json) =>
      SectionListRendererContent(
        itemSectionRenderer: json["itemSectionRenderer"] == null
            ? null
            : ItemSectionRenderer.fromJson(json["itemSectionRenderer"]),
        continuationItemRenderer: json["continuationItemRenderer"] == null
            ? null
            : ContinuationItemRenderer.fromJson(
                json["continuationItemRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "itemSectionRenderer":
            itemSectionRenderer == null ? null : itemSectionRenderer.toJson(),
        "continuationItemRenderer": continuationItemRenderer == null
            ? null
            : continuationItemRenderer.toJson(),
      };
}

class ContinuationItemRenderer {
  ContinuationItemRenderer({
    this.trigger,
    this.continuationEndpoint,
  });

  String trigger;
  ContinuationEndpoint continuationEndpoint;

  factory ContinuationItemRenderer.fromRawJson(String str) =>
      ContinuationItemRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContinuationItemRenderer.fromJson(Map<String, dynamic> json) =>
      ContinuationItemRenderer(
        trigger: json["trigger"] == null ? null : json["trigger"],
        continuationEndpoint: json["continuationEndpoint"] == null
            ? null
            : ContinuationEndpoint.fromJson(json["continuationEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "trigger": trigger == null ? null : trigger,
        "continuationEndpoint":
            continuationEndpoint == null ? null : continuationEndpoint.toJson(),
      };
}

class ContinuationEndpoint {
  ContinuationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.continuationCommand,
  });

  String clickTrackingParams;
  ContinuationEndpointCommandMetadata commandMetadata;
  ContinuationCommand continuationCommand;

  factory ContinuationEndpoint.fromRawJson(String str) =>
      ContinuationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContinuationEndpoint.fromJson(Map<String, dynamic> json) =>
      ContinuationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ContinuationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        continuationCommand: json["continuationCommand"] == null
            ? null
            : ContinuationCommand.fromJson(json["continuationCommand"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "continuationCommand":
            continuationCommand == null ? null : continuationCommand.toJson(),
      };
}

class ContinuationEndpointCommandMetadata {
  ContinuationEndpointCommandMetadata({
    this.webCommandMetadata,
  });

  PurpleWebCommandMetadata webCommandMetadata;

  factory ContinuationEndpointCommandMetadata.fromRawJson(String str) =>
      ContinuationEndpointCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContinuationEndpointCommandMetadata.fromJson(
          Map<String, dynamic> json) =>
      ContinuationEndpointCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : PurpleWebCommandMetadata.fromJson(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toJson() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toJson(),
      };
}

class PurpleWebCommandMetadata {
  PurpleWebCommandMetadata({
    this.sendPost,
    this.apiUrl,
  });

  bool sendPost;
  ApiUrl apiUrl;

  factory PurpleWebCommandMetadata.fromRawJson(String str) =>
      PurpleWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      PurpleWebCommandMetadata(
        sendPost: json["sendPost"] == null ? null : json["sendPost"],
        apiUrl:
            json["apiUrl"] == null ? null : apiUrlValues.map[json["apiUrl"]],
      );

  Map<String, dynamic> toJson() => {
        "sendPost": sendPost == null ? null : sendPost,
        "apiUrl": apiUrl == null ? null : apiUrlValues.reverse[apiUrl],
      };
}

enum ApiUrl {
  YOUTUBEI_V1_SEARCH,
  YOUTUBEI_V1_BROWSE_EDIT_PLAYLIST,
  YOUTUBEI_V1_PLAYLIST_GET_ADD_TO_PLAYLIST,
  YOUTUBEI_V1_FLAG_GET_FORM,
  YOUTUBEI_V1_PLAYLIST_CREATE,
  YOUTUBEI_V1_NOTIFICATION_GET_NOTIFICATION_MENU,
  YOUTUBEI_V1_NOTIFICATION_GET_UNSEEN_COUNT,
  YOUTUBEI_V1_ACCOUNT_ACCOUNT_MENU
}

final apiUrlValues = EnumValues({
  "/youtubei/v1/account/account_menu": ApiUrl.YOUTUBEI_V1_ACCOUNT_ACCOUNT_MENU,
  "/youtubei/v1/browse/edit_playlist": ApiUrl.YOUTUBEI_V1_BROWSE_EDIT_PLAYLIST,
  "/youtubei/v1/flag/get_form": ApiUrl.YOUTUBEI_V1_FLAG_GET_FORM,
  "/youtubei/v1/notification/get_notification_menu":
      ApiUrl.YOUTUBEI_V1_NOTIFICATION_GET_NOTIFICATION_MENU,
  "/youtubei/v1/notification/get_unseen_count":
      ApiUrl.YOUTUBEI_V1_NOTIFICATION_GET_UNSEEN_COUNT,
  "/youtubei/v1/playlist/create": ApiUrl.YOUTUBEI_V1_PLAYLIST_CREATE,
  "/youtubei/v1/playlist/get_add_to_playlist":
      ApiUrl.YOUTUBEI_V1_PLAYLIST_GET_ADD_TO_PLAYLIST,
  "/youtubei/v1/search": ApiUrl.YOUTUBEI_V1_SEARCH
});

class ContinuationCommand {
  ContinuationCommand({
    this.token,
    this.request,
  });

  String token;
  String request;

  factory ContinuationCommand.fromRawJson(String str) =>
      ContinuationCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContinuationCommand.fromJson(Map<String, dynamic> json) =>
      ContinuationCommand(
        token: json["token"] == null ? null : json["token"],
        request: json["request"] == null ? null : json["request"],
      );

  Map<String, dynamic> toJson() => {
        "token": token == null ? null : token,
        "request": request == null ? null : request,
      };
}

class ItemSectionRenderer {
  ItemSectionRenderer({
    this.contents,
    this.trackingParams,
  });

  List<ItemSectionRendererContent> contents;
  String trackingParams;

  factory ItemSectionRenderer.fromRawJson(String str) =>
      ItemSectionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ItemSectionRenderer.fromJson(Map<String, dynamic> json) =>
      ItemSectionRenderer(
        contents: json["contents"] == null
            ? null
            : List<ItemSectionRendererContent>.from(json["contents"]
                .map((x) => ItemSectionRendererContent.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "contents": contents == null
            ? null
            : List<dynamic>.from(contents.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class ItemSectionRendererContent {
  ItemSectionRendererContent({
    this.videoRenderer,
  });

  VideoRenderer videoRenderer;

  factory ItemSectionRendererContent.fromRawJson(String str) =>
      ItemSectionRendererContent.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ItemSectionRendererContent.fromJson(Map<String, dynamic> json) =>
      ItemSectionRendererContent(
        videoRenderer: json["videoRenderer"] == null
            ? null
            : VideoRenderer.fromJson(json["videoRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "videoRenderer": videoRenderer == null ? null : videoRenderer.toJson(),
      };
}

class VideoRenderer {
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
    this.menu,
    this.channelThumbnailSupportedRenderers,
    this.thumbnailOverlays,
    this.richThumbnail,
    this.badges,
  });

  String videoId;
  ChannelThumbnailWithLinkRendererThumbnail thumbnail;
  PurpleTitle title;
  DescriptionSnippet descriptionSnippet;
  Text longBylineText;
  PublishedTimeTextClass publishedTimeText;
  LengthTextClass lengthText;
  PublishedTimeTextClass viewCountText;
  VideoRendererNavigationEndpoint navigationEndpoint;
  Text ownerText;
  Text shortBylineText;
  String trackingParams;
  bool showActionMenu;
  PublishedTimeTextClass shortViewCountText;
  Menu menu;
  ChannelThumbnailSupportedRenderers channelThumbnailSupportedRenderers;
  List<ThumbnailOverlay> thumbnailOverlays;
  RichThumbnail richThumbnail;
  List<Badge> badges;

  factory VideoRenderer.fromRawJson(String str) =>
      VideoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoRenderer.fromJson(Map<String, dynamic> json) => VideoRenderer(
        videoId: json["videoId"] == null ? null : json["videoId"],
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelThumbnailWithLinkRendererThumbnail.fromJson(
                json["thumbnail"]),
        title:
            json["title"] == null ? null : PurpleTitle.fromJson(json["title"]),
        descriptionSnippet: json["descriptionSnippet"] == null
            ? null
            : DescriptionSnippet.fromJson(json["descriptionSnippet"]),
        longBylineText: json["longBylineText"] == null
            ? null
            : Text.fromJson(json["longBylineText"]),
        publishedTimeText: json["publishedTimeText"] == null
            ? null
            : PublishedTimeTextClass.fromJson(json["publishedTimeText"]),
        lengthText: json["lengthText"] == null
            ? null
            : LengthTextClass.fromJson(json["lengthText"]),
        viewCountText: json["viewCountText"] == null
            ? null
            : PublishedTimeTextClass.fromJson(json["viewCountText"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : VideoRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        ownerText:
            json["ownerText"] == null ? null : Text.fromJson(json["ownerText"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : Text.fromJson(json["shortBylineText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        showActionMenu:
            json["showActionMenu"] == null ? null : json["showActionMenu"],
        shortViewCountText: json["shortViewCountText"] == null
            ? null
            : PublishedTimeTextClass.fromJson(json["shortViewCountText"]),
        menu: json["menu"] == null ? null : Menu.fromJson(json["menu"]),
        channelThumbnailSupportedRenderers:
            json["channelThumbnailSupportedRenderers"] == null
                ? null
                : ChannelThumbnailSupportedRenderers.fromJson(
                    json["channelThumbnailSupportedRenderers"]),
        thumbnailOverlays: json["thumbnailOverlays"] == null
            ? null
            : List<ThumbnailOverlay>.from(json["thumbnailOverlays"]
                .map((x) => ThumbnailOverlay.fromJson(x))),
        richThumbnail: json["richThumbnail"] == null
            ? null
            : RichThumbnail.fromJson(json["richThumbnail"]),
        badges: json["badges"] == null
            ? null
            : List<Badge>.from(json["badges"].map((x) => Badge.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "title": title == null ? null : title.toJson(),
        "descriptionSnippet":
            descriptionSnippet == null ? null : descriptionSnippet.toJson(),
        "longBylineText":
            longBylineText == null ? null : longBylineText.toJson(),
        "publishedTimeText":
            publishedTimeText == null ? null : publishedTimeText.toJson(),
        "lengthText": lengthText == null ? null : lengthText.toJson(),
        "viewCountText": viewCountText == null ? null : viewCountText.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "ownerText": ownerText == null ? null : ownerText.toJson(),
        "shortBylineText":
            shortBylineText == null ? null : shortBylineText.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "showActionMenu": showActionMenu == null ? null : showActionMenu,
        "shortViewCountText":
            shortViewCountText == null ? null : shortViewCountText.toJson(),
        "menu": menu == null ? null : menu.toJson(),
        "channelThumbnailSupportedRenderers":
            channelThumbnailSupportedRenderers == null
                ? null
                : channelThumbnailSupportedRenderers.toJson(),
        "thumbnailOverlays": thumbnailOverlays == null
            ? null
            : List<dynamic>.from(thumbnailOverlays.map((x) => x.toJson())),
        "richThumbnail": richThumbnail == null ? null : richThumbnail.toJson(),
        "badges": badges == null
            ? null
            : List<dynamic>.from(badges.map((x) => x.toJson())),
      };
}

class Badge {
  Badge({
    this.metadataBadgeRenderer,
  });

  MetadataBadgeRenderer metadataBadgeRenderer;

  factory Badge.fromRawJson(String str) => Badge.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Badge.fromJson(Map<String, dynamic> json) => Badge(
        metadataBadgeRenderer: json["metadataBadgeRenderer"] == null
            ? null
            : MetadataBadgeRenderer.fromJson(json["metadataBadgeRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "metadataBadgeRenderer": metadataBadgeRenderer == null
            ? null
            : metadataBadgeRenderer.toJson(),
      };
}

class MetadataBadgeRenderer {
  MetadataBadgeRenderer({
    this.style,
    this.label,
    this.trackingParams,
    this.accessibilityData,
  });

  String style;
  String label;
  String trackingParams;
  MetadataBadgeRendererAccessibilityData accessibilityData;

  factory MetadataBadgeRenderer.fromRawJson(String str) =>
      MetadataBadgeRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MetadataBadgeRenderer.fromJson(Map<String, dynamic> json) =>
      MetadataBadgeRenderer(
        style: json["style"] == null ? null : json["style"],
        label: json["label"] == null ? null : json["label"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibilityData: json["accessibilityData"] == null
            ? null
            : MetadataBadgeRendererAccessibilityData.fromJson(
                json["accessibilityData"]),
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "label": label == null ? null : label,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toJson(),
      };
}

class MetadataBadgeRendererAccessibilityData {
  MetadataBadgeRendererAccessibilityData({
    this.label,
  });

  String label;

  factory MetadataBadgeRendererAccessibilityData.fromRawJson(String str) =>
      MetadataBadgeRendererAccessibilityData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MetadataBadgeRendererAccessibilityData.fromJson(
          Map<String, dynamic> json) =>
      MetadataBadgeRendererAccessibilityData(
        label: json["label"] == null ? null : json["label"],
      );

  Map<String, dynamic> toJson() => {
        "label": label == null ? null : label,
      };
}

class ChannelThumbnailSupportedRenderers {
  ChannelThumbnailSupportedRenderers({
    this.channelThumbnailWithLinkRenderer,
  });

  ChannelThumbnailWithLinkRenderer channelThumbnailWithLinkRenderer;

  factory ChannelThumbnailSupportedRenderers.fromRawJson(String str) =>
      ChannelThumbnailSupportedRenderers.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelThumbnailSupportedRenderers.fromJson(
          Map<String, dynamic> json) =>
      ChannelThumbnailSupportedRenderers(
        channelThumbnailWithLinkRenderer:
            json["channelThumbnailWithLinkRenderer"] == null
                ? null
                : ChannelThumbnailWithLinkRenderer.fromJson(
                    json["channelThumbnailWithLinkRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "channelThumbnailWithLinkRenderer":
            channelThumbnailWithLinkRenderer == null
                ? null
                : channelThumbnailWithLinkRenderer.toJson(),
      };
}

class ChannelThumbnailWithLinkRenderer {
  ChannelThumbnailWithLinkRenderer({
    this.thumbnail,
    this.navigationEndpoint,
    this.accessibility,
  });

  ChannelThumbnailWithLinkRendererThumbnail thumbnail;
  Endpoint navigationEndpoint;
  HotkeyAccessibilityLabelClass accessibility;

  factory ChannelThumbnailWithLinkRenderer.fromRawJson(String str) =>
      ChannelThumbnailWithLinkRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelThumbnailWithLinkRenderer.fromJson(
          Map<String, dynamic> json) =>
      ChannelThumbnailWithLinkRenderer(
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelThumbnailWithLinkRendererThumbnail.fromJson(
                json["thumbnail"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : Endpoint.fromJson(json["navigationEndpoint"]),
        accessibility: json["accessibility"] == null
            ? null
            : HotkeyAccessibilityLabelClass.fromJson(json["accessibility"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
      };
}

class HotkeyAccessibilityLabelClass {
  HotkeyAccessibilityLabelClass({
    this.accessibilityData,
  });

  MetadataBadgeRendererAccessibilityData accessibilityData;

  factory HotkeyAccessibilityLabelClass.fromRawJson(String str) =>
      HotkeyAccessibilityLabelClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyAccessibilityLabelClass.fromJson(Map<String, dynamic> json) =>
      HotkeyAccessibilityLabelClass(
        accessibilityData: json["accessibilityData"] == null
            ? null
            : MetadataBadgeRendererAccessibilityData.fromJson(
                json["accessibilityData"]),
      );

  Map<String, dynamic> toJson() => {
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toJson(),
      };
}

class Endpoint {
  Endpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  String clickTrackingParams;
  EndpointCommandMetadata commandMetadata;
  BrowseEndpoint browseEndpoint;

  factory Endpoint.fromRawJson(String str) =>
      Endpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Endpoint.fromJson(Map<String, dynamic> json) => Endpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : EndpointCommandMetadata.fromJson(json["commandMetadata"]),
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : BrowseEndpoint.fromJson(json["browseEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "browseEndpoint":
            browseEndpoint == null ? null : browseEndpoint.toJson(),
      };
}

class BrowseEndpoint {
  BrowseEndpoint({
    this.browseId,
  });

  String browseId;

  factory BrowseEndpoint.fromRawJson(String str) =>
      BrowseEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BrowseEndpoint.fromJson(Map<String, dynamic> json) => BrowseEndpoint(
        browseId: json["browseId"] == null ? null : json["browseId"],
      );

  Map<String, dynamic> toJson() => {
        "browseId": browseId == null ? null : browseId,
      };
}

class EndpointCommandMetadata {
  EndpointCommandMetadata({
    this.webCommandMetadata,
  });

  FluffyWebCommandMetadata webCommandMetadata;

  factory EndpointCommandMetadata.fromRawJson(String str) =>
      EndpointCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EndpointCommandMetadata.fromJson(Map<String, dynamic> json) =>
      EndpointCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : FluffyWebCommandMetadata.fromJson(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toJson() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toJson(),
      };
}

class FluffyWebCommandMetadata {
  FluffyWebCommandMetadata({
    this.url,
    this.webPageType,
    this.rootVe,
  });

  String url;
  WebPageType webPageType;
  int rootVe;

  factory FluffyWebCommandMetadata.fromRawJson(String str) =>
      FluffyWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      FluffyWebCommandMetadata(
        url: json["url"] == null ? null : json["url"],
        webPageType: json["webPageType"] == null
            ? null
            : webPageTypeValues.map[json["webPageType"]],
        rootVe: json["rootVe"] == null ? null : json["rootVe"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "webPageType":
            webPageType == null ? null : webPageTypeValues.reverse[webPageType],
        "rootVe": rootVe == null ? null : rootVe,
      };
}

enum WebPageType {
  WEB_PAGE_TYPE_CHANNEL,
  WEB_PAGE_TYPE_WATCH,
  WEB_PAGE_TYPE_SEARCH,
  WEB_PAGE_TYPE_BROWSE,
  WEB_PAGE_TYPE_UNKNOWN
}

final webPageTypeValues = EnumValues({
  "WEB_PAGE_TYPE_BROWSE": WebPageType.WEB_PAGE_TYPE_BROWSE,
  "WEB_PAGE_TYPE_CHANNEL": WebPageType.WEB_PAGE_TYPE_CHANNEL,
  "WEB_PAGE_TYPE_SEARCH": WebPageType.WEB_PAGE_TYPE_SEARCH,
  "WEB_PAGE_TYPE_UNKNOWN": WebPageType.WEB_PAGE_TYPE_UNKNOWN,
  "WEB_PAGE_TYPE_WATCH": WebPageType.WEB_PAGE_TYPE_WATCH
});

class ChannelThumbnailWithLinkRendererThumbnail {
  ChannelThumbnailWithLinkRendererThumbnail({
    this.thumbnails,
  });

  List<ThumbnailElement> thumbnails;

  factory ChannelThumbnailWithLinkRendererThumbnail.fromRawJson(String str) =>
      ChannelThumbnailWithLinkRendererThumbnail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelThumbnailWithLinkRendererThumbnail.fromJson(
          Map<String, dynamic> json) =>
      ChannelThumbnailWithLinkRendererThumbnail(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<ThumbnailElement>.from(
                json["thumbnails"].map((x) => ThumbnailElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toJson())),
      };
}

class ThumbnailElement {
  ThumbnailElement({
    this.url,
    this.width,
    this.height,
  });

  String url;
  int width;
  int height;

  factory ThumbnailElement.fromRawJson(String str) =>
      ThumbnailElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailElement.fromJson(Map<String, dynamic> json) =>
      ThumbnailElement(
        url: json["url"] == null ? null : json["url"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
      };
}

class DescriptionSnippet {
  DescriptionSnippet({
    this.runs,
  });

  List<DescriptionSnippetRun> runs;

  factory DescriptionSnippet.fromRawJson(String str) =>
      DescriptionSnippet.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DescriptionSnippet.fromJson(Map<String, dynamic> json) =>
      DescriptionSnippet(
        runs: json["runs"] == null
            ? null
            : List<DescriptionSnippetRun>.from(
                json["runs"].map((x) => DescriptionSnippetRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
      };
}

class DescriptionSnippetRun {
  DescriptionSnippetRun({
    this.text,
    this.bold,
  });

  String text;
  bool bold;

  factory DescriptionSnippetRun.fromRawJson(String str) =>
      DescriptionSnippetRun.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DescriptionSnippetRun.fromJson(Map<String, dynamic> json) =>
      DescriptionSnippetRun(
        text: json["text"] == null ? null : json["text"],
        bold: json["bold"] == null ? null : json["bold"],
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text,
        "bold": bold == null ? null : bold,
      };
}

class LengthTextClass {
  LengthTextClass({
    this.accessibility,
    this.simpleText,
  });

  HotkeyAccessibilityLabelClass accessibility;
  String simpleText;

  factory LengthTextClass.fromRawJson(String str) =>
      LengthTextClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LengthTextClass.fromJson(Map<String, dynamic> json) =>
      LengthTextClass(
        accessibility: json["accessibility"] == null
            ? null
            : HotkeyAccessibilityLabelClass.fromJson(json["accessibility"]),
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
      );

  Map<String, dynamic> toJson() => {
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "simpleText": simpleText == null ? null : simpleText,
      };
}

class Text {
  Text({
    this.runs,
  });

  List<LongBylineTextRun> runs;

  factory Text.fromRawJson(String str) => Text.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Text.fromJson(Map<String, dynamic> json) => Text(
        runs: json["runs"] == null
            ? null
            : List<LongBylineTextRun>.from(
                json["runs"].map((x) => LongBylineTextRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
      };
}

class LongBylineTextRun {
  LongBylineTextRun({
    this.text,
    this.navigationEndpoint,
  });

  String text;
  Endpoint navigationEndpoint;

  factory LongBylineTextRun.fromRawJson(String str) =>
      LongBylineTextRun.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LongBylineTextRun.fromJson(Map<String, dynamic> json) =>
      LongBylineTextRun(
        text: json["text"] == null ? null : json["text"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : Endpoint.fromJson(json["navigationEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
      };
}

class Menu {
  Menu({
    this.menuRenderer,
  });

  MenuMenuRenderer menuRenderer;

  factory Menu.fromRawJson(String str) => Menu.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Menu.fromJson(Map<String, dynamic> json) => Menu(
        menuRenderer: json["menuRenderer"] == null
            ? null
            : MenuMenuRenderer.fromJson(json["menuRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "menuRenderer": menuRenderer == null ? null : menuRenderer.toJson(),
      };
}

class MenuMenuRenderer {
  MenuMenuRenderer({
    this.items,
    this.trackingParams,
    this.accessibility,
  });

  List<MenuRendererItem> items;
  String trackingParams;
  HotkeyAccessibilityLabelClass accessibility;

  factory MenuMenuRenderer.fromRawJson(String str) =>
      MenuMenuRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuMenuRenderer.fromJson(Map<String, dynamic> json) =>
      MenuMenuRenderer(
        items: json["items"] == null
            ? null
            : List<MenuRendererItem>.from(
                json["items"].map((x) => MenuRendererItem.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibility: json["accessibility"] == null
            ? null
            : HotkeyAccessibilityLabelClass.fromJson(json["accessibility"]),
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "accessibility": accessibility == null ? null : accessibility.toJson(),
      };
}

class MenuRendererItem {
  MenuRendererItem({
    this.menuServiceItemRenderer,
  });

  MenuServiceItemRenderer menuServiceItemRenderer;

  factory MenuRendererItem.fromRawJson(String str) =>
      MenuRendererItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuRendererItem.fromJson(Map<String, dynamic> json) =>
      MenuRendererItem(
        menuServiceItemRenderer: json["menuServiceItemRenderer"] == null
            ? null
            : MenuServiceItemRenderer.fromJson(json["menuServiceItemRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "menuServiceItemRenderer": menuServiceItemRenderer == null
            ? null
            : menuServiceItemRenderer.toJson(),
      };
}

class MenuServiceItemRenderer {
  MenuServiceItemRenderer({
    this.text,
    this.icon,
    this.serviceEndpoint,
    this.trackingParams,
    this.hasSeparator,
  });

  TitleClass text;
  IconImage icon;
  ServiceEndpoint serviceEndpoint;
  String trackingParams;
  bool hasSeparator;

  factory MenuServiceItemRenderer.fromRawJson(String str) =>
      MenuServiceItemRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuServiceItemRenderer.fromJson(Map<String, dynamic> json) =>
      MenuServiceItemRenderer(
        text: json["text"] == null ? null : TitleClass.fromJson(json["text"]),
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : ServiceEndpoint.fromJson(json["serviceEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        hasSeparator:
            json["hasSeparator"] == null ? null : json["hasSeparator"],
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
        "icon": icon == null ? null : icon.toJson(),
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "hasSeparator": hasSeparator == null ? null : hasSeparator,
      };
}

class IconImage {
  IconImage({
    this.iconType,
  });

  String iconType;

  factory IconImage.fromRawJson(String str) =>
      IconImage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IconImage.fromJson(Map<String, dynamic> json) => IconImage(
        iconType: json["iconType"] == null ? null : json["iconType"],
      );

  Map<String, dynamic> toJson() => {
        "iconType": iconType == null ? null : iconType,
      };
}

class ServiceEndpoint {
  ServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
    this.playlistEditEndpoint,
    this.addToPlaylistServiceEndpoint,
    this.getReportFormEndpoint,
  });

  String clickTrackingParams;
  ContinuationEndpointCommandMetadata commandMetadata;
  ServiceEndpointSignalServiceEndpoint signalServiceEndpoint;
  ServiceEndpointPlaylistEditEndpoint playlistEditEndpoint;
  AddToPlaylistServiceEndpoint addToPlaylistServiceEndpoint;
  GetReportFormEndpoint getReportFormEndpoint;

  factory ServiceEndpoint.fromRawJson(String str) =>
      ServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      ServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ContinuationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : ServiceEndpointSignalServiceEndpoint.fromJson(
                json["signalServiceEndpoint"]),
        playlistEditEndpoint: json["playlistEditEndpoint"] == null
            ? null
            : ServiceEndpointPlaylistEditEndpoint.fromJson(
                json["playlistEditEndpoint"]),
        addToPlaylistServiceEndpoint:
            json["addToPlaylistServiceEndpoint"] == null
                ? null
                : AddToPlaylistServiceEndpoint.fromJson(
                    json["addToPlaylistServiceEndpoint"]),
        getReportFormEndpoint: json["getReportFormEndpoint"] == null
            ? null
            : GetReportFormEndpoint.fromJson(json["getReportFormEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toJson(),
        "playlistEditEndpoint":
            playlistEditEndpoint == null ? null : playlistEditEndpoint.toJson(),
        "addToPlaylistServiceEndpoint": addToPlaylistServiceEndpoint == null
            ? null
            : addToPlaylistServiceEndpoint.toJson(),
        "getReportFormEndpoint": getReportFormEndpoint == null
            ? null
            : getReportFormEndpoint.toJson(),
      };
}

class AddToPlaylistServiceEndpoint {
  AddToPlaylistServiceEndpoint({
    this.videoId,
  });

  String videoId;

  factory AddToPlaylistServiceEndpoint.fromRawJson(String str) =>
      AddToPlaylistServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddToPlaylistServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      AddToPlaylistServiceEndpoint(
        videoId: json["videoId"] == null ? null : json["videoId"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
      };
}

class GetReportFormEndpoint {
  GetReportFormEndpoint({
    this.params,
  });

  String params;

  factory GetReportFormEndpoint.fromRawJson(String str) =>
      GetReportFormEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetReportFormEndpoint.fromJson(Map<String, dynamic> json) =>
      GetReportFormEndpoint(
        params: json["params"] == null ? null : json["params"],
      );

  Map<String, dynamic> toJson() => {
        "params": params == null ? null : params,
      };
}

class ServiceEndpointPlaylistEditEndpoint {
  ServiceEndpointPlaylistEditEndpoint({
    this.playlistId,
    this.actions,
  });

  PlaylistId playlistId;
  List<PurpleAction> actions;

  factory ServiceEndpointPlaylistEditEndpoint.fromRawJson(String str) =>
      ServiceEndpointPlaylistEditEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ServiceEndpointPlaylistEditEndpoint.fromJson(
          Map<String, dynamic> json) =>
      ServiceEndpointPlaylistEditEndpoint(
        playlistId: json["playlistId"] == null
            ? null
            : playlistIdValues.map[json["playlistId"]],
        actions: json["actions"] == null
            ? null
            : List<PurpleAction>.from(
                json["actions"].map((x) => PurpleAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "playlistId":
            playlistId == null ? null : playlistIdValues.reverse[playlistId],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class PurpleAction {
  PurpleAction({
    this.addedVideoId,
    this.action,
  });

  String addedVideoId;
  IndecentAction action;

  factory PurpleAction.fromRawJson(String str) =>
      PurpleAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleAction.fromJson(Map<String, dynamic> json) => PurpleAction(
        addedVideoId:
            json["addedVideoId"] == null ? null : json["addedVideoId"],
        action: json["action"] == null
            ? null
            : indecentActionValues.map[json["action"]],
      );

  Map<String, dynamic> toJson() => {
        "addedVideoId": addedVideoId == null ? null : addedVideoId,
        "action": action == null ? null : indecentActionValues.reverse[action],
      };
}

enum IndecentAction { ACTION_ADD_VIDEO }

final indecentActionValues =
    EnumValues({"ACTION_ADD_VIDEO": IndecentAction.ACTION_ADD_VIDEO});

enum PlaylistId { WL }

final playlistIdValues = EnumValues({"WL": PlaylistId.WL});

class ServiceEndpointSignalServiceEndpoint {
  ServiceEndpointSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  SignalEnum signal;
  List<FluffyAction> actions;

  factory ServiceEndpointSignalServiceEndpoint.fromRawJson(String str) =>
      ServiceEndpointSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ServiceEndpointSignalServiceEndpoint.fromJson(
          Map<String, dynamic> json) =>
      ServiceEndpointSignalServiceEndpoint(
        signal: json["signal"] == null
            ? null
            : signalEnumValues.map[json["signal"]],
        actions: json["actions"] == null
            ? null
            : List<FluffyAction>.from(
                json["actions"].map((x) => FluffyAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signalEnumValues.reverse[signal],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class FluffyAction {
  FluffyAction({
    this.clickTrackingParams,
    this.addToPlaylistCommand,
  });

  String clickTrackingParams;
  AddToPlaylistCommand addToPlaylistCommand;

  factory FluffyAction.fromRawJson(String str) =>
      FluffyAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyAction.fromJson(Map<String, dynamic> json) => FluffyAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        addToPlaylistCommand: json["addToPlaylistCommand"] == null
            ? null
            : AddToPlaylistCommand.fromJson(json["addToPlaylistCommand"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "addToPlaylistCommand":
            addToPlaylistCommand == null ? null : addToPlaylistCommand.toJson(),
      };
}

class AddToPlaylistCommand {
  AddToPlaylistCommand({
    this.openMiniplayer,
    this.videoId,
    this.listType,
    this.onCreateListCommand,
    this.videoIds,
  });

  bool openMiniplayer;
  String videoId;
  ListType listType;
  OnCreateListCommand onCreateListCommand;
  List<String> videoIds;

  factory AddToPlaylistCommand.fromRawJson(String str) =>
      AddToPlaylistCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddToPlaylistCommand.fromJson(Map<String, dynamic> json) =>
      AddToPlaylistCommand(
        openMiniplayer:
            json["openMiniplayer"] == null ? null : json["openMiniplayer"],
        videoId: json["videoId"] == null ? null : json["videoId"],
        listType: json["listType"] == null
            ? null
            : listTypeValues.map[json["listType"]],
        onCreateListCommand: json["onCreateListCommand"] == null
            ? null
            : OnCreateListCommand.fromJson(json["onCreateListCommand"]),
        videoIds: json["videoIds"] == null
            ? null
            : List<String>.from(json["videoIds"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "openMiniplayer": openMiniplayer == null ? null : openMiniplayer,
        "videoId": videoId == null ? null : videoId,
        "listType": listType == null ? null : listTypeValues.reverse[listType],
        "onCreateListCommand":
            onCreateListCommand == null ? null : onCreateListCommand.toJson(),
        "videoIds": videoIds == null
            ? null
            : List<dynamic>.from(videoIds.map((x) => x)),
      };
}

enum ListType { PLAYLIST_EDIT_LIST_TYPE_QUEUE }

final listTypeValues = EnumValues(
    {"PLAYLIST_EDIT_LIST_TYPE_QUEUE": ListType.PLAYLIST_EDIT_LIST_TYPE_QUEUE});

class OnCreateListCommand {
  OnCreateListCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.createPlaylistServiceEndpoint,
  });

  String clickTrackingParams;
  ContinuationEndpointCommandMetadata commandMetadata;
  CreatePlaylistServiceEndpoint createPlaylistServiceEndpoint;

  factory OnCreateListCommand.fromRawJson(String str) =>
      OnCreateListCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OnCreateListCommand.fromJson(Map<String, dynamic> json) =>
      OnCreateListCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ContinuationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        createPlaylistServiceEndpoint:
            json["createPlaylistServiceEndpoint"] == null
                ? null
                : CreatePlaylistServiceEndpoint.fromJson(
                    json["createPlaylistServiceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "createPlaylistServiceEndpoint": createPlaylistServiceEndpoint == null
            ? null
            : createPlaylistServiceEndpoint.toJson(),
      };
}

class CreatePlaylistServiceEndpoint {
  CreatePlaylistServiceEndpoint({
    this.videoIds,
    this.params,
  });

  List<String> videoIds;
  Params params;

  factory CreatePlaylistServiceEndpoint.fromRawJson(String str) =>
      CreatePlaylistServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreatePlaylistServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      CreatePlaylistServiceEndpoint(
        videoIds: json["videoIds"] == null
            ? null
            : List<String>.from(json["videoIds"].map((x) => x)),
        params:
            json["params"] == null ? null : paramsValues.map[json["params"]],
      );

  Map<String, dynamic> toJson() => {
        "videoIds": videoIds == null
            ? null
            : List<dynamic>.from(videoIds.map((x) => x)),
        "params": params == null ? null : paramsValues.reverse[params],
      };
}

enum Params { CAQ_3_D }

final paramsValues = EnumValues({"CAQ%3D": Params.CAQ_3_D});

enum SignalEnum { CLIENT_SIGNAL }

final signalEnumValues =
    EnumValues({"CLIENT_SIGNAL": SignalEnum.CLIENT_SIGNAL});

class TitleClass {
  TitleClass({
    this.runs,
  });

  List<TextRun> runs;

  factory TitleClass.fromRawJson(String str) =>
      TitleClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TitleClass.fromJson(Map<String, dynamic> json) => TitleClass(
        runs: json["runs"] == null
            ? null
            : List<TextRun>.from(json["runs"].map((x) => TextRun.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
      };
}

class TextRun {
  TextRun({
    this.text,
  });

  String text;

  factory TextRun.fromRawJson(String str) => TextRun.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TextRun.fromJson(Map<String, dynamic> json) => TextRun(
        text: json["text"] == null ? null : json["text"],
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text,
      };
}

class VideoRendererNavigationEndpoint {
  VideoRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  String clickTrackingParams;
  EndpointCommandMetadata commandMetadata;
  WatchEndpoint watchEndpoint;

  factory VideoRendererNavigationEndpoint.fromRawJson(String str) =>
      VideoRendererNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoRendererNavigationEndpoint.fromJson(Map<String, dynamic> json) =>
      VideoRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : EndpointCommandMetadata.fromJson(json["commandMetadata"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : WatchEndpoint.fromJson(json["watchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toJson(),
      };
}

class WatchEndpoint {
  WatchEndpoint({
    this.videoId,
    this.params,
  });

  String videoId;
  String params;

  factory WatchEndpoint.fromRawJson(String str) =>
      WatchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WatchEndpoint.fromJson(Map<String, dynamic> json) => WatchEndpoint(
        videoId: json["videoId"] == null ? null : json["videoId"],
        params: json["params"] == null ? null : json["params"],
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "params": params == null ? null : params,
      };
}

class PublishedTimeTextClass {
  PublishedTimeTextClass({
    this.simpleText,
  });

  String simpleText;

  factory PublishedTimeTextClass.fromRawJson(String str) =>
      PublishedTimeTextClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PublishedTimeTextClass.fromJson(Map<String, dynamic> json) =>
      PublishedTimeTextClass(
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
      );

  Map<String, dynamic> toJson() => {
        "simpleText": simpleText == null ? null : simpleText,
      };
}

class RichThumbnail {
  RichThumbnail({
    this.movingThumbnailRenderer,
  });

  MovingThumbnailRenderer movingThumbnailRenderer;

  factory RichThumbnail.fromRawJson(String str) =>
      RichThumbnail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RichThumbnail.fromJson(Map<String, dynamic> json) => RichThumbnail(
        movingThumbnailRenderer: json["movingThumbnailRenderer"] == null
            ? null
            : MovingThumbnailRenderer.fromJson(json["movingThumbnailRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "movingThumbnailRenderer": movingThumbnailRenderer == null
            ? null
            : movingThumbnailRenderer.toJson(),
      };
}

class MovingThumbnailRenderer {
  MovingThumbnailRenderer({
    this.movingThumbnailDetails,
    this.enableHoveredLogging,
    this.enableOverlay,
  });

  MovingThumbnailDetails movingThumbnailDetails;
  bool enableHoveredLogging;
  bool enableOverlay;

  factory MovingThumbnailRenderer.fromRawJson(String str) =>
      MovingThumbnailRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MovingThumbnailRenderer.fromJson(Map<String, dynamic> json) =>
      MovingThumbnailRenderer(
        movingThumbnailDetails: json["movingThumbnailDetails"] == null
            ? null
            : MovingThumbnailDetails.fromJson(json["movingThumbnailDetails"]),
        enableHoveredLogging: json["enableHoveredLogging"] == null
            ? null
            : json["enableHoveredLogging"],
        enableOverlay:
            json["enableOverlay"] == null ? null : json["enableOverlay"],
      );

  Map<String, dynamic> toJson() => {
        "movingThumbnailDetails": movingThumbnailDetails == null
            ? null
            : movingThumbnailDetails.toJson(),
        "enableHoveredLogging":
            enableHoveredLogging == null ? null : enableHoveredLogging,
        "enableOverlay": enableOverlay == null ? null : enableOverlay,
      };
}

class MovingThumbnailDetails {
  MovingThumbnailDetails({
    this.thumbnails,
    this.logAsMovingThumbnail,
  });

  List<ThumbnailElement> thumbnails;
  bool logAsMovingThumbnail;

  factory MovingThumbnailDetails.fromRawJson(String str) =>
      MovingThumbnailDetails.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MovingThumbnailDetails.fromJson(Map<String, dynamic> json) =>
      MovingThumbnailDetails(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<ThumbnailElement>.from(
                json["thumbnails"].map((x) => ThumbnailElement.fromJson(x))),
        logAsMovingThumbnail: json["logAsMovingThumbnail"] == null
            ? null
            : json["logAsMovingThumbnail"],
      );

  Map<String, dynamic> toJson() => {
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toJson())),
        "logAsMovingThumbnail":
            logAsMovingThumbnail == null ? null : logAsMovingThumbnail,
      };
}

class ThumbnailOverlay {
  ThumbnailOverlay({
    this.thumbnailOverlayTimeStatusRenderer,
    this.thumbnailOverlayToggleButtonRenderer,
    this.thumbnailOverlayNowPlayingRenderer,
  });

  ThumbnailOverlayTimeStatusRenderer thumbnailOverlayTimeStatusRenderer;
  ThumbnailOverlayToggleButtonRenderer thumbnailOverlayToggleButtonRenderer;
  ThumbnailOverlayNowPlayingRenderer thumbnailOverlayNowPlayingRenderer;

  factory ThumbnailOverlay.fromRawJson(String str) =>
      ThumbnailOverlay.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailOverlay.fromJson(Map<String, dynamic> json) =>
      ThumbnailOverlay(
        thumbnailOverlayTimeStatusRenderer:
            json["thumbnailOverlayTimeStatusRenderer"] == null
                ? null
                : ThumbnailOverlayTimeStatusRenderer.fromJson(
                    json["thumbnailOverlayTimeStatusRenderer"]),
        thumbnailOverlayToggleButtonRenderer:
            json["thumbnailOverlayToggleButtonRenderer"] == null
                ? null
                : ThumbnailOverlayToggleButtonRenderer.fromJson(
                    json["thumbnailOverlayToggleButtonRenderer"]),
        thumbnailOverlayNowPlayingRenderer:
            json["thumbnailOverlayNowPlayingRenderer"] == null
                ? null
                : ThumbnailOverlayNowPlayingRenderer.fromJson(
                    json["thumbnailOverlayNowPlayingRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnailOverlayTimeStatusRenderer":
            thumbnailOverlayTimeStatusRenderer == null
                ? null
                : thumbnailOverlayTimeStatusRenderer.toJson(),
        "thumbnailOverlayToggleButtonRenderer":
            thumbnailOverlayToggleButtonRenderer == null
                ? null
                : thumbnailOverlayToggleButtonRenderer.toJson(),
        "thumbnailOverlayNowPlayingRenderer":
            thumbnailOverlayNowPlayingRenderer == null
                ? null
                : thumbnailOverlayNowPlayingRenderer.toJson(),
      };
}

class ThumbnailOverlayNowPlayingRenderer {
  ThumbnailOverlayNowPlayingRenderer({
    this.text,
  });

  TitleClass text;

  factory ThumbnailOverlayNowPlayingRenderer.fromRawJson(String str) =>
      ThumbnailOverlayNowPlayingRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailOverlayNowPlayingRenderer.fromJson(
          Map<String, dynamic> json) =>
      ThumbnailOverlayNowPlayingRenderer(
        text: json["text"] == null ? null : TitleClass.fromJson(json["text"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
      };
}

class ThumbnailOverlayTimeStatusRenderer {
  ThumbnailOverlayTimeStatusRenderer({
    this.text,
    this.style,
  });

  LengthTextClass text;
  StyleEnum style;

  factory ThumbnailOverlayTimeStatusRenderer.fromRawJson(String str) =>
      ThumbnailOverlayTimeStatusRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailOverlayTimeStatusRenderer.fromJson(
          Map<String, dynamic> json) =>
      ThumbnailOverlayTimeStatusRenderer(
        text: json["text"] == null
            ? null
            : LengthTextClass.fromJson(json["text"]),
        style:
            json["style"] == null ? null : styleEnumValues.map[json["style"]],
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
        "style": style == null ? null : styleEnumValues.reverse[style],
      };
}

enum StyleEnum { DEFAULT }

final styleEnumValues = EnumValues({"DEFAULT": StyleEnum.DEFAULT});

class ThumbnailOverlayToggleButtonRenderer {
  ThumbnailOverlayToggleButtonRenderer({
    this.isToggled,
    this.untoggledIcon,
    this.toggledIcon,
    this.untoggledTooltip,
    this.toggledTooltip,
    this.untoggledServiceEndpoint,
    this.toggledServiceEndpoint,
    this.untoggledAccessibility,
    this.toggledAccessibility,
    this.trackingParams,
  });

  bool isToggled;
  IconImage untoggledIcon;
  IconImage toggledIcon;
  UntoggledTooltip untoggledTooltip;
  ToggledTooltip toggledTooltip;
  UntoggledServiceEndpoint untoggledServiceEndpoint;
  ToggledServiceEndpoint toggledServiceEndpoint;
  HotkeyAccessibilityLabelClass untoggledAccessibility;
  HotkeyAccessibilityLabelClass toggledAccessibility;
  String trackingParams;

  factory ThumbnailOverlayToggleButtonRenderer.fromRawJson(String str) =>
      ThumbnailOverlayToggleButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailOverlayToggleButtonRenderer.fromJson(
          Map<String, dynamic> json) =>
      ThumbnailOverlayToggleButtonRenderer(
        isToggled: json["isToggled"] == null ? null : json["isToggled"],
        untoggledIcon: json["untoggledIcon"] == null
            ? null
            : IconImage.fromJson(json["untoggledIcon"]),
        toggledIcon: json["toggledIcon"] == null
            ? null
            : IconImage.fromJson(json["toggledIcon"]),
        untoggledTooltip: json["untoggledTooltip"] == null
            ? null
            : untoggledTooltipValues.map[json["untoggledTooltip"]],
        toggledTooltip: json["toggledTooltip"] == null
            ? null
            : toggledTooltipValues.map[json["toggledTooltip"]],
        untoggledServiceEndpoint: json["untoggledServiceEndpoint"] == null
            ? null
            : UntoggledServiceEndpoint.fromJson(
                json["untoggledServiceEndpoint"]),
        toggledServiceEndpoint: json["toggledServiceEndpoint"] == null
            ? null
            : ToggledServiceEndpoint.fromJson(json["toggledServiceEndpoint"]),
        untoggledAccessibility: json["untoggledAccessibility"] == null
            ? null
            : HotkeyAccessibilityLabelClass.fromJson(
                json["untoggledAccessibility"]),
        toggledAccessibility: json["toggledAccessibility"] == null
            ? null
            : HotkeyAccessibilityLabelClass.fromJson(
                json["toggledAccessibility"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "isToggled": isToggled == null ? null : isToggled,
        "untoggledIcon": untoggledIcon == null ? null : untoggledIcon.toJson(),
        "toggledIcon": toggledIcon == null ? null : toggledIcon.toJson(),
        "untoggledTooltip": untoggledTooltip == null
            ? null
            : untoggledTooltipValues.reverse[untoggledTooltip],
        "toggledTooltip": toggledTooltip == null
            ? null
            : toggledTooltipValues.reverse[toggledTooltip],
        "untoggledServiceEndpoint": untoggledServiceEndpoint == null
            ? null
            : untoggledServiceEndpoint.toJson(),
        "toggledServiceEndpoint": toggledServiceEndpoint == null
            ? null
            : toggledServiceEndpoint.toJson(),
        "untoggledAccessibility": untoggledAccessibility == null
            ? null
            : untoggledAccessibility.toJson(),
        "toggledAccessibility":
            toggledAccessibility == null ? null : toggledAccessibility.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class ToggledServiceEndpoint {
  ToggledServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.playlistEditEndpoint,
  });

  String clickTrackingParams;
  ContinuationEndpointCommandMetadata commandMetadata;
  ToggledServiceEndpointPlaylistEditEndpoint playlistEditEndpoint;

  factory ToggledServiceEndpoint.fromRawJson(String str) =>
      ToggledServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ToggledServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      ToggledServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ContinuationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        playlistEditEndpoint: json["playlistEditEndpoint"] == null
            ? null
            : ToggledServiceEndpointPlaylistEditEndpoint.fromJson(
                json["playlistEditEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "playlistEditEndpoint":
            playlistEditEndpoint == null ? null : playlistEditEndpoint.toJson(),
      };
}

class ToggledServiceEndpointPlaylistEditEndpoint {
  ToggledServiceEndpointPlaylistEditEndpoint({
    this.playlistId,
    this.actions,
  });

  PlaylistId playlistId;
  List<TentacledAction> actions;

  factory ToggledServiceEndpointPlaylistEditEndpoint.fromRawJson(String str) =>
      ToggledServiceEndpointPlaylistEditEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ToggledServiceEndpointPlaylistEditEndpoint.fromJson(
          Map<String, dynamic> json) =>
      ToggledServiceEndpointPlaylistEditEndpoint(
        playlistId: json["playlistId"] == null
            ? null
            : playlistIdValues.map[json["playlistId"]],
        actions: json["actions"] == null
            ? null
            : List<TentacledAction>.from(
                json["actions"].map((x) => TentacledAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "playlistId":
            playlistId == null ? null : playlistIdValues.reverse[playlistId],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class TentacledAction {
  TentacledAction({
    this.action,
    this.removedVideoId,
  });

  HilariousAction action;
  String removedVideoId;

  factory TentacledAction.fromRawJson(String str) =>
      TentacledAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledAction.fromJson(Map<String, dynamic> json) =>
      TentacledAction(
        action: json["action"] == null
            ? null
            : hilariousActionValues.map[json["action"]],
        removedVideoId:
            json["removedVideoId"] == null ? null : json["removedVideoId"],
      );

  Map<String, dynamic> toJson() => {
        "action": action == null ? null : hilariousActionValues.reverse[action],
        "removedVideoId": removedVideoId == null ? null : removedVideoId,
      };
}

enum HilariousAction { ACTION_REMOVE_VIDEO_BY_VIDEO_ID }

final hilariousActionValues = EnumValues({
  "ACTION_REMOVE_VIDEO_BY_VIDEO_ID":
      HilariousAction.ACTION_REMOVE_VIDEO_BY_VIDEO_ID
});

enum ToggledTooltip { EKLENDI }

final toggledTooltipValues = EnumValues({"Eklendi": ToggledTooltip.EKLENDI});

class UntoggledServiceEndpoint {
  UntoggledServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.playlistEditEndpoint,
    this.signalServiceEndpoint,
  });

  String clickTrackingParams;
  ContinuationEndpointCommandMetadata commandMetadata;
  ServiceEndpointPlaylistEditEndpoint playlistEditEndpoint;
  ServiceEndpointSignalServiceEndpoint signalServiceEndpoint;

  factory UntoggledServiceEndpoint.fromRawJson(String str) =>
      UntoggledServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UntoggledServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      UntoggledServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ContinuationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        playlistEditEndpoint: json["playlistEditEndpoint"] == null
            ? null
            : ServiceEndpointPlaylistEditEndpoint.fromJson(
                json["playlistEditEndpoint"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : ServiceEndpointSignalServiceEndpoint.fromJson(
                json["signalServiceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "playlistEditEndpoint":
            playlistEditEndpoint == null ? null : playlistEditEndpoint.toJson(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toJson(),
      };
}

enum UntoggledTooltip { DAHA_SONRA_IZLE, SRAYA_EKLE }

final untoggledTooltipValues = EnumValues({
  "Daha sonra izle": UntoggledTooltip.DAHA_SONRA_IZLE,
  "Sıraya ekle": UntoggledTooltip.SRAYA_EKLE
});

class PurpleTitle {
  PurpleTitle({
    this.runs,
    this.accessibility,
  });

  List<TextRun> runs;
  HotkeyAccessibilityLabelClass accessibility;

  factory PurpleTitle.fromRawJson(String str) =>
      PurpleTitle.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleTitle.fromJson(Map<String, dynamic> json) => PurpleTitle(
        runs: json["runs"] == null
            ? null
            : List<TextRun>.from(json["runs"].map((x) => TextRun.fromJson(x))),
        accessibility: json["accessibility"] == null
            ? null
            : HotkeyAccessibilityLabelClass.fromJson(json["accessibility"]),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
      };
}

class SubMenu {
  SubMenu({
    this.searchSubMenuRenderer,
  });

  SearchSubMenuRenderer searchSubMenuRenderer;

  factory SubMenu.fromRawJson(String str) => SubMenu.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubMenu.fromJson(Map<String, dynamic> json) => SubMenu(
        searchSubMenuRenderer: json["searchSubMenuRenderer"] == null
            ? null
            : SearchSubMenuRenderer.fromJson(json["searchSubMenuRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "searchSubMenuRenderer": searchSubMenuRenderer == null
            ? null
            : searchSubMenuRenderer.toJson(),
      };
}

class SearchSubMenuRenderer {
  SearchSubMenuRenderer({
    this.title,
    this.groups,
    this.clearAllText,
    this.clearAllEndpoint,
    this.trackingParams,
    this.button,
  });

  TitleClass title;
  List<Group> groups;
  TitleClass clearAllText;
  SearchEndpointClass clearAllEndpoint;
  String trackingParams;
  Button button;

  factory SearchSubMenuRenderer.fromRawJson(String str) =>
      SearchSubMenuRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchSubMenuRenderer.fromJson(Map<String, dynamic> json) =>
      SearchSubMenuRenderer(
        title:
            json["title"] == null ? null : TitleClass.fromJson(json["title"]),
        groups: json["groups"] == null
            ? null
            : List<Group>.from(json["groups"].map((x) => Group.fromJson(x))),
        clearAllText: json["clearAllText"] == null
            ? null
            : TitleClass.fromJson(json["clearAllText"]),
        clearAllEndpoint: json["clearAllEndpoint"] == null
            ? null
            : SearchEndpointClass.fromJson(json["clearAllEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        button: json["button"] == null ? null : Button.fromJson(json["button"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title.toJson(),
        "groups": groups == null
            ? null
            : List<dynamic>.from(groups.map((x) => x.toJson())),
        "clearAllText": clearAllText == null ? null : clearAllText.toJson(),
        "clearAllEndpoint":
            clearAllEndpoint == null ? null : clearAllEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "button": button == null ? null : button.toJson(),
      };
}

class Button {
  Button({
    this.toggleButtonRenderer,
  });

  ToggleButtonRenderer toggleButtonRenderer;

  factory Button.fromRawJson(String str) => Button.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Button.fromJson(Map<String, dynamic> json) => Button(
        toggleButtonRenderer: json["toggleButtonRenderer"] == null
            ? null
            : ToggleButtonRenderer.fromJson(json["toggleButtonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "toggleButtonRenderer":
            toggleButtonRenderer == null ? null : toggleButtonRenderer.toJson(),
      };
}

class ToggleButtonRenderer {
  ToggleButtonRenderer({
    this.style,
    this.isToggled,
    this.isDisabled,
    this.defaultIcon,
    this.defaultText,
    this.accessibility,
    this.trackingParams,
    this.defaultTooltip,
    this.toggledTooltip,
    this.toggledStyle,
    this.accessibilityData,
  });

  StyleClass style;
  bool isToggled;
  bool isDisabled;
  IconImage defaultIcon;
  TitleClass defaultText;
  MetadataBadgeRendererAccessibilityData accessibility;
  String trackingParams;
  String defaultTooltip;
  String toggledTooltip;
  StyleClass toggledStyle;
  HotkeyAccessibilityLabelClass accessibilityData;

  factory ToggleButtonRenderer.fromRawJson(String str) =>
      ToggleButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ToggleButtonRenderer.fromJson(Map<String, dynamic> json) =>
      ToggleButtonRenderer(
        style:
            json["style"] == null ? null : StyleClass.fromJson(json["style"]),
        isToggled: json["isToggled"] == null ? null : json["isToggled"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        defaultIcon: json["defaultIcon"] == null
            ? null
            : IconImage.fromJson(json["defaultIcon"]),
        defaultText: json["defaultText"] == null
            ? null
            : TitleClass.fromJson(json["defaultText"]),
        accessibility: json["accessibility"] == null
            ? null
            : MetadataBadgeRendererAccessibilityData.fromJson(
                json["accessibility"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        defaultTooltip:
            json["defaultTooltip"] == null ? null : json["defaultTooltip"],
        toggledTooltip:
            json["toggledTooltip"] == null ? null : json["toggledTooltip"],
        toggledStyle: json["toggledStyle"] == null
            ? null
            : StyleClass.fromJson(json["toggledStyle"]),
        accessibilityData: json["accessibilityData"] == null
            ? null
            : HotkeyAccessibilityLabelClass.fromJson(json["accessibilityData"]),
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style.toJson(),
        "isToggled": isToggled == null ? null : isToggled,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "defaultIcon": defaultIcon == null ? null : defaultIcon.toJson(),
        "defaultText": defaultText == null ? null : defaultText.toJson(),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "defaultTooltip": defaultTooltip == null ? null : defaultTooltip,
        "toggledTooltip": toggledTooltip == null ? null : toggledTooltip,
        "toggledStyle": toggledStyle == null ? null : toggledStyle.toJson(),
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toJson(),
      };
}

class StyleClass {
  StyleClass({
    this.styleType,
  });

  String styleType;

  factory StyleClass.fromRawJson(String str) =>
      StyleClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StyleClass.fromJson(Map<String, dynamic> json) => StyleClass(
        styleType: json["styleType"] == null ? null : json["styleType"],
      );

  Map<String, dynamic> toJson() => {
        "styleType": styleType == null ? null : styleType,
      };
}

class SearchEndpointClass {
  SearchEndpointClass({
    this.clickTrackingParams,
    this.commandMetadata,
    this.searchEndpoint,
  });

  String clickTrackingParams;
  EndpointCommandMetadata commandMetadata;
  SearchEndpointSearchEndpoint searchEndpoint;

  factory SearchEndpointClass.fromRawJson(String str) =>
      SearchEndpointClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchEndpointClass.fromJson(Map<String, dynamic> json) =>
      SearchEndpointClass(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : EndpointCommandMetadata.fromJson(json["commandMetadata"]),
        searchEndpoint: json["searchEndpoint"] == null
            ? null
            : SearchEndpointSearchEndpoint.fromJson(json["searchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "searchEndpoint":
            searchEndpoint == null ? null : searchEndpoint.toJson(),
      };
}

class SearchEndpointSearchEndpoint {
  SearchEndpointSearchEndpoint({
    this.query,
  });

  String query;

  factory SearchEndpointSearchEndpoint.fromRawJson(String str) =>
      SearchEndpointSearchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchEndpointSearchEndpoint.fromJson(Map<String, dynamic> json) =>
      SearchEndpointSearchEndpoint(
        query: json["query"] == null ? null : json["query"],
      );

  Map<String, dynamic> toJson() => {
        "query": query == null ? null : query,
      };
}

class Group {
  Group({
    this.searchFilterGroupRenderer,
  });

  SearchFilterGroupRenderer searchFilterGroupRenderer;

  factory Group.fromRawJson(String str) => Group.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Group.fromJson(Map<String, dynamic> json) => Group(
        searchFilterGroupRenderer: json["searchFilterGroupRenderer"] == null
            ? null
            : SearchFilterGroupRenderer.fromJson(
                json["searchFilterGroupRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "searchFilterGroupRenderer": searchFilterGroupRenderer == null
            ? null
            : searchFilterGroupRenderer.toJson(),
      };
}

class SearchFilterGroupRenderer {
  SearchFilterGroupRenderer({
    this.title,
    this.filters,
    this.trackingParams,
  });

  PublishedTimeTextClass title;
  List<Filter> filters;
  String trackingParams;

  factory SearchFilterGroupRenderer.fromRawJson(String str) =>
      SearchFilterGroupRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchFilterGroupRenderer.fromJson(Map<String, dynamic> json) =>
      SearchFilterGroupRenderer(
        title: json["title"] == null
            ? null
            : PublishedTimeTextClass.fromJson(json["title"]),
        filters: json["filters"] == null
            ? null
            : List<Filter>.from(json["filters"].map((x) => Filter.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title.toJson(),
        "filters": filters == null
            ? null
            : List<dynamic>.from(filters.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class Filter {
  Filter({
    this.searchFilterRenderer,
  });

  SearchFilterRenderer searchFilterRenderer;

  factory Filter.fromRawJson(String str) => Filter.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Filter.fromJson(Map<String, dynamic> json) => Filter(
        searchFilterRenderer: json["searchFilterRenderer"] == null
            ? null
            : SearchFilterRenderer.fromJson(json["searchFilterRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "searchFilterRenderer":
            searchFilterRenderer == null ? null : searchFilterRenderer.toJson(),
      };
}

class SearchFilterRenderer {
  SearchFilterRenderer({
    this.label,
    this.navigationEndpoint,
    this.tooltip,
    this.trackingParams,
    this.status,
  });

  PublishedTimeTextClass label;
  SearchFilterRendererNavigationEndpoint navigationEndpoint;
  String tooltip;
  String trackingParams;
  String status;

  factory SearchFilterRenderer.fromRawJson(String str) =>
      SearchFilterRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchFilterRenderer.fromJson(Map<String, dynamic> json) =>
      SearchFilterRenderer(
        label: json["label"] == null
            ? null
            : PublishedTimeTextClass.fromJson(json["label"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : SearchFilterRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        status: json["status"] == null ? null : json["status"],
      );

  Map<String, dynamic> toJson() => {
        "label": label == null ? null : label.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "tooltip": tooltip == null ? null : tooltip,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "status": status == null ? null : status,
      };
}

class SearchFilterRendererNavigationEndpoint {
  SearchFilterRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.searchEndpoint,
  });

  String clickTrackingParams;
  EndpointCommandMetadata commandMetadata;
  NavigationEndpointSearchEndpoint searchEndpoint;

  factory SearchFilterRendererNavigationEndpoint.fromRawJson(String str) =>
      SearchFilterRendererNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SearchFilterRendererNavigationEndpoint.fromJson(
          Map<String, dynamic> json) =>
      SearchFilterRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : EndpointCommandMetadata.fromJson(json["commandMetadata"]),
        searchEndpoint: json["searchEndpoint"] == null
            ? null
            : NavigationEndpointSearchEndpoint.fromJson(json["searchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "searchEndpoint":
            searchEndpoint == null ? null : searchEndpoint.toJson(),
      };
}

class NavigationEndpointSearchEndpoint {
  NavigationEndpointSearchEndpoint({
    this.query,
    this.params,
  });

  Query query;
  String params;

  factory NavigationEndpointSearchEndpoint.fromRawJson(String str) =>
      NavigationEndpointSearchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NavigationEndpointSearchEndpoint.fromJson(
          Map<String, dynamic> json) =>
      NavigationEndpointSearchEndpoint(
        query: json["query"] == null ? null : queryValues.map[json["query"]],
        params: json["params"] == null ? null : json["params"],
      );

  Map<String, dynamic> toJson() => {
        "query": query == null ? null : queryValues.reverse[query],
        "params": params == null ? null : params,
      };
}

enum Query { REDKIT }

final queryValues = EnumValues({"redkit": Query.REDKIT});

class ResponseContext {
  ResponseContext({
    this.serviceTrackingParams,
    this.webResponseContextExtensionData,
  });

  List<ServiceTrackingParam> serviceTrackingParams;
  WebResponseContextExtensionData webResponseContextExtensionData;

  factory ResponseContext.fromRawJson(String str) =>
      ResponseContext.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResponseContext.fromJson(Map<String, dynamic> json) =>
      ResponseContext(
        serviceTrackingParams: json["serviceTrackingParams"] == null
            ? null
            : List<ServiceTrackingParam>.from(json["serviceTrackingParams"]
                .map((x) => ServiceTrackingParam.fromJson(x))),
        webResponseContextExtensionData:
            json["webResponseContextExtensionData"] == null
                ? null
                : WebResponseContextExtensionData.fromJson(
                    json["webResponseContextExtensionData"]),
      );

  Map<String, dynamic> toJson() => {
        "serviceTrackingParams": serviceTrackingParams == null
            ? null
            : List<dynamic>.from(serviceTrackingParams.map((x) => x.toJson())),
        "webResponseContextExtensionData":
            webResponseContextExtensionData == null
                ? null
                : webResponseContextExtensionData.toJson(),
      };
}

class ServiceTrackingParam {
  ServiceTrackingParam({
    this.service,
    this.params,
  });

  String service;
  List<Param> params;

  factory ServiceTrackingParam.fromRawJson(String str) =>
      ServiceTrackingParam.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ServiceTrackingParam.fromJson(Map<String, dynamic> json) =>
      ServiceTrackingParam(
        service: json["service"] == null ? null : json["service"],
        params: json["params"] == null
            ? null
            : List<Param>.from(json["params"].map((x) => Param.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "service": service == null ? null : service,
        "params": params == null
            ? null
            : List<dynamic>.from(params.map((x) => x.toJson())),
      };
}

class Param {
  Param({
    this.key,
    this.value,
  });

  String key;
  String value;

  factory Param.fromRawJson(String str) => Param.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Param.fromJson(Map<String, dynamic> json) => Param(
        key: json["key"] == null ? null : json["key"],
        value: json["value"] == null ? null : json["value"],
      );

  Map<String, dynamic> toJson() => {
        "key": key == null ? null : key,
        "value": value == null ? null : value,
      };
}

class WebResponseContextExtensionData {
  WebResponseContextExtensionData({
    this.ytConfigData,
    this.hasDecorated,
  });

  YtConfigData ytConfigData;
  bool hasDecorated;

  factory WebResponseContextExtensionData.fromRawJson(String str) =>
      WebResponseContextExtensionData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WebResponseContextExtensionData.fromJson(Map<String, dynamic> json) =>
      WebResponseContextExtensionData(
        ytConfigData: json["ytConfigData"] == null
            ? null
            : YtConfigData.fromJson(json["ytConfigData"]),
        hasDecorated:
            json["hasDecorated"] == null ? null : json["hasDecorated"],
      );

  Map<String, dynamic> toJson() => {
        "ytConfigData": ytConfigData == null ? null : ytConfigData.toJson(),
        "hasDecorated": hasDecorated == null ? null : hasDecorated,
      };
}

class YtConfigData {
  YtConfigData({
    this.visitorData,
    this.sessionIndex,
    this.rootVisualElementType,
  });

  String visitorData;
  int sessionIndex;
  int rootVisualElementType;

  factory YtConfigData.fromRawJson(String str) =>
      YtConfigData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory YtConfigData.fromJson(Map<String, dynamic> json) => YtConfigData(
        visitorData: json["visitorData"] == null ? null : json["visitorData"],
        sessionIndex:
            json["sessionIndex"] == null ? null : json["sessionIndex"],
        rootVisualElementType: json["rootVisualElementType"] == null
            ? null
            : json["rootVisualElementType"],
      );

  Map<String, dynamic> toJson() => {
        "visitorData": visitorData == null ? null : visitorData,
        "sessionIndex": sessionIndex == null ? null : sessionIndex,
        "rootVisualElementType":
            rootVisualElementType == null ? null : rootVisualElementType,
      };
}

class Topbar {
  Topbar({
    this.desktopTopbarRenderer,
  });

  DesktopTopbarRenderer desktopTopbarRenderer;

  factory Topbar.fromRawJson(String str) => Topbar.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Topbar.fromJson(Map<String, dynamic> json) => Topbar(
        desktopTopbarRenderer: json["desktopTopbarRenderer"] == null
            ? null
            : DesktopTopbarRenderer.fromJson(json["desktopTopbarRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "desktopTopbarRenderer": desktopTopbarRenderer == null
            ? null
            : desktopTopbarRenderer.toJson(),
      };
}

class DesktopTopbarRenderer {
  DesktopTopbarRenderer({
    this.logo,
    this.searchbox,
    this.trackingParams,
    this.countryCode,
    this.topbarButtons,
    this.hotkeyDialog,
    this.backButton,
    this.forwardButton,
    this.a11YSkipNavigationButton,
  });

  Logo logo;
  Searchbox searchbox;
  String trackingParams;
  String countryCode;
  List<TopbarButton> topbarButtons;
  HotkeyDialog hotkeyDialog;
  BackButtonClass backButton;
  BackButtonClass forwardButton;
  A11YSkipNavigationButtonClass a11YSkipNavigationButton;

  factory DesktopTopbarRenderer.fromRawJson(String str) =>
      DesktopTopbarRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DesktopTopbarRenderer.fromJson(Map<String, dynamic> json) =>
      DesktopTopbarRenderer(
        logo: json["logo"] == null ? null : Logo.fromJson(json["logo"]),
        searchbox: json["searchbox"] == null
            ? null
            : Searchbox.fromJson(json["searchbox"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        countryCode: json["countryCode"] == null ? null : json["countryCode"],
        topbarButtons: json["topbarButtons"] == null
            ? null
            : List<TopbarButton>.from(
                json["topbarButtons"].map((x) => TopbarButton.fromJson(x))),
        hotkeyDialog: json["hotkeyDialog"] == null
            ? null
            : HotkeyDialog.fromJson(json["hotkeyDialog"]),
        backButton: json["backButton"] == null
            ? null
            : BackButtonClass.fromJson(json["backButton"]),
        forwardButton: json["forwardButton"] == null
            ? null
            : BackButtonClass.fromJson(json["forwardButton"]),
        a11YSkipNavigationButton: json["a11ySkipNavigationButton"] == null
            ? null
            : A11YSkipNavigationButtonClass.fromJson(
                json["a11ySkipNavigationButton"]),
      );

  Map<String, dynamic> toJson() => {
        "logo": logo == null ? null : logo.toJson(),
        "searchbox": searchbox == null ? null : searchbox.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "countryCode": countryCode == null ? null : countryCode,
        "topbarButtons": topbarButtons == null
            ? null
            : List<dynamic>.from(topbarButtons.map((x) => x.toJson())),
        "hotkeyDialog": hotkeyDialog == null ? null : hotkeyDialog.toJson(),
        "backButton": backButton == null ? null : backButton.toJson(),
        "forwardButton": forwardButton == null ? null : forwardButton.toJson(),
        "a11ySkipNavigationButton": a11YSkipNavigationButton == null
            ? null
            : a11YSkipNavigationButton.toJson(),
      };
}

class A11YSkipNavigationButtonClass {
  A11YSkipNavigationButtonClass({
    this.buttonRenderer,
  });

  A11YSkipNavigationButtonButtonRenderer buttonRenderer;

  factory A11YSkipNavigationButtonClass.fromRawJson(String str) =>
      A11YSkipNavigationButtonClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory A11YSkipNavigationButtonClass.fromJson(Map<String, dynamic> json) =>
      A11YSkipNavigationButtonClass(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : A11YSkipNavigationButtonButtonRenderer.fromJson(
                json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toJson(),
      };
}

class A11YSkipNavigationButtonButtonRenderer {
  A11YSkipNavigationButtonButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.text,
    this.trackingParams,
    this.command,
  });

  String style;
  String size;
  bool isDisabled;
  TitleClass text;
  String trackingParams;
  Command command;

  factory A11YSkipNavigationButtonButtonRenderer.fromRawJson(String str) =>
      A11YSkipNavigationButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory A11YSkipNavigationButtonButtonRenderer.fromJson(
          Map<String, dynamic> json) =>
      A11YSkipNavigationButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : TitleClass.fromJson(json["text"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        command:
            json["command"] == null ? null : Command.fromJson(json["command"]),
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "command": command == null ? null : command.toJson(),
      };
}

class Command {
  Command({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  String clickTrackingParams;
  CommandCommandMetadata commandMetadata;
  CommandSignalServiceEndpoint signalServiceEndpoint;

  factory Command.fromRawJson(String str) => Command.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Command.fromJson(Map<String, dynamic> json) => Command(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : CommandCommandMetadata.fromJson(json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : CommandSignalServiceEndpoint.fromJson(
                json["signalServiceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toJson(),
      };
}

class CommandCommandMetadata {
  CommandCommandMetadata({
    this.webCommandMetadata,
  });

  TentacledWebCommandMetadata webCommandMetadata;

  factory CommandCommandMetadata.fromRawJson(String str) =>
      CommandCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommandCommandMetadata.fromJson(Map<String, dynamic> json) =>
      CommandCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : TentacledWebCommandMetadata.fromJson(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toJson() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toJson(),
      };
}

class TentacledWebCommandMetadata {
  TentacledWebCommandMetadata({
    this.sendPost,
  });

  bool sendPost;

  factory TentacledWebCommandMetadata.fromRawJson(String str) =>
      TentacledWebCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledWebCommandMetadata.fromJson(Map<String, dynamic> json) =>
      TentacledWebCommandMetadata(
        sendPost: json["sendPost"] == null ? null : json["sendPost"],
      );

  Map<String, dynamic> toJson() => {
        "sendPost": sendPost == null ? null : sendPost,
      };
}

class CommandSignalServiceEndpoint {
  CommandSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  SignalEnum signal;
  List<StickyAction> actions;

  factory CommandSignalServiceEndpoint.fromRawJson(String str) =>
      CommandSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommandSignalServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      CommandSignalServiceEndpoint(
        signal: json["signal"] == null
            ? null
            : signalEnumValues.map[json["signal"]],
        actions: json["actions"] == null
            ? null
            : List<StickyAction>.from(
                json["actions"].map((x) => StickyAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signalEnumValues.reverse[signal],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class StickyAction {
  StickyAction({
    this.clickTrackingParams,
    this.signalAction,
  });

  String clickTrackingParams;
  Signal signalAction;

  factory StickyAction.fromRawJson(String str) =>
      StickyAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyAction.fromJson(Map<String, dynamic> json) => StickyAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        signalAction: json["signalAction"] == null
            ? null
            : Signal.fromJson(json["signalAction"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "signalAction": signalAction == null ? null : signalAction.toJson(),
      };
}

class Signal {
  Signal({
    this.signal,
  });

  String signal;

  factory Signal.fromRawJson(String str) => Signal.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Signal.fromJson(Map<String, dynamic> json) => Signal(
        signal: json["signal"] == null ? null : json["signal"],
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signal,
      };
}

class BackButtonClass {
  BackButtonClass({
    this.buttonRenderer,
  });

  BackButtonButtonRenderer buttonRenderer;

  factory BackButtonClass.fromRawJson(String str) =>
      BackButtonClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BackButtonClass.fromJson(Map<String, dynamic> json) =>
      BackButtonClass(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : BackButtonButtonRenderer.fromJson(json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toJson(),
      };
}

class BackButtonButtonRenderer {
  BackButtonButtonRenderer({
    this.trackingParams,
    this.command,
  });

  String trackingParams;
  Command command;

  factory BackButtonButtonRenderer.fromRawJson(String str) =>
      BackButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BackButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      BackButtonButtonRenderer(
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        command:
            json["command"] == null ? null : Command.fromJson(json["command"]),
      );

  Map<String, dynamic> toJson() => {
        "trackingParams": trackingParams == null ? null : trackingParams,
        "command": command == null ? null : command.toJson(),
      };
}

class HotkeyDialog {
  HotkeyDialog({
    this.hotkeyDialogRenderer,
  });

  HotkeyDialogRenderer hotkeyDialogRenderer;

  factory HotkeyDialog.fromRawJson(String str) =>
      HotkeyDialog.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyDialog.fromJson(Map<String, dynamic> json) => HotkeyDialog(
        hotkeyDialogRenderer: json["hotkeyDialogRenderer"] == null
            ? null
            : HotkeyDialogRenderer.fromJson(json["hotkeyDialogRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "hotkeyDialogRenderer":
            hotkeyDialogRenderer == null ? null : hotkeyDialogRenderer.toJson(),
      };
}

class HotkeyDialogRenderer {
  HotkeyDialogRenderer({
    this.title,
    this.sections,
    this.dismissButton,
    this.trackingParams,
  });

  TitleClass title;
  List<HotkeyDialogRendererSection> sections;
  A11YSkipNavigationButtonClass dismissButton;
  String trackingParams;

  factory HotkeyDialogRenderer.fromRawJson(String str) =>
      HotkeyDialogRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyDialogRenderer.fromJson(Map<String, dynamic> json) =>
      HotkeyDialogRenderer(
        title:
            json["title"] == null ? null : TitleClass.fromJson(json["title"]),
        sections: json["sections"] == null
            ? null
            : List<HotkeyDialogRendererSection>.from(json["sections"]
                .map((x) => HotkeyDialogRendererSection.fromJson(x))),
        dismissButton: json["dismissButton"] == null
            ? null
            : A11YSkipNavigationButtonClass.fromJson(json["dismissButton"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title.toJson(),
        "sections": sections == null
            ? null
            : List<dynamic>.from(sections.map((x) => x.toJson())),
        "dismissButton": dismissButton == null ? null : dismissButton.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class HotkeyDialogRendererSection {
  HotkeyDialogRendererSection({
    this.hotkeyDialogSectionRenderer,
  });

  HotkeyDialogSectionRenderer hotkeyDialogSectionRenderer;

  factory HotkeyDialogRendererSection.fromRawJson(String str) =>
      HotkeyDialogRendererSection.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyDialogRendererSection.fromJson(Map<String, dynamic> json) =>
      HotkeyDialogRendererSection(
        hotkeyDialogSectionRenderer: json["hotkeyDialogSectionRenderer"] == null
            ? null
            : HotkeyDialogSectionRenderer.fromJson(
                json["hotkeyDialogSectionRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "hotkeyDialogSectionRenderer": hotkeyDialogSectionRenderer == null
            ? null
            : hotkeyDialogSectionRenderer.toJson(),
      };
}

class HotkeyDialogSectionRenderer {
  HotkeyDialogSectionRenderer({
    this.title,
    this.options,
  });

  TitleClass title;
  List<Option> options;

  factory HotkeyDialogSectionRenderer.fromRawJson(String str) =>
      HotkeyDialogSectionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyDialogSectionRenderer.fromJson(Map<String, dynamic> json) =>
      HotkeyDialogSectionRenderer(
        title:
            json["title"] == null ? null : TitleClass.fromJson(json["title"]),
        options: json["options"] == null
            ? null
            : List<Option>.from(json["options"].map((x) => Option.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title.toJson(),
        "options": options == null
            ? null
            : List<dynamic>.from(options.map((x) => x.toJson())),
      };
}

class Option {
  Option({
    this.hotkeyDialogSectionOptionRenderer,
  });

  HotkeyDialogSectionOptionRenderer hotkeyDialogSectionOptionRenderer;

  factory Option.fromRawJson(String str) => Option.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Option.fromJson(Map<String, dynamic> json) => Option(
        hotkeyDialogSectionOptionRenderer:
            json["hotkeyDialogSectionOptionRenderer"] == null
                ? null
                : HotkeyDialogSectionOptionRenderer.fromJson(
                    json["hotkeyDialogSectionOptionRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "hotkeyDialogSectionOptionRenderer":
            hotkeyDialogSectionOptionRenderer == null
                ? null
                : hotkeyDialogSectionOptionRenderer.toJson(),
      };
}

class HotkeyDialogSectionOptionRenderer {
  HotkeyDialogSectionOptionRenderer({
    this.label,
    this.hotkey,
    this.hotkeyAccessibilityLabel,
  });

  TitleClass label;
  String hotkey;
  HotkeyAccessibilityLabelClass hotkeyAccessibilityLabel;

  factory HotkeyDialogSectionOptionRenderer.fromRawJson(String str) =>
      HotkeyDialogSectionOptionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HotkeyDialogSectionOptionRenderer.fromJson(
          Map<String, dynamic> json) =>
      HotkeyDialogSectionOptionRenderer(
        label:
            json["label"] == null ? null : TitleClass.fromJson(json["label"]),
        hotkey: json["hotkey"] == null ? null : json["hotkey"],
        hotkeyAccessibilityLabel: json["hotkeyAccessibilityLabel"] == null
            ? null
            : HotkeyAccessibilityLabelClass.fromJson(
                json["hotkeyAccessibilityLabel"]),
      );

  Map<String, dynamic> toJson() => {
        "label": label == null ? null : label.toJson(),
        "hotkey": hotkey == null ? null : hotkey,
        "hotkeyAccessibilityLabel": hotkeyAccessibilityLabel == null
            ? null
            : hotkeyAccessibilityLabel.toJson(),
      };
}

class Logo {
  Logo({
    this.topbarLogoRenderer,
  });

  TopbarLogoRenderer topbarLogoRenderer;

  factory Logo.fromRawJson(String str) => Logo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Logo.fromJson(Map<String, dynamic> json) => Logo(
        topbarLogoRenderer: json["topbarLogoRenderer"] == null
            ? null
            : TopbarLogoRenderer.fromJson(json["topbarLogoRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "topbarLogoRenderer":
            topbarLogoRenderer == null ? null : topbarLogoRenderer.toJson(),
      };
}

class TopbarLogoRenderer {
  TopbarLogoRenderer({
    this.iconImage,
    this.tooltipText,
    this.endpoint,
    this.trackingParams,
  });

  IconImage iconImage;
  TitleClass tooltipText;
  Endpoint endpoint;
  String trackingParams;

  factory TopbarLogoRenderer.fromRawJson(String str) =>
      TopbarLogoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarLogoRenderer.fromJson(Map<String, dynamic> json) =>
      TopbarLogoRenderer(
        iconImage: json["iconImage"] == null
            ? null
            : IconImage.fromJson(json["iconImage"]),
        tooltipText: json["tooltipText"] == null
            ? null
            : TitleClass.fromJson(json["tooltipText"]),
        endpoint: json["endpoint"] == null
            ? null
            : Endpoint.fromJson(json["endpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "iconImage": iconImage == null ? null : iconImage.toJson(),
        "tooltipText": tooltipText == null ? null : tooltipText.toJson(),
        "endpoint": endpoint == null ? null : endpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class Searchbox {
  Searchbox({
    this.fusionSearchboxRenderer,
  });

  FusionSearchboxRenderer fusionSearchboxRenderer;

  factory Searchbox.fromRawJson(String str) =>
      Searchbox.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Searchbox.fromJson(Map<String, dynamic> json) => Searchbox(
        fusionSearchboxRenderer: json["fusionSearchboxRenderer"] == null
            ? null
            : FusionSearchboxRenderer.fromJson(json["fusionSearchboxRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "fusionSearchboxRenderer": fusionSearchboxRenderer == null
            ? null
            : fusionSearchboxRenderer.toJson(),
      };
}

class FusionSearchboxRenderer {
  FusionSearchboxRenderer({
    this.icon,
    this.placeholderText,
    this.config,
    this.trackingParams,
    this.searchEndpoint,
  });

  IconImage icon;
  TitleClass placeholderText;
  Config config;
  String trackingParams;
  SearchEndpointClass searchEndpoint;

  factory FusionSearchboxRenderer.fromRawJson(String str) =>
      FusionSearchboxRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FusionSearchboxRenderer.fromJson(Map<String, dynamic> json) =>
      FusionSearchboxRenderer(
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        placeholderText: json["placeholderText"] == null
            ? null
            : TitleClass.fromJson(json["placeholderText"]),
        config: json["config"] == null ? null : Config.fromJson(json["config"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        searchEndpoint: json["searchEndpoint"] == null
            ? null
            : SearchEndpointClass.fromJson(json["searchEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "icon": icon == null ? null : icon.toJson(),
        "placeholderText":
            placeholderText == null ? null : placeholderText.toJson(),
        "config": config == null ? null : config.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "searchEndpoint":
            searchEndpoint == null ? null : searchEndpoint.toJson(),
      };
}

class Config {
  Config({
    this.webSearchboxConfig,
  });

  WebSearchboxConfig webSearchboxConfig;

  factory Config.fromRawJson(String str) => Config.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Config.fromJson(Map<String, dynamic> json) => Config(
        webSearchboxConfig: json["webSearchboxConfig"] == null
            ? null
            : WebSearchboxConfig.fromJson(json["webSearchboxConfig"]),
      );

  Map<String, dynamic> toJson() => {
        "webSearchboxConfig":
            webSearchboxConfig == null ? null : webSearchboxConfig.toJson(),
      };
}

class WebSearchboxConfig {
  WebSearchboxConfig({
    this.requestLanguage,
    this.requestDomain,
    this.hasOnscreenKeyboard,
    this.focusSearchbox,
  });

  String requestLanguage;
  String requestDomain;
  bool hasOnscreenKeyboard;
  bool focusSearchbox;

  factory WebSearchboxConfig.fromRawJson(String str) =>
      WebSearchboxConfig.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WebSearchboxConfig.fromJson(Map<String, dynamic> json) =>
      WebSearchboxConfig(
        requestLanguage:
            json["requestLanguage"] == null ? null : json["requestLanguage"],
        requestDomain:
            json["requestDomain"] == null ? null : json["requestDomain"],
        hasOnscreenKeyboard: json["hasOnscreenKeyboard"] == null
            ? null
            : json["hasOnscreenKeyboard"],
        focusSearchbox:
            json["focusSearchbox"] == null ? null : json["focusSearchbox"],
      );

  Map<String, dynamic> toJson() => {
        "requestLanguage": requestLanguage == null ? null : requestLanguage,
        "requestDomain": requestDomain == null ? null : requestDomain,
        "hasOnscreenKeyboard":
            hasOnscreenKeyboard == null ? null : hasOnscreenKeyboard,
        "focusSearchbox": focusSearchbox == null ? null : focusSearchbox,
      };
}

class TopbarButton {
  TopbarButton({
    this.topbarMenuButtonRenderer,
    this.notificationTopbarButtonRenderer,
  });

  TopbarMenuButtonRenderer topbarMenuButtonRenderer;
  NotificationTopbarButtonRenderer notificationTopbarButtonRenderer;

  factory TopbarButton.fromRawJson(String str) =>
      TopbarButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarButton.fromJson(Map<String, dynamic> json) => TopbarButton(
        topbarMenuButtonRenderer: json["topbarMenuButtonRenderer"] == null
            ? null
            : TopbarMenuButtonRenderer.fromJson(
                json["topbarMenuButtonRenderer"]),
        notificationTopbarButtonRenderer:
            json["notificationTopbarButtonRenderer"] == null
                ? null
                : NotificationTopbarButtonRenderer.fromJson(
                    json["notificationTopbarButtonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "topbarMenuButtonRenderer": topbarMenuButtonRenderer == null
            ? null
            : topbarMenuButtonRenderer.toJson(),
        "notificationTopbarButtonRenderer":
            notificationTopbarButtonRenderer == null
                ? null
                : notificationTopbarButtonRenderer.toJson(),
      };
}

class NotificationTopbarButtonRenderer {
  NotificationTopbarButtonRenderer({
    this.icon,
    this.menuRequest,
    this.style,
    this.trackingParams,
    this.accessibility,
    this.tooltip,
    this.updateUnseenCountEndpoint,
    this.notificationCount,
    this.handlerDatas,
  });

  IconImage icon;
  MenuRequest menuRequest;
  String style;
  String trackingParams;
  HotkeyAccessibilityLabelClass accessibility;
  String tooltip;
  UpdateUnseenCountEndpoint updateUnseenCountEndpoint;
  int notificationCount;
  List<String> handlerDatas;

  factory NotificationTopbarButtonRenderer.fromRawJson(String str) =>
      NotificationTopbarButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NotificationTopbarButtonRenderer.fromJson(
          Map<String, dynamic> json) =>
      NotificationTopbarButtonRenderer(
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        menuRequest: json["menuRequest"] == null
            ? null
            : MenuRequest.fromJson(json["menuRequest"]),
        style: json["style"] == null ? null : json["style"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibility: json["accessibility"] == null
            ? null
            : HotkeyAccessibilityLabelClass.fromJson(json["accessibility"]),
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
        updateUnseenCountEndpoint: json["updateUnseenCountEndpoint"] == null
            ? null
            : UpdateUnseenCountEndpoint.fromJson(
                json["updateUnseenCountEndpoint"]),
        notificationCount: json["notificationCount"] == null
            ? null
            : json["notificationCount"],
        handlerDatas: json["handlerDatas"] == null
            ? null
            : List<String>.from(json["handlerDatas"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "icon": icon == null ? null : icon.toJson(),
        "menuRequest": menuRequest == null ? null : menuRequest.toJson(),
        "style": style == null ? null : style,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "tooltip": tooltip == null ? null : tooltip,
        "updateUnseenCountEndpoint": updateUnseenCountEndpoint == null
            ? null
            : updateUnseenCountEndpoint.toJson(),
        "notificationCount":
            notificationCount == null ? null : notificationCount,
        "handlerDatas": handlerDatas == null
            ? null
            : List<dynamic>.from(handlerDatas.map((x) => x)),
      };
}

class MenuRequest {
  MenuRequest({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  String clickTrackingParams;
  ContinuationEndpointCommandMetadata commandMetadata;
  MenuRequestSignalServiceEndpoint signalServiceEndpoint;

  factory MenuRequest.fromRawJson(String str) =>
      MenuRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuRequest.fromJson(Map<String, dynamic> json) => MenuRequest(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ContinuationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : MenuRequestSignalServiceEndpoint.fromJson(
                json["signalServiceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toJson(),
      };
}

class MenuRequestSignalServiceEndpoint {
  MenuRequestSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  String signal;
  List<IndigoAction> actions;

  factory MenuRequestSignalServiceEndpoint.fromRawJson(String str) =>
      MenuRequestSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuRequestSignalServiceEndpoint.fromJson(
          Map<String, dynamic> json) =>
      MenuRequestSignalServiceEndpoint(
        signal: json["signal"] == null ? null : json["signal"],
        actions: json["actions"] == null
            ? null
            : List<IndigoAction>.from(
                json["actions"].map((x) => IndigoAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signal,
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class IndigoAction {
  IndigoAction({
    this.clickTrackingParams,
    this.openPopupAction,
  });

  String clickTrackingParams;
  OpenPopupAction openPopupAction;

  factory IndigoAction.fromRawJson(String str) =>
      IndigoAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory IndigoAction.fromJson(Map<String, dynamic> json) => IndigoAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        openPopupAction: json["openPopupAction"] == null
            ? null
            : OpenPopupAction.fromJson(json["openPopupAction"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "openPopupAction":
            openPopupAction == null ? null : openPopupAction.toJson(),
      };
}

class OpenPopupAction {
  OpenPopupAction({
    this.popup,
    this.popupType,
    this.beReused,
  });

  Popup popup;
  String popupType;
  bool beReused;

  factory OpenPopupAction.fromRawJson(String str) =>
      OpenPopupAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OpenPopupAction.fromJson(Map<String, dynamic> json) =>
      OpenPopupAction(
        popup: json["popup"] == null ? null : Popup.fromJson(json["popup"]),
        popupType: json["popupType"] == null ? null : json["popupType"],
        beReused: json["beReused"] == null ? null : json["beReused"],
      );

  Map<String, dynamic> toJson() => {
        "popup": popup == null ? null : popup.toJson(),
        "popupType": popupType == null ? null : popupType,
        "beReused": beReused == null ? null : beReused,
      };
}

class Popup {
  Popup({
    this.multiPageMenuRenderer,
  });

  PopupMultiPageMenuRenderer multiPageMenuRenderer;

  factory Popup.fromRawJson(String str) => Popup.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Popup.fromJson(Map<String, dynamic> json) => Popup(
        multiPageMenuRenderer: json["multiPageMenuRenderer"] == null
            ? null
            : PopupMultiPageMenuRenderer.fromJson(
                json["multiPageMenuRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "multiPageMenuRenderer": multiPageMenuRenderer == null
            ? null
            : multiPageMenuRenderer.toJson(),
      };
}

class PopupMultiPageMenuRenderer {
  PopupMultiPageMenuRenderer({
    this.trackingParams,
    this.style,
    this.showLoadingSpinner,
  });

  String trackingParams;
  String style;
  bool showLoadingSpinner;

  factory PopupMultiPageMenuRenderer.fromRawJson(String str) =>
      PopupMultiPageMenuRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PopupMultiPageMenuRenderer.fromJson(Map<String, dynamic> json) =>
      PopupMultiPageMenuRenderer(
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        style: json["style"] == null ? null : json["style"],
        showLoadingSpinner: json["showLoadingSpinner"] == null
            ? null
            : json["showLoadingSpinner"],
      );

  Map<String, dynamic> toJson() => {
        "trackingParams": trackingParams == null ? null : trackingParams,
        "style": style == null ? null : style,
        "showLoadingSpinner":
            showLoadingSpinner == null ? null : showLoadingSpinner,
      };
}

class UpdateUnseenCountEndpoint {
  UpdateUnseenCountEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signalServiceEndpoint,
  });

  String clickTrackingParams;
  ContinuationEndpointCommandMetadata commandMetadata;
  Signal signalServiceEndpoint;

  factory UpdateUnseenCountEndpoint.fromRawJson(String str) =>
      UpdateUnseenCountEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UpdateUnseenCountEndpoint.fromJson(Map<String, dynamic> json) =>
      UpdateUnseenCountEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ContinuationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : Signal.fromJson(json["signalServiceEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toJson(),
      };
}

class TopbarMenuButtonRenderer {
  TopbarMenuButtonRenderer({
    this.icon,
    this.menuRenderer,
    this.trackingParams,
    this.accessibility,
    this.tooltip,
    this.style,
    this.targetId,
    this.avatar,
    this.menuRequest,
  });

  IconImage icon;
  TopbarMenuButtonRendererMenuRenderer menuRenderer;
  String trackingParams;
  HotkeyAccessibilityLabelClass accessibility;
  String tooltip;
  String style;
  String targetId;
  Avatar avatar;
  MenuRequest menuRequest;

  factory TopbarMenuButtonRenderer.fromRawJson(String str) =>
      TopbarMenuButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarMenuButtonRenderer.fromJson(Map<String, dynamic> json) =>
      TopbarMenuButtonRenderer(
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        menuRenderer: json["menuRenderer"] == null
            ? null
            : TopbarMenuButtonRendererMenuRenderer.fromJson(
                json["menuRenderer"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        accessibility: json["accessibility"] == null
            ? null
            : HotkeyAccessibilityLabelClass.fromJson(json["accessibility"]),
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
        style: json["style"] == null ? null : json["style"],
        targetId: json["targetId"] == null ? null : json["targetId"],
        avatar: json["avatar"] == null ? null : Avatar.fromJson(json["avatar"]),
        menuRequest: json["menuRequest"] == null
            ? null
            : MenuRequest.fromJson(json["menuRequest"]),
      );

  Map<String, dynamic> toJson() => {
        "icon": icon == null ? null : icon.toJson(),
        "menuRenderer": menuRenderer == null ? null : menuRenderer.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "tooltip": tooltip == null ? null : tooltip,
        "style": style == null ? null : style,
        "targetId": targetId == null ? null : targetId,
        "avatar": avatar == null ? null : avatar.toJson(),
        "menuRequest": menuRequest == null ? null : menuRequest.toJson(),
      };
}

class Avatar {
  Avatar({
    this.thumbnails,
    this.accessibility,
  });

  List<ThumbnailElement> thumbnails;
  HotkeyAccessibilityLabelClass accessibility;

  factory Avatar.fromRawJson(String str) => Avatar.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Avatar.fromJson(Map<String, dynamic> json) => Avatar(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<ThumbnailElement>.from(
                json["thumbnails"].map((x) => ThumbnailElement.fromJson(x))),
        accessibility: json["accessibility"] == null
            ? null
            : HotkeyAccessibilityLabelClass.fromJson(json["accessibility"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toJson())),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
      };
}

class TopbarMenuButtonRendererMenuRenderer {
  TopbarMenuButtonRendererMenuRenderer({
    this.multiPageMenuRenderer,
  });

  MenuRendererMultiPageMenuRenderer multiPageMenuRenderer;

  factory TopbarMenuButtonRendererMenuRenderer.fromRawJson(String str) =>
      TopbarMenuButtonRendererMenuRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarMenuButtonRendererMenuRenderer.fromJson(
          Map<String, dynamic> json) =>
      TopbarMenuButtonRendererMenuRenderer(
        multiPageMenuRenderer: json["multiPageMenuRenderer"] == null
            ? null
            : MenuRendererMultiPageMenuRenderer.fromJson(
                json["multiPageMenuRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "multiPageMenuRenderer": multiPageMenuRenderer == null
            ? null
            : multiPageMenuRenderer.toJson(),
      };
}

class MenuRendererMultiPageMenuRenderer {
  MenuRendererMultiPageMenuRenderer({
    this.sections,
    this.trackingParams,
    this.style,
  });

  List<MultiPageMenuRendererSection> sections;
  String trackingParams;
  String style;

  factory MenuRendererMultiPageMenuRenderer.fromRawJson(String str) =>
      MenuRendererMultiPageMenuRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuRendererMultiPageMenuRenderer.fromJson(
          Map<String, dynamic> json) =>
      MenuRendererMultiPageMenuRenderer(
        sections: json["sections"] == null
            ? null
            : List<MultiPageMenuRendererSection>.from(json["sections"]
                .map((x) => MultiPageMenuRendererSection.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        style: json["style"] == null ? null : json["style"],
      );

  Map<String, dynamic> toJson() => {
        "sections": sections == null
            ? null
            : List<dynamic>.from(sections.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "style": style == null ? null : style,
      };
}

class MultiPageMenuRendererSection {
  MultiPageMenuRendererSection({
    this.multiPageMenuSectionRenderer,
  });

  MultiPageMenuSectionRenderer multiPageMenuSectionRenderer;

  factory MultiPageMenuRendererSection.fromRawJson(String str) =>
      MultiPageMenuRendererSection.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MultiPageMenuRendererSection.fromJson(Map<String, dynamic> json) =>
      MultiPageMenuRendererSection(
        multiPageMenuSectionRenderer:
            json["multiPageMenuSectionRenderer"] == null
                ? null
                : MultiPageMenuSectionRenderer.fromJson(
                    json["multiPageMenuSectionRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "multiPageMenuSectionRenderer": multiPageMenuSectionRenderer == null
            ? null
            : multiPageMenuSectionRenderer.toJson(),
      };
}

class MultiPageMenuSectionRenderer {
  MultiPageMenuSectionRenderer({
    this.items,
    this.trackingParams,
  });

  List<MultiPageMenuSectionRendererItem> items;
  String trackingParams;

  factory MultiPageMenuSectionRenderer.fromRawJson(String str) =>
      MultiPageMenuSectionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MultiPageMenuSectionRenderer.fromJson(Map<String, dynamic> json) =>
      MultiPageMenuSectionRenderer(
        items: json["items"] == null
            ? null
            : List<MultiPageMenuSectionRendererItem>.from(json["items"]
                .map((x) => MultiPageMenuSectionRendererItem.fromJson(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toJson() => {
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class MultiPageMenuSectionRendererItem {
  MultiPageMenuSectionRendererItem({
    this.compactLinkRenderer,
  });

  CompactLinkRenderer compactLinkRenderer;

  factory MultiPageMenuSectionRendererItem.fromRawJson(String str) =>
      MultiPageMenuSectionRendererItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MultiPageMenuSectionRendererItem.fromJson(
          Map<String, dynamic> json) =>
      MultiPageMenuSectionRendererItem(
        compactLinkRenderer: json["compactLinkRenderer"] == null
            ? null
            : CompactLinkRenderer.fromJson(json["compactLinkRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "compactLinkRenderer":
            compactLinkRenderer == null ? null : compactLinkRenderer.toJson(),
      };
}

class CompactLinkRenderer {
  CompactLinkRenderer({
    this.icon,
    this.title,
    this.navigationEndpoint,
    this.trackingParams,
    this.style,
  });

  IconImage icon;
  TitleClass title;
  CompactLinkRendererNavigationEndpoint navigationEndpoint;
  String trackingParams;
  String style;

  factory CompactLinkRenderer.fromRawJson(String str) =>
      CompactLinkRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CompactLinkRenderer.fromJson(Map<String, dynamic> json) =>
      CompactLinkRenderer(
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        title:
            json["title"] == null ? null : TitleClass.fromJson(json["title"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : CompactLinkRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        style: json["style"] == null ? null : json["style"],
      );

  Map<String, dynamic> toJson() => {
        "icon": icon == null ? null : icon.toJson(),
        "title": title == null ? null : title.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "style": style == null ? null : style,
      };
}

class CompactLinkRendererNavigationEndpoint {
  CompactLinkRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.uploadEndpoint,
    this.signalNavigationEndpoint,
    this.urlEndpoint,
  });

  String clickTrackingParams;
  EndpointCommandMetadata commandMetadata;
  UploadEndpoint uploadEndpoint;
  Signal signalNavigationEndpoint;
  UrlEndpoint urlEndpoint;

  factory CompactLinkRendererNavigationEndpoint.fromRawJson(String str) =>
      CompactLinkRendererNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CompactLinkRendererNavigationEndpoint.fromJson(
          Map<String, dynamic> json) =>
      CompactLinkRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : EndpointCommandMetadata.fromJson(json["commandMetadata"]),
        uploadEndpoint: json["uploadEndpoint"] == null
            ? null
            : UploadEndpoint.fromJson(json["uploadEndpoint"]),
        signalNavigationEndpoint: json["signalNavigationEndpoint"] == null
            ? null
            : Signal.fromJson(json["signalNavigationEndpoint"]),
        urlEndpoint: json["urlEndpoint"] == null
            ? null
            : UrlEndpoint.fromJson(json["urlEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "uploadEndpoint":
            uploadEndpoint == null ? null : uploadEndpoint.toJson(),
        "signalNavigationEndpoint": signalNavigationEndpoint == null
            ? null
            : signalNavigationEndpoint.toJson(),
        "urlEndpoint": urlEndpoint == null ? null : urlEndpoint.toJson(),
      };
}

class UploadEndpoint {
  UploadEndpoint({
    this.hack,
  });

  bool hack;

  factory UploadEndpoint.fromRawJson(String str) =>
      UploadEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UploadEndpoint.fromJson(Map<String, dynamic> json) => UploadEndpoint(
        hack: json["hack"] == null ? null : json["hack"],
      );

  Map<String, dynamic> toJson() => {
        "hack": hack == null ? null : hack,
      };
}

class UrlEndpoint {
  UrlEndpoint({
    this.url,
    this.target,
  });

  String url;
  String target;

  factory UrlEndpoint.fromRawJson(String str) =>
      UrlEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UrlEndpoint.fromJson(Map<String, dynamic> json) => UrlEndpoint(
        url: json["url"] == null ? null : json["url"],
        target: json["target"] == null ? null : json["target"],
      );

  Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "target": target == null ? null : target,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
