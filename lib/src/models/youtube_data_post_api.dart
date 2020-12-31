// To parse this JSON data, do
//
//     final youtubeDataPostApi = youtubeDataPostApiFromJson(jsonString);

import 'dart:convert';

class YoutubeDataPostApi {
  YoutubeDataPostApi({
    this.responseContext,
    this.estimatedResults,
    this.trackingParams,
    this.topbar,
    this.adSafetyReason,
    this.onResponseReceivedCommands,
  });

  ResponseContext responseContext;
  String estimatedResults;
  String trackingParams;
  Topbar topbar;
  AdSafetyReason adSafetyReason;
  List<OnResponseReceivedCommand> onResponseReceivedCommands;

  factory YoutubeDataPostApi.fromRawJson(String str) =>
      YoutubeDataPostApi.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory YoutubeDataPostApi.fromJson(Map<String, dynamic> json) =>
      YoutubeDataPostApi(
        responseContext: json["responseContext"] == null
            ? null
            : ResponseContext.fromJson(json["responseContext"]),
        estimatedResults:
            json["estimatedResults"] == null ? null : json["estimatedResults"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        topbar: json["topbar"] == null ? null : Topbar.fromJson(json["topbar"]),
        adSafetyReason: json["adSafetyReason"] == null
            ? null
            : AdSafetyReason.fromJson(json["adSafetyReason"]),
        onResponseReceivedCommands: json["onResponseReceivedCommands"] == null
            ? null
            : List<OnResponseReceivedCommand>.from(
                json["onResponseReceivedCommands"]
                    .map((x) => OnResponseReceivedCommand.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "responseContext":
            responseContext == null ? null : responseContext.toJson(),
        "estimatedResults": estimatedResults == null ? null : estimatedResults,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "topbar": topbar == null ? null : topbar.toJson(),
        "adSafetyReason":
            adSafetyReason == null ? null : adSafetyReason.toJson(),
        "onResponseReceivedCommands": onResponseReceivedCommands == null
            ? null
            : List<dynamic>.from(
                onResponseReceivedCommands.map((x) => x.toJson())),
      };
}

class AdSafetyReason {
  AdSafetyReason();

  factory AdSafetyReason.fromRawJson(String str) =>
      AdSafetyReason.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AdSafetyReason.fromJson(Map<String, dynamic> json) =>
      AdSafetyReason();

  Map<String, dynamic> toJson() => {};
}

class OnResponseReceivedCommand {
  OnResponseReceivedCommand({
    this.clickTrackingParams,
    this.appendContinuationItemsAction,
  });

  String clickTrackingParams;
  AppendContinuationItemsAction appendContinuationItemsAction;

  factory OnResponseReceivedCommand.fromRawJson(String str) =>
      OnResponseReceivedCommand.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OnResponseReceivedCommand.fromJson(Map<String, dynamic> json) =>
      OnResponseReceivedCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        appendContinuationItemsAction:
            json["appendContinuationItemsAction"] == null
                ? null
                : AppendContinuationItemsAction.fromJson(
                    json["appendContinuationItemsAction"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "appendContinuationItemsAction": appendContinuationItemsAction == null
            ? null
            : appendContinuationItemsAction.toJson(),
      };
}

class AppendContinuationItemsAction {
  AppendContinuationItemsAction({
    this.continuationItems,
    this.targetId,
  });

  List<ContinuationItem> continuationItems;
  String targetId;

  factory AppendContinuationItemsAction.fromRawJson(String str) =>
      AppendContinuationItemsAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AppendContinuationItemsAction.fromJson(Map<String, dynamic> json) =>
      AppendContinuationItemsAction(
        continuationItems: json["continuationItems"] == null
            ? null
            : List<ContinuationItem>.from(json["continuationItems"]
                .map((x) => ContinuationItem.fromJson(x))),
        targetId: json["targetId"] == null ? null : json["targetId"],
      );

  Map<String, dynamic> toJson() => {
        "continuationItems": continuationItems == null
            ? null
            : List<dynamic>.from(continuationItems.map((x) => x.toJson())),
        "targetId": targetId == null ? null : targetId,
      };
}

class ContinuationItem {
  ContinuationItem({
    this.itemSectionRenderer,
    this.continuationItemRenderer,
  });

  ItemSectionRenderer itemSectionRenderer;
  ContinuationItemRenderer continuationItemRenderer;

  factory ContinuationItem.fromRawJson(String str) =>
      ContinuationItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ContinuationItem.fromJson(Map<String, dynamic> json) =>
      ContinuationItem(
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
  YOUTUBEI_V1_PLAYLIST_CREATE,
  YOUTUBEI_V1_BROWSE_EDIT_PLAYLIST,
  YOUTUBEI_V1_ACCOUNT_ACCOUNT_MENU
}

final apiUrlValues = EnumValues({
  "/youtubei/v1/account/account_menu": ApiUrl.YOUTUBEI_V1_ACCOUNT_ACCOUNT_MENU,
  "/youtubei/v1/browse/edit_playlist": ApiUrl.YOUTUBEI_V1_BROWSE_EDIT_PLAYLIST,
  "/youtubei/v1/playlist/create": ApiUrl.YOUTUBEI_V1_PLAYLIST_CREATE,
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

  List<Content> contents;
  String trackingParams;

  factory ItemSectionRenderer.fromRawJson(String str) =>
      ItemSectionRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ItemSectionRenderer.fromJson(Map<String, dynamic> json) =>
      ItemSectionRenderer(
        contents: json["contents"] == null
            ? null
            : List<Content>.from(
                json["contents"].map((x) => Content.fromJson(x))),
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

class Content {
  Content({
    this.videoRenderer,
  });

  VideoRenderer videoRenderer;

  factory Content.fromRawJson(String str) => Content.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Content.fromJson(Map<String, dynamic> json) => Content(
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
    this.descriptionSnippet,
  });

  String videoId;
  ChannelThumbnailWithLinkRendererThumbnail thumbnail;
  Title title;
  LongBylineTextClass longBylineText;
  PublishedTimeTextClass publishedTimeText;
  LengthTextClass lengthText;
  PublishedTimeTextClass viewCountText;
  VideoRendererNavigationEndpoint navigationEndpoint;
  LongBylineTextClass ownerText;
  LongBylineTextClass shortBylineText;
  String trackingParams;
  bool showActionMenu;
  PublishedTimeTextClass shortViewCountText;
  Menu menu;
  ChannelThumbnailSupportedRenderers channelThumbnailSupportedRenderers;
  List<ThumbnailOverlay> thumbnailOverlays;
  DescriptionSnippet descriptionSnippet;

  factory VideoRenderer.fromRawJson(String str) =>
      VideoRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoRenderer.fromJson(Map<String, dynamic> json) => VideoRenderer(
        videoId: json["videoId"] == null ? null : json["videoId"],
        thumbnail: json["thumbnail"] == null
            ? null
            : ChannelThumbnailWithLinkRendererThumbnail.fromJson(
                json["thumbnail"]),
        title: json["title"] == null ? null : Title.fromJson(json["title"]),
        longBylineText: json["longBylineText"] == null
            ? null
            : LongBylineTextClass.fromJson(json["longBylineText"]),
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
        ownerText: json["ownerText"] == null
            ? null
            : LongBylineTextClass.fromJson(json["ownerText"]),
        shortBylineText: json["shortBylineText"] == null
            ? null
            : LongBylineTextClass.fromJson(json["shortBylineText"]),
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
        descriptionSnippet: json["descriptionSnippet"] == null
            ? null
            : DescriptionSnippet.fromJson(json["descriptionSnippet"]),
      );

  Map<String, dynamic> toJson() => {
        "videoId": videoId == null ? null : videoId,
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "title": title == null ? null : title.toJson(),
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
        "descriptionSnippet":
            descriptionSnippet == null ? null : descriptionSnippet.toJson(),
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
  ChannelThumbnailWithLinkRendererNavigationEndpoint navigationEndpoint;
  Accessibility accessibility;

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
            : ChannelThumbnailWithLinkRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        accessibility: json["accessibility"] == null
            ? null
            : Accessibility.fromJson(json["accessibility"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
      };
}

class Accessibility {
  Accessibility({
    this.accessibilityData,
  });

  AccessibilityData accessibilityData;

  factory Accessibility.fromRawJson(String str) =>
      Accessibility.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Accessibility.fromJson(Map<String, dynamic> json) => Accessibility(
        accessibilityData: json["accessibilityData"] == null
            ? null
            : AccessibilityData.fromJson(json["accessibilityData"]),
      );

  Map<String, dynamic> toJson() => {
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toJson(),
      };
}

class AccessibilityData {
  AccessibilityData({
    this.label,
  });

  String label;

  factory AccessibilityData.fromRawJson(String str) =>
      AccessibilityData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AccessibilityData.fromJson(Map<String, dynamic> json) =>
      AccessibilityData(
        label: json["label"] == null ? null : json["label"],
      );

  Map<String, dynamic> toJson() => {
        "label": label == null ? null : label,
      };
}

class ChannelThumbnailWithLinkRendererNavigationEndpoint {
  ChannelThumbnailWithLinkRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  String clickTrackingParams;
  NavigationEndpointCommandMetadata commandMetadata;
  NavigationEndpointBrowseEndpoint browseEndpoint;

  factory ChannelThumbnailWithLinkRendererNavigationEndpoint.fromRawJson(
          String str) =>
      ChannelThumbnailWithLinkRendererNavigationEndpoint.fromJson(
          json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ChannelThumbnailWithLinkRendererNavigationEndpoint.fromJson(
          Map<String, dynamic> json) =>
      ChannelThumbnailWithLinkRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : NavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : NavigationEndpointBrowseEndpoint.fromJson(json["browseEndpoint"]),
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

class NavigationEndpointBrowseEndpoint {
  NavigationEndpointBrowseEndpoint({
    this.browseId,
    this.canonicalBaseUrl,
  });

  BrowseId browseId;
  String canonicalBaseUrl;

  factory NavigationEndpointBrowseEndpoint.fromRawJson(String str) =>
      NavigationEndpointBrowseEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NavigationEndpointBrowseEndpoint.fromJson(
          Map<String, dynamic> json) =>
      NavigationEndpointBrowseEndpoint(
        browseId: json["browseId"] == null
            ? null
            : browseIdValues.map[json["browseId"]],
        canonicalBaseUrl:
            json["canonicalBaseUrl"] == null ? null : json["canonicalBaseUrl"],
      );

  Map<String, dynamic> toJson() => {
        "browseId": browseId == null ? null : browseIdValues.reverse[browseId],
        "canonicalBaseUrl": canonicalBaseUrl == null ? null : canonicalBaseUrl,
      };
}

enum BrowseId {
  UCT1_S5_D_JRX0_I5_VY_WOW_XA_R4_H_A,
  UCX3_E3_B_MR_VMT_DK_MT_LUZFEC_SA,
  UCTANZJ_VR_KZE_UUJ_COZ_Y0_KN_Q,
  U_CW_ORJ_PHX_SM3_H7_DI_LEC_NO_A
}

final browseIdValues = EnumValues({
  "UCT1s5DJrx0I5VYWowXaR4hA": BrowseId.UCT1_S5_D_JRX0_I5_VY_WOW_XA_R4_H_A,
  "UCTANZJ_vrKZEUujCozY0KnQ": BrowseId.UCTANZJ_VR_KZE_UUJ_COZ_Y0_KN_Q,
  "UCX3E3bMrVMTDkMtLuzfecSA": BrowseId.UCX3_E3_B_MR_VMT_DK_MT_LUZFEC_SA,
  "UCwOrjPhx-Sm3h7diLec-NoA": BrowseId.U_CW_ORJ_PHX_SM3_H7_DI_LEC_NO_A
});

class NavigationEndpointCommandMetadata {
  NavigationEndpointCommandMetadata({
    this.webCommandMetadata,
  });

  FluffyWebCommandMetadata webCommandMetadata;

  factory NavigationEndpointCommandMetadata.fromRawJson(String str) =>
      NavigationEndpointCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NavigationEndpointCommandMetadata.fromJson(
          Map<String, dynamic> json) =>
      NavigationEndpointCommandMetadata(
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
  WEB_PAGE_TYPE_BROWSE,
  WEB_PAGE_TYPE_SEARCH,
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

  Accessibility accessibility;
  String simpleText;

  factory LengthTextClass.fromRawJson(String str) =>
      LengthTextClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LengthTextClass.fromJson(Map<String, dynamic> json) =>
      LengthTextClass(
        accessibility: json["accessibility"] == null
            ? null
            : Accessibility.fromJson(json["accessibility"]),
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
      );

  Map<String, dynamic> toJson() => {
        "accessibility": accessibility == null ? null : accessibility.toJson(),
        "simpleText": simpleText == null ? null : simpleText,
      };
}

class LongBylineTextClass {
  LongBylineTextClass({
    this.runs,
  });

  List<LongBylineTextRun> runs;

  factory LongBylineTextClass.fromRawJson(String str) =>
      LongBylineTextClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LongBylineTextClass.fromJson(Map<String, dynamic> json) =>
      LongBylineTextClass(
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

  TextEnum text;
  ChannelThumbnailWithLinkRendererNavigationEndpoint navigationEndpoint;

  factory LongBylineTextRun.fromRawJson(String str) =>
      LongBylineTextRun.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LongBylineTextRun.fromJson(Map<String, dynamic> json) =>
      LongBylineTextRun(
        text: json["text"] == null ? null : textEnumValues.map[json["text"]],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : ChannelThumbnailWithLinkRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : textEnumValues.reverse[text],
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
      };
}

enum TextEnum { RED_KT_TV, ALPER_KORYREK, DINGO_NUN_AHR, GRAM_PL }

final textEnumValues = EnumValues({
  "Alper Koryürek": TextEnum.ALPER_KORYREK,
  "Dingo'nun Ahırı": TextEnum.DINGO_NUN_AHR,
  "Gram.pl": TextEnum.GRAM_PL,
  "RED KİT TV": TextEnum.RED_KT_TV
});

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
  Accessibility accessibility;

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
            : Accessibility.fromJson(json["accessibility"]),
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
  });

  TitleClass text;
  IconImage icon;
  ServiceEndpoint serviceEndpoint;
  String trackingParams;

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
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
        "icon": icon == null ? null : icon.toJson(),
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
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
  });

  String clickTrackingParams;
  ServiceEndpointCommandMetadata commandMetadata;
  ServiceEndpointSignalServiceEndpoint signalServiceEndpoint;

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
            : ServiceEndpointCommandMetadata.fromJson(json["commandMetadata"]),
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
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toJson(),
      };
}

class ServiceEndpointCommandMetadata {
  ServiceEndpointCommandMetadata({
    this.webCommandMetadata,
  });

  TentacledWebCommandMetadata webCommandMetadata;

  factory ServiceEndpointCommandMetadata.fromRawJson(String str) =>
      ServiceEndpointCommandMetadata.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ServiceEndpointCommandMetadata.fromJson(Map<String, dynamic> json) =>
      ServiceEndpointCommandMetadata(
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

class ServiceEndpointSignalServiceEndpoint {
  ServiceEndpointSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  Signal signal;
  List<PurpleAction> actions;

  factory ServiceEndpointSignalServiceEndpoint.fromRawJson(String str) =>
      ServiceEndpointSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ServiceEndpointSignalServiceEndpoint.fromJson(
          Map<String, dynamic> json) =>
      ServiceEndpointSignalServiceEndpoint(
        signal:
            json["signal"] == null ? null : signalValues.map[json["signal"]],
        actions: json["actions"] == null
            ? null
            : List<PurpleAction>.from(
                json["actions"].map((x) => PurpleAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signalValues.reverse[signal],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class PurpleAction {
  PurpleAction({
    this.clickTrackingParams,
    this.addToPlaylistCommand,
  });

  String clickTrackingParams;
  AddToPlaylistCommand addToPlaylistCommand;

  factory PurpleAction.fromRawJson(String str) =>
      PurpleAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleAction.fromJson(Map<String, dynamic> json) => PurpleAction(
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

enum Signal { CLIENT_SIGNAL }

final signalValues = EnumValues({"CLIENT_SIGNAL": Signal.CLIENT_SIGNAL});

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
  NavigationEndpointCommandMetadata commandMetadata;
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
            : NavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
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
  Style style;

  factory ThumbnailOverlayTimeStatusRenderer.fromRawJson(String str) =>
      ThumbnailOverlayTimeStatusRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ThumbnailOverlayTimeStatusRenderer.fromJson(
          Map<String, dynamic> json) =>
      ThumbnailOverlayTimeStatusRenderer(
        text: json["text"] == null
            ? null
            : LengthTextClass.fromJson(json["text"]),
        style: json["style"] == null ? null : styleValues.map[json["style"]],
      );

  Map<String, dynamic> toJson() => {
        "text": text == null ? null : text.toJson(),
        "style": style == null ? null : styleValues.reverse[style],
      };
}

enum Style { DEFAULT }

final styleValues = EnumValues({"DEFAULT": Style.DEFAULT});

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
  Accessibility untoggledAccessibility;
  Accessibility toggledAccessibility;
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
            : Accessibility.fromJson(json["untoggledAccessibility"]),
        toggledAccessibility: json["toggledAccessibility"] == null
            ? null
            : Accessibility.fromJson(json["toggledAccessibility"]),
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
  List<FluffyAction> actions;

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
            : List<FluffyAction>.from(
                json["actions"].map((x) => FluffyAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "playlistId":
            playlistId == null ? null : playlistIdValues.reverse[playlistId],
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toJson())),
      };
}

class FluffyAction {
  FluffyAction({
    this.action,
    this.removedVideoId,
  });

  IndecentAction action;
  String removedVideoId;

  factory FluffyAction.fromRawJson(String str) =>
      FluffyAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyAction.fromJson(Map<String, dynamic> json) => FluffyAction(
        action: json["action"] == null
            ? null
            : indecentActionValues.map[json["action"]],
        removedVideoId:
            json["removedVideoId"] == null ? null : json["removedVideoId"],
      );

  Map<String, dynamic> toJson() => {
        "action": action == null ? null : indecentActionValues.reverse[action],
        "removedVideoId": removedVideoId == null ? null : removedVideoId,
      };
}

enum IndecentAction { ACTION_REMOVE_VIDEO_BY_VIDEO_ID }

final indecentActionValues = EnumValues({
  "ACTION_REMOVE_VIDEO_BY_VIDEO_ID":
      IndecentAction.ACTION_REMOVE_VIDEO_BY_VIDEO_ID
});

enum PlaylistId { WL }

final playlistIdValues = EnumValues({"WL": PlaylistId.WL});

enum ToggledTooltip { ADDED }

final toggledTooltipValues = EnumValues({"Added": ToggledTooltip.ADDED});

class UntoggledServiceEndpoint {
  UntoggledServiceEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.playlistEditEndpoint,
    this.signalServiceEndpoint,
  });

  String clickTrackingParams;
  ContinuationEndpointCommandMetadata commandMetadata;
  UntoggledServiceEndpointPlaylistEditEndpoint playlistEditEndpoint;
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
            : UntoggledServiceEndpointPlaylistEditEndpoint.fromJson(
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

class UntoggledServiceEndpointPlaylistEditEndpoint {
  UntoggledServiceEndpointPlaylistEditEndpoint({
    this.playlistId,
    this.actions,
  });

  PlaylistId playlistId;
  List<TentacledAction> actions;

  factory UntoggledServiceEndpointPlaylistEditEndpoint.fromRawJson(
          String str) =>
      UntoggledServiceEndpointPlaylistEditEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UntoggledServiceEndpointPlaylistEditEndpoint.fromJson(
          Map<String, dynamic> json) =>
      UntoggledServiceEndpointPlaylistEditEndpoint(
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
    this.addedVideoId,
    this.action,
  });

  String addedVideoId;
  HilariousAction action;

  factory TentacledAction.fromRawJson(String str) =>
      TentacledAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TentacledAction.fromJson(Map<String, dynamic> json) =>
      TentacledAction(
        addedVideoId:
            json["addedVideoId"] == null ? null : json["addedVideoId"],
        action: json["action"] == null
            ? null
            : hilariousActionValues.map[json["action"]],
      );

  Map<String, dynamic> toJson() => {
        "addedVideoId": addedVideoId == null ? null : addedVideoId,
        "action": action == null ? null : hilariousActionValues.reverse[action],
      };
}

enum HilariousAction { ACTION_ADD_VIDEO }

final hilariousActionValues =
    EnumValues({"ACTION_ADD_VIDEO": HilariousAction.ACTION_ADD_VIDEO});

enum UntoggledTooltip { WATCH_LATER, ADD_TO_QUEUE }

final untoggledTooltipValues = EnumValues({
  "Add to queue": UntoggledTooltip.ADD_TO_QUEUE,
  "Watch later": UntoggledTooltip.WATCH_LATER
});

class Title {
  Title({
    this.runs,
    this.accessibility,
  });

  List<TextRun> runs;
  Accessibility accessibility;

  factory Title.fromRawJson(String str) => Title.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Title.fromJson(Map<String, dynamic> json) => Title(
        runs: json["runs"] == null
            ? null
            : List<TextRun>.from(json["runs"].map((x) => TextRun.fromJson(x))),
        accessibility: json["accessibility"] == null
            ? null
            : Accessibility.fromJson(json["accessibility"]),
      );

  Map<String, dynamic> toJson() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toJson())),
        "accessibility": accessibility == null ? null : accessibility.toJson(),
      };
}

class ResponseContext {
  ResponseContext({
    this.visitorData,
    this.serviceTrackingParams,
    this.webResponseContextExtensionData,
  });

  String visitorData;
  List<ServiceTrackingParam> serviceTrackingParams;
  WebResponseContextExtensionData webResponseContextExtensionData;

  factory ResponseContext.fromRawJson(String str) =>
      ResponseContext.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResponseContext.fromJson(Map<String, dynamic> json) =>
      ResponseContext(
        visitorData: json["visitorData"] == null ? null : json["visitorData"],
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
        "visitorData": visitorData == null ? null : visitorData,
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
    this.hasDecorated,
  });

  bool hasDecorated;

  factory WebResponseContextExtensionData.fromRawJson(String str) =>
      WebResponseContextExtensionData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WebResponseContextExtensionData.fromJson(Map<String, dynamic> json) =>
      WebResponseContextExtensionData(
        hasDecorated:
            json["hasDecorated"] == null ? null : json["hasDecorated"],
      );

  Map<String, dynamic> toJson() => {
        "hasDecorated": hasDecorated == null ? null : hasDecorated,
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
  ServiceEndpointCommandMetadata commandMetadata;
  CommandSignalServiceEndpoint signalServiceEndpoint;

  factory Command.fromRawJson(String str) => Command.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Command.fromJson(Map<String, dynamic> json) => Command(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ServiceEndpointCommandMetadata.fromJson(json["commandMetadata"]),
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

class CommandSignalServiceEndpoint {
  CommandSignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  Signal signal;
  List<StickyAction> actions;

  factory CommandSignalServiceEndpoint.fromRawJson(String str) =>
      CommandSignalServiceEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CommandSignalServiceEndpoint.fromJson(Map<String, dynamic> json) =>
      CommandSignalServiceEndpoint(
        signal:
            json["signal"] == null ? null : signalValues.map[json["signal"]],
        actions: json["actions"] == null
            ? null
            : List<StickyAction>.from(
                json["actions"].map((x) => StickyAction.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "signal": signal == null ? null : signalValues.reverse[signal],
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
  SignalAction signalAction;

  factory StickyAction.fromRawJson(String str) =>
      StickyAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StickyAction.fromJson(Map<String, dynamic> json) => StickyAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        signalAction: json["signalAction"] == null
            ? null
            : SignalAction.fromJson(json["signalAction"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "signalAction": signalAction == null ? null : signalAction.toJson(),
      };
}

class SignalAction {
  SignalAction({
    this.signal,
  });

  String signal;

  factory SignalAction.fromRawJson(String str) =>
      SignalAction.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SignalAction.fromJson(Map<String, dynamic> json) => SignalAction(
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
  Accessibility hotkeyAccessibilityLabel;

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
            : Accessibility.fromJson(json["hotkeyAccessibilityLabel"]),
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

class Endpoint {
  Endpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  String clickTrackingParams;
  NavigationEndpointCommandMetadata commandMetadata;
  EndpointBrowseEndpoint browseEndpoint;

  factory Endpoint.fromRawJson(String str) =>
      Endpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Endpoint.fromJson(Map<String, dynamic> json) => Endpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : NavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : EndpointBrowseEndpoint.fromJson(json["browseEndpoint"]),
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

class EndpointBrowseEndpoint {
  EndpointBrowseEndpoint({
    this.browseId,
  });

  String browseId;

  factory EndpointBrowseEndpoint.fromRawJson(String str) =>
      EndpointBrowseEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EndpointBrowseEndpoint.fromJson(Map<String, dynamic> json) =>
      EndpointBrowseEndpoint(
        browseId: json["browseId"] == null ? null : json["browseId"],
      );

  Map<String, dynamic> toJson() => {
        "browseId": browseId == null ? null : browseId,
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
  FusionSearchboxRendererSearchEndpoint searchEndpoint;

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
            : FusionSearchboxRendererSearchEndpoint.fromJson(
                json["searchEndpoint"]),
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

class FusionSearchboxRendererSearchEndpoint {
  FusionSearchboxRendererSearchEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.searchEndpoint,
  });

  String clickTrackingParams;
  NavigationEndpointCommandMetadata commandMetadata;
  SearchEndpointSearchEndpoint searchEndpoint;

  factory FusionSearchboxRendererSearchEndpoint.fromRawJson(String str) =>
      FusionSearchboxRendererSearchEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FusionSearchboxRendererSearchEndpoint.fromJson(
          Map<String, dynamic> json) =>
      FusionSearchboxRendererSearchEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : NavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
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

class TopbarButton {
  TopbarButton({
    this.topbarMenuButtonRenderer,
    this.buttonRenderer,
  });

  TopbarMenuButtonRenderer topbarMenuButtonRenderer;
  TopbarButtonButtonRenderer buttonRenderer;

  factory TopbarButton.fromRawJson(String str) =>
      TopbarButton.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarButton.fromJson(Map<String, dynamic> json) => TopbarButton(
        topbarMenuButtonRenderer: json["topbarMenuButtonRenderer"] == null
            ? null
            : TopbarMenuButtonRenderer.fromJson(
                json["topbarMenuButtonRenderer"]),
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : TopbarButtonButtonRenderer.fromJson(json["buttonRenderer"]),
      );

  Map<String, dynamic> toJson() => {
        "topbarMenuButtonRenderer": topbarMenuButtonRenderer == null
            ? null
            : topbarMenuButtonRenderer.toJson(),
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toJson(),
      };
}

class TopbarButtonButtonRenderer {
  TopbarButtonButtonRenderer({
    this.style,
    this.size,
    this.text,
    this.icon,
    this.navigationEndpoint,
    this.trackingParams,
    this.targetId,
  });

  String style;
  String size;
  TitleClass text;
  IconImage icon;
  ButtonRendererNavigationEndpoint navigationEndpoint;
  String trackingParams;
  String targetId;

  factory TopbarButtonButtonRenderer.fromRawJson(String str) =>
      TopbarButtonButtonRenderer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory TopbarButtonButtonRenderer.fromJson(Map<String, dynamic> json) =>
      TopbarButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : json["size"],
        text: json["text"] == null ? null : TitleClass.fromJson(json["text"]),
        icon: json["icon"] == null ? null : IconImage.fromJson(json["icon"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : ButtonRendererNavigationEndpoint.fromJson(
                json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        targetId: json["targetId"] == null ? null : json["targetId"],
      );

  Map<String, dynamic> toJson() => {
        "style": style == null ? null : style,
        "size": size == null ? null : size,
        "text": text == null ? null : text.toJson(),
        "icon": icon == null ? null : icon.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "targetId": targetId == null ? null : targetId,
      };
}

class ButtonRendererNavigationEndpoint {
  ButtonRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.signInEndpoint,
  });

  String clickTrackingParams;
  NavigationEndpointCommandMetadata commandMetadata;
  SignInEndpoint signInEndpoint;

  factory ButtonRendererNavigationEndpoint.fromRawJson(String str) =>
      ButtonRendererNavigationEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ButtonRendererNavigationEndpoint.fromJson(
          Map<String, dynamic> json) =>
      ButtonRendererNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : NavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        signInEndpoint: json["signInEndpoint"] == null
            ? null
            : SignInEndpoint.fromJson(json["signInEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "signInEndpoint":
            signInEndpoint == null ? null : signInEndpoint.toJson(),
      };
}

class SignInEndpoint {
  SignInEndpoint({
    this.idamTag,
  });

  String idamTag;

  factory SignInEndpoint.fromRawJson(String str) =>
      SignInEndpoint.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SignInEndpoint.fromJson(Map<String, dynamic> json) => SignInEndpoint(
        idamTag: json["idamTag"] == null ? null : json["idamTag"],
      );

  Map<String, dynamic> toJson() => {
        "idamTag": idamTag == null ? null : idamTag,
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
    this.menuRequest,
  });

  IconImage icon;
  TopbarMenuButtonRendererMenuRenderer menuRenderer;
  String trackingParams;
  Accessibility accessibility;
  String tooltip;
  String style;
  String targetId;
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
            : Accessibility.fromJson(json["accessibility"]),
        tooltip: json["tooltip"] == null ? null : json["tooltip"],
        style: json["style"] == null ? null : json["style"],
        targetId: json["targetId"] == null ? null : json["targetId"],
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
        "menuRequest": menuRequest == null ? null : menuRequest.toJson(),
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
  });

  List<MultiPageMenuRendererSection> sections;
  String trackingParams;

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
      );

  Map<String, dynamic> toJson() => {
        "sections": sections == null
            ? null
            : List<dynamic>.from(sections.map((x) => x.toJson())),
        "trackingParams": trackingParams == null ? null : trackingParams,
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
  });

  IconImage icon;
  TitleClass title;
  CompactLinkRendererNavigationEndpoint navigationEndpoint;
  String trackingParams;

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
      );

  Map<String, dynamic> toJson() => {
        "icon": icon == null ? null : icon.toJson(),
        "title": title == null ? null : title.toJson(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toJson(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class CompactLinkRendererNavigationEndpoint {
  CompactLinkRendererNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.urlEndpoint,
  });

  String clickTrackingParams;
  NavigationEndpointCommandMetadata commandMetadata;
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
            : NavigationEndpointCommandMetadata.fromJson(
                json["commandMetadata"]),
        urlEndpoint: json["urlEndpoint"] == null
            ? null
            : UrlEndpoint.fromJson(json["urlEndpoint"]),
      );

  Map<String, dynamic> toJson() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toJson(),
        "urlEndpoint": urlEndpoint == null ? null : urlEndpoint.toJson(),
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
