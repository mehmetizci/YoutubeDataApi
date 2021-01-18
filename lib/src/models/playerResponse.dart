// To parse this JSON data, do
//
//     final playerResponse = playerResponseFromMap(jsonString);

import 'dart:convert';

class PlayerResponse {
  PlayerResponse({
    this.responseContext,
    this.playabilityStatus,
    this.streamingData,
    this.playerAds,
    this.playbackTracking,
    this.captions,
    this.videoDetails,
    this.annotations,
    this.playerConfig,
    this.storyboards,
    this.microformat,
    this.cards,
    this.trackingParams,
    this.attestation,
    this.messages,
    this.endscreen,
    this.adPlacements,
  });

  ResponseContext responseContext;
  PlayabilityStatus playabilityStatus;
  StreamingData streamingData;
  List<PlayerAd> playerAds;
  PlaybackTracking playbackTracking;
  Captions captions;
  VideoDetails videoDetails;
  List<Annotation> annotations;
  PlayerConfig playerConfig;
  Storyboards storyboards;
  Microformat microformat;
  Cards cards;
  String trackingParams;
  Attestation attestation;
  List<Message> messages;
  Endscreen endscreen;
  List<AdPlacement> adPlacements;

  factory PlayerResponse.fromJson(String str) =>
      PlayerResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PlayerResponse.fromMap(Map<String, dynamic> json) => PlayerResponse(
        responseContext: json["responseContext"] == null
            ? null
            : ResponseContext.fromMap(json["responseContext"]),
        playabilityStatus: json["playabilityStatus"] == null
            ? null
            : PlayabilityStatus.fromMap(json["playabilityStatus"]),
        streamingData: json["streamingData"] == null
            ? null
            : StreamingData.fromMap(json["streamingData"]),
        playerAds: json["playerAds"] == null
            ? null
            : List<PlayerAd>.from(
                json["playerAds"].map((x) => PlayerAd.fromMap(x))),
        playbackTracking: json["playbackTracking"] == null
            ? null
            : PlaybackTracking.fromMap(json["playbackTracking"]),
        captions: json["captions"] == null
            ? null
            : Captions.fromMap(json["captions"]),
        videoDetails: json["videoDetails"] == null
            ? null
            : VideoDetails.fromMap(json["videoDetails"]),
        annotations: json["annotations"] == null
            ? null
            : List<Annotation>.from(
                json["annotations"].map((x) => Annotation.fromMap(x))),
        playerConfig: json["playerConfig"] == null
            ? null
            : PlayerConfig.fromMap(json["playerConfig"]),
        storyboards: json["storyboards"] == null
            ? null
            : Storyboards.fromMap(json["storyboards"]),
        microformat: json["microformat"] == null
            ? null
            : Microformat.fromMap(json["microformat"]),
        cards: json["cards"] == null ? null : Cards.fromMap(json["cards"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        attestation: json["attestation"] == null
            ? null
            : Attestation.fromMap(json["attestation"]),
        messages: json["messages"] == null
            ? null
            : List<Message>.from(
                json["messages"].map((x) => Message.fromMap(x))),
        endscreen: json["endscreen"] == null
            ? null
            : Endscreen.fromMap(json["endscreen"]),
        adPlacements: json["adPlacements"] == null
            ? null
            : List<AdPlacement>.from(
                json["adPlacements"].map((x) => AdPlacement.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "responseContext":
            responseContext == null ? null : responseContext.toMap(),
        "playabilityStatus":
            playabilityStatus == null ? null : playabilityStatus.toMap(),
        "streamingData": streamingData == null ? null : streamingData.toMap(),
        "playerAds": playerAds == null
            ? null
            : List<dynamic>.from(playerAds.map((x) => x.toMap())),
        "playbackTracking":
            playbackTracking == null ? null : playbackTracking.toMap(),
        "captions": captions == null ? null : captions.toMap(),
        "videoDetails": videoDetails == null ? null : videoDetails.toMap(),
        "annotations": annotations == null
            ? null
            : List<dynamic>.from(annotations.map((x) => x.toMap())),
        "playerConfig": playerConfig == null ? null : playerConfig.toMap(),
        "storyboards": storyboards == null ? null : storyboards.toMap(),
        "microformat": microformat == null ? null : microformat.toMap(),
        "cards": cards == null ? null : cards.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "attestation": attestation == null ? null : attestation.toMap(),
        "messages": messages == null
            ? null
            : List<dynamic>.from(messages.map((x) => x.toMap())),
        "endscreen": endscreen == null ? null : endscreen.toMap(),
        "adPlacements": adPlacements == null
            ? null
            : List<dynamic>.from(adPlacements.map((x) => x.toMap())),
      };
}

class AdPlacement {
  AdPlacement({
    this.adPlacementRenderer,
  });

  AdPlacementRenderer adPlacementRenderer;

  factory AdPlacement.fromJson(String str) =>
      AdPlacement.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdPlacement.fromMap(Map<String, dynamic> json) => AdPlacement(
        adPlacementRenderer: json["adPlacementRenderer"] == null
            ? null
            : AdPlacementRenderer.fromMap(json["adPlacementRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "adPlacementRenderer":
            adPlacementRenderer == null ? null : adPlacementRenderer.toMap(),
      };
}

class AdPlacementRenderer {
  AdPlacementRenderer({
    this.config,
    this.renderer,
    this.elementId,
    this.adSlotLoggingData,
  });

  Config config;
  Renderer renderer;
  String elementId;
  AdSlotLoggingData adSlotLoggingData;

  factory AdPlacementRenderer.fromJson(String str) =>
      AdPlacementRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdPlacementRenderer.fromMap(Map<String, dynamic> json) =>
      AdPlacementRenderer(
        config: json["config"] == null ? null : Config.fromMap(json["config"]),
        renderer: json["renderer"] == null
            ? null
            : Renderer.fromMap(json["renderer"]),
        elementId: json["elementId"] == null ? null : json["elementId"],
        adSlotLoggingData: json["adSlotLoggingData"] == null
            ? null
            : AdSlotLoggingData.fromMap(json["adSlotLoggingData"]),
      );

  Map<String, dynamic> toMap() => {
        "config": config == null ? null : config.toMap(),
        "renderer": renderer == null ? null : renderer.toMap(),
        "elementId": elementId == null ? null : elementId,
        "adSlotLoggingData":
            adSlotLoggingData == null ? null : adSlotLoggingData.toMap(),
      };
}

class AdSlotLoggingData {
  AdSlotLoggingData({
    this.serializedSlotAdServingDataEntry,
  });

  String serializedSlotAdServingDataEntry;

  factory AdSlotLoggingData.fromJson(String str) =>
      AdSlotLoggingData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdSlotLoggingData.fromMap(Map<String, dynamic> json) =>
      AdSlotLoggingData(
        serializedSlotAdServingDataEntry:
            json["serializedSlotAdServingDataEntry"] == null
                ? null
                : json["serializedSlotAdServingDataEntry"],
      );

  Map<String, dynamic> toMap() => {
        "serializedSlotAdServingDataEntry":
            serializedSlotAdServingDataEntry == null
                ? null
                : serializedSlotAdServingDataEntry,
      };
}

class Config {
  Config({
    this.adPlacementConfig,
  });

  AdPlacementConfig adPlacementConfig;

  factory Config.fromJson(String str) => Config.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Config.fromMap(Map<String, dynamic> json) => Config(
        adPlacementConfig: json["adPlacementConfig"] == null
            ? null
            : AdPlacementConfig.fromMap(json["adPlacementConfig"]),
      );

  Map<String, dynamic> toMap() => {
        "adPlacementConfig":
            adPlacementConfig == null ? null : adPlacementConfig.toMap(),
      };
}

class AdPlacementConfig {
  AdPlacementConfig({
    this.kind,
    this.hideCueRangeMarker,
    this.adTimeOffset,
  });

  String kind;
  bool hideCueRangeMarker;
  AdTimeOffset adTimeOffset;

  factory AdPlacementConfig.fromJson(String str) =>
      AdPlacementConfig.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdPlacementConfig.fromMap(Map<String, dynamic> json) =>
      AdPlacementConfig(
        kind: json["kind"] == null ? null : json["kind"],
        hideCueRangeMarker: json["hideCueRangeMarker"] == null
            ? null
            : json["hideCueRangeMarker"],
        adTimeOffset: json["adTimeOffset"] == null
            ? null
            : AdTimeOffset.fromMap(json["adTimeOffset"]),
      );

  Map<String, dynamic> toMap() => {
        "kind": kind == null ? null : kind,
        "hideCueRangeMarker":
            hideCueRangeMarker == null ? null : hideCueRangeMarker,
        "adTimeOffset": adTimeOffset == null ? null : adTimeOffset.toMap(),
      };
}

class AdTimeOffset {
  AdTimeOffset({
    this.offsetStartMilliseconds,
    this.offsetEndMilliseconds,
  });

  String offsetStartMilliseconds;
  String offsetEndMilliseconds;

  factory AdTimeOffset.fromJson(String str) =>
      AdTimeOffset.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdTimeOffset.fromMap(Map<String, dynamic> json) => AdTimeOffset(
        offsetStartMilliseconds: json["offsetStartMilliseconds"] == null
            ? null
            : json["offsetStartMilliseconds"],
        offsetEndMilliseconds: json["offsetEndMilliseconds"] == null
            ? null
            : json["offsetEndMilliseconds"],
      );

  Map<String, dynamic> toMap() => {
        "offsetStartMilliseconds":
            offsetStartMilliseconds == null ? null : offsetStartMilliseconds,
        "offsetEndMilliseconds":
            offsetEndMilliseconds == null ? null : offsetEndMilliseconds,
      };
}

class Renderer {
  Renderer({
    this.actionCompanionAdRenderer,
    this.linearAdSequenceRenderer,
    this.adBreakServiceRenderer,
  });

  ActionCompanionAdRenderer actionCompanionAdRenderer;
  LinearAdSequenceRenderer linearAdSequenceRenderer;
  AdBreakServiceRenderer adBreakServiceRenderer;

  factory Renderer.fromJson(String str) => Renderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Renderer.fromMap(Map<String, dynamic> json) => Renderer(
        actionCompanionAdRenderer: json["actionCompanionAdRenderer"] == null
            ? null
            : ActionCompanionAdRenderer.fromMap(
                json["actionCompanionAdRenderer"]),
        linearAdSequenceRenderer: json["linearAdSequenceRenderer"] == null
            ? null
            : LinearAdSequenceRenderer.fromMap(
                json["linearAdSequenceRenderer"]),
        adBreakServiceRenderer: json["adBreakServiceRenderer"] == null
            ? null
            : AdBreakServiceRenderer.fromMap(json["adBreakServiceRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "actionCompanionAdRenderer": actionCompanionAdRenderer == null
            ? null
            : actionCompanionAdRenderer.toMap(),
        "linearAdSequenceRenderer": linearAdSequenceRenderer == null
            ? null
            : linearAdSequenceRenderer.toMap(),
        "adBreakServiceRenderer": adBreakServiceRenderer == null
            ? null
            : adBreakServiceRenderer.toMap(),
      };
}

class ActionCompanionAdRenderer {
  ActionCompanionAdRenderer({
    this.headline,
    this.description,
    this.actionButton,
    this.iconImage,
    this.bannerImage,
    this.navigationEndpoint,
    this.impressionCommands,
    this.trackingParams,
    this.adInfoRenderer,
    this.adVideoId,
    this.adLayoutLoggingData,
  });

  Description headline;
  Description description;
  ActionButton actionButton;
  BannerImage iconImage;
  BannerImage bannerImage;
  NavigationEndpointClass navigationEndpoint;
  List<ImpressionCommand> impressionCommands;
  String trackingParams;
  AdInfoRenderer adInfoRenderer;
  String adVideoId;
  AdLayoutLoggingData adLayoutLoggingData;

  factory ActionCompanionAdRenderer.fromJson(String str) =>
      ActionCompanionAdRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ActionCompanionAdRenderer.fromMap(Map<String, dynamic> json) =>
      ActionCompanionAdRenderer(
        headline: json["headline"] == null
            ? null
            : Description.fromMap(json["headline"]),
        description: json["description"] == null
            ? null
            : Description.fromMap(json["description"]),
        actionButton: json["actionButton"] == null
            ? null
            : ActionButton.fromMap(json["actionButton"]),
        iconImage: json["iconImage"] == null
            ? null
            : BannerImage.fromMap(json["iconImage"]),
        bannerImage: json["bannerImage"] == null
            ? null
            : BannerImage.fromMap(json["bannerImage"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : NavigationEndpointClass.fromMap(json["navigationEndpoint"]),
        impressionCommands: json["impressionCommands"] == null
            ? null
            : List<ImpressionCommand>.from(json["impressionCommands"]
                .map((x) => ImpressionCommand.fromMap(x))),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        adInfoRenderer: json["adInfoRenderer"] == null
            ? null
            : AdInfoRenderer.fromMap(json["adInfoRenderer"]),
        adVideoId: json["adVideoId"] == null ? null : json["adVideoId"],
        adLayoutLoggingData: json["adLayoutLoggingData"] == null
            ? null
            : AdLayoutLoggingData.fromMap(json["adLayoutLoggingData"]),
      );

  Map<String, dynamic> toMap() => {
        "headline": headline == null ? null : headline.toMap(),
        "description": description == null ? null : description.toMap(),
        "actionButton": actionButton == null ? null : actionButton.toMap(),
        "iconImage": iconImage == null ? null : iconImage.toMap(),
        "bannerImage": bannerImage == null ? null : bannerImage.toMap(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "impressionCommands": impressionCommands == null
            ? null
            : List<dynamic>.from(impressionCommands.map((x) => x.toMap())),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "adInfoRenderer":
            adInfoRenderer == null ? null : adInfoRenderer.toMap(),
        "adVideoId": adVideoId == null ? null : adVideoId,
        "adLayoutLoggingData":
            adLayoutLoggingData == null ? null : adLayoutLoggingData.toMap(),
      };
}

class ActionButton {
  ActionButton({
    this.buttonRenderer,
  });

  PurpleButtonRenderer buttonRenderer;

  factory ActionButton.fromJson(String str) =>
      ActionButton.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ActionButton.fromMap(Map<String, dynamic> json) => ActionButton(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : PurpleButtonRenderer.fromMap(json["buttonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toMap(),
      };
}

class PurpleButtonRenderer {
  PurpleButtonRenderer({
    this.text,
    this.navigationEndpoint,
    this.trackingParams,
  });

  HeaderText text;
  NavigationEndpointClass navigationEndpoint;
  String trackingParams;

  factory PurpleButtonRenderer.fromJson(String str) =>
      PurpleButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleButtonRenderer.fromMap(Map<String, dynamic> json) =>
      PurpleButtonRenderer(
        text: json["text"] == null ? null : HeaderText.fromMap(json["text"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : NavigationEndpointClass.fromMap(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "text": text == null ? null : text.toMap(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class NavigationEndpointClass {
  NavigationEndpointClass({
    this.clickTrackingParams,
    this.loggingUrls,
    this.commandMetadata,
    this.urlEndpoint,
  });

  String clickTrackingParams;
  List<PtrackingUrl> loggingUrls;
  ClickthroughEndpointCommandMetadata commandMetadata;
  UrlEndpoint urlEndpoint;

  factory NavigationEndpointClass.fromJson(String str) =>
      NavigationEndpointClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NavigationEndpointClass.fromMap(Map<String, dynamic> json) =>
      NavigationEndpointClass(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        loggingUrls: json["loggingUrls"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["loggingUrls"].map((x) => PtrackingUrl.fromMap(x))),
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ClickthroughEndpointCommandMetadata.fromMap(
                json["commandMetadata"]),
        urlEndpoint: json["urlEndpoint"] == null
            ? null
            : UrlEndpoint.fromMap(json["urlEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "loggingUrls": loggingUrls == null
            ? null
            : List<dynamic>.from(loggingUrls.map((x) => x.toMap())),
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "urlEndpoint": urlEndpoint == null ? null : urlEndpoint.toMap(),
      };
}

class ClickthroughEndpointCommandMetadata {
  ClickthroughEndpointCommandMetadata({
    this.webCommandMetadata,
  });

  PurpleWebCommandMetadata webCommandMetadata;

  factory ClickthroughEndpointCommandMetadata.fromJson(String str) =>
      ClickthroughEndpointCommandMetadata.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ClickthroughEndpointCommandMetadata.fromMap(
          Map<String, dynamic> json) =>
      ClickthroughEndpointCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : PurpleWebCommandMetadata.fromMap(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toMap() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toMap(),
      };
}

class PurpleWebCommandMetadata {
  PurpleWebCommandMetadata({
    this.url,
    this.webPageType,
    this.rootVe,
    this.apiUrl,
  });

  String url;
  WebPageType webPageType;
  int rootVe;
  String apiUrl;

  factory PurpleWebCommandMetadata.fromJson(String str) =>
      PurpleWebCommandMetadata.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleWebCommandMetadata.fromMap(Map<String, dynamic> json) =>
      PurpleWebCommandMetadata(
        url: json["url"] == null ? null : json["url"],
        webPageType: json["webPageType"] == null
            ? null
            : webPageTypeValues.map[json["webPageType"]],
        rootVe: json["rootVe"] == null ? null : json["rootVe"],
        apiUrl: json["apiUrl"] == null ? null : json["apiUrl"],
      );

  Map<String, dynamic> toMap() => {
        "url": url == null ? null : url,
        "webPageType":
            webPageType == null ? null : webPageTypeValues.reverse[webPageType],
        "rootVe": rootVe == null ? null : rootVe,
        "apiUrl": apiUrl == null ? null : apiUrl,
      };
}

enum WebPageType {
  WEB_PAGE_TYPE_UNKNOWN,
  WEB_PAGE_TYPE_CHANNEL,
  WEB_PAGE_TYPE_WATCH,
  WEB_PAGE_TYPE_BROWSE
}

final webPageTypeValues = EnumValues({
  "WEB_PAGE_TYPE_BROWSE": WebPageType.WEB_PAGE_TYPE_BROWSE,
  "WEB_PAGE_TYPE_CHANNEL": WebPageType.WEB_PAGE_TYPE_CHANNEL,
  "WEB_PAGE_TYPE_UNKNOWN": WebPageType.WEB_PAGE_TYPE_UNKNOWN,
  "WEB_PAGE_TYPE_WATCH": WebPageType.WEB_PAGE_TYPE_WATCH
});

class PtrackingUrl {
  PtrackingUrl({
    this.baseUrl,
  });

  String baseUrl;

  factory PtrackingUrl.fromJson(String str) =>
      PtrackingUrl.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PtrackingUrl.fromMap(Map<String, dynamic> json) => PtrackingUrl(
        baseUrl: json["baseUrl"] == null ? null : json["baseUrl"],
      );

  Map<String, dynamic> toMap() => {
        "baseUrl": baseUrl == null ? null : baseUrl,
      };
}

class UrlEndpoint {
  UrlEndpoint({
    this.url,
    this.target,
  });

  String url;
  Target target;

  factory UrlEndpoint.fromJson(String str) =>
      UrlEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UrlEndpoint.fromMap(Map<String, dynamic> json) => UrlEndpoint(
        url: json["url"] == null ? null : json["url"],
        target:
            json["target"] == null ? null : targetValues.map[json["target"]],
      );

  Map<String, dynamic> toMap() => {
        "url": url == null ? null : url,
        "target": target == null ? null : targetValues.reverse[target],
      };
}

enum Target { TARGET_NEW_WINDOW }

final targetValues =
    EnumValues({"TARGET_NEW_WINDOW": Target.TARGET_NEW_WINDOW});

class HeaderText {
  HeaderText({
    this.simpleText,
  });

  String simpleText;

  factory HeaderText.fromJson(String str) =>
      HeaderText.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory HeaderText.fromMap(Map<String, dynamic> json) => HeaderText(
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
      );

  Map<String, dynamic> toMap() => {
        "simpleText": simpleText == null ? null : simpleText,
      };
}

class AdInfoRenderer {
  AdInfoRenderer({
    this.adHoverTextButtonRenderer,
  });

  AdHoverTextButtonRenderer adHoverTextButtonRenderer;

  factory AdInfoRenderer.fromJson(String str) =>
      AdInfoRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdInfoRenderer.fromMap(Map<String, dynamic> json) => AdInfoRenderer(
        adHoverTextButtonRenderer: json["adHoverTextButtonRenderer"] == null
            ? null
            : AdHoverTextButtonRenderer.fromMap(
                json["adHoverTextButtonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "adHoverTextButtonRenderer": adHoverTextButtonRenderer == null
            ? null
            : adHoverTextButtonRenderer.toMap(),
      };
}

class AdHoverTextButtonRenderer {
  AdHoverTextButtonRenderer({
    this.button,
    this.hoverText,
    this.trackingParams,
  });

  Button button;
  HeaderText hoverText;
  String trackingParams;

  factory AdHoverTextButtonRenderer.fromJson(String str) =>
      AdHoverTextButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdHoverTextButtonRenderer.fromMap(Map<String, dynamic> json) =>
      AdHoverTextButtonRenderer(
        button: json["button"] == null ? null : Button.fromMap(json["button"]),
        hoverText: json["hoverText"] == null
            ? null
            : HeaderText.fromMap(json["hoverText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "button": button == null ? null : button.toMap(),
        "hoverText": hoverText == null ? null : hoverText.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class ServiceEndpoint {
  ServiceEndpoint({
    this.clickTrackingParams,
    this.muteAdEndpoint,
    this.commandMetadata,
    this.adInfoDialogEndpoint,
    this.loggingUrls,
    this.pingingEndpoint,
  });

  String clickTrackingParams;
  DismissStrategy muteAdEndpoint;
  PurpleCommandMetadata commandMetadata;
  AdInfoDialogEndpoint adInfoDialogEndpoint;
  List<PtrackingUrl> loggingUrls;
  PingingEndpoint pingingEndpoint;

  factory ServiceEndpoint.fromJson(String str) =>
      ServiceEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ServiceEndpoint.fromMap(Map<String, dynamic> json) => ServiceEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        muteAdEndpoint: json["muteAdEndpoint"] == null
            ? null
            : DismissStrategy.fromMap(json["muteAdEndpoint"]),
        commandMetadata: json["commandMetadata"] == null
            ? null
            : PurpleCommandMetadata.fromMap(json["commandMetadata"]),
        adInfoDialogEndpoint: json["adInfoDialogEndpoint"] == null
            ? null
            : AdInfoDialogEndpoint.fromMap(json["adInfoDialogEndpoint"]),
        loggingUrls: json["loggingUrls"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["loggingUrls"].map((x) => PtrackingUrl.fromMap(x))),
        pingingEndpoint: json["pingingEndpoint"] == null
            ? null
            : PingingEndpoint.fromMap(json["pingingEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "muteAdEndpoint":
            muteAdEndpoint == null ? null : muteAdEndpoint.toMap(),
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "adInfoDialogEndpoint":
            adInfoDialogEndpoint == null ? null : adInfoDialogEndpoint.toMap(),
        "loggingUrls": loggingUrls == null
            ? null
            : List<dynamic>.from(loggingUrls.map((x) => x.toMap())),
        "pingingEndpoint":
            pingingEndpoint == null ? null : pingingEndpoint.toMap(),
      };
}

class AdFeedbackRenderer {
  AdFeedbackRenderer({
    this.title,
    this.confirmLabel,
    this.cancelLabel,
    this.reasons,
    this.completionMessage,
    this.trackingParams,
    this.cancelEndpoint,
    this.impressionEndpoint,
    this.cancelRenderer,
    this.undoRenderer,
    this.reasonsTitle,
  });

  MessageTitle title;
  MessageTitle confirmLabel;
  MessageTitle cancelLabel;
  List<Reason> reasons;
  MessageTitle completionMessage;
  String trackingParams;
  ServiceEndpointClass cancelEndpoint;
  ServiceEndpointClass impressionEndpoint;
  Button cancelRenderer;
  AcceptButton undoRenderer;
  MessageTitle reasonsTitle;

  factory AdFeedbackRenderer.fromJson(String str) =>
      AdFeedbackRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdFeedbackRenderer.fromMap(Map<String, dynamic> json) =>
      AdFeedbackRenderer(
        title:
            json["title"] == null ? null : MessageTitle.fromMap(json["title"]),
        confirmLabel: json["confirmLabel"] == null
            ? null
            : MessageTitle.fromMap(json["confirmLabel"]),
        cancelLabel: json["cancelLabel"] == null
            ? null
            : MessageTitle.fromMap(json["cancelLabel"]),
        reasons: json["reasons"] == null
            ? null
            : List<Reason>.from(json["reasons"].map((x) => Reason.fromMap(x))),
        completionMessage: json["completionMessage"] == null
            ? null
            : MessageTitle.fromMap(json["completionMessage"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        cancelEndpoint: json["cancelEndpoint"] == null
            ? null
            : ServiceEndpointClass.fromMap(json["cancelEndpoint"]),
        impressionEndpoint: json["impressionEndpoint"] == null
            ? null
            : ServiceEndpointClass.fromMap(json["impressionEndpoint"]),
        cancelRenderer: json["cancelRenderer"] == null
            ? null
            : Button.fromMap(json["cancelRenderer"]),
        undoRenderer: json["undoRenderer"] == null
            ? null
            : AcceptButton.fromMap(json["undoRenderer"]),
        reasonsTitle: json["reasonsTitle"] == null
            ? null
            : MessageTitle.fromMap(json["reasonsTitle"]),
      );

  Map<String, dynamic> toMap() => {
        "title": title == null ? null : title.toMap(),
        "confirmLabel": confirmLabel == null ? null : confirmLabel.toMap(),
        "cancelLabel": cancelLabel == null ? null : cancelLabel.toMap(),
        "reasons": reasons == null
            ? null
            : List<dynamic>.from(reasons.map((x) => x.toMap())),
        "completionMessage":
            completionMessage == null ? null : completionMessage.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "cancelEndpoint":
            cancelEndpoint == null ? null : cancelEndpoint.toMap(),
        "impressionEndpoint":
            impressionEndpoint == null ? null : impressionEndpoint.toMap(),
        "cancelRenderer":
            cancelRenderer == null ? null : cancelRenderer.toMap(),
        "undoRenderer": undoRenderer == null ? null : undoRenderer.toMap(),
        "reasonsTitle": reasonsTitle == null ? null : reasonsTitle.toMap(),
      };
}

class AdFeedbackEndpointContent {
  AdFeedbackEndpointContent({
    this.adFeedbackRenderer,
  });

  AdFeedbackRenderer adFeedbackRenderer;

  factory AdFeedbackEndpointContent.fromJson(String str) =>
      AdFeedbackEndpointContent.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdFeedbackEndpointContent.fromMap(Map<String, dynamic> json) =>
      AdFeedbackEndpointContent(
        adFeedbackRenderer: json["adFeedbackRenderer"] == null
            ? null
            : AdFeedbackRenderer.fromMap(json["adFeedbackRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "adFeedbackRenderer":
            adFeedbackRenderer == null ? null : adFeedbackRenderer.toMap(),
      };
}

class AdFeedbackEndpoint {
  AdFeedbackEndpoint({
    this.content,
  });

  AdFeedbackEndpointContent content;

  factory AdFeedbackEndpoint.fromJson(String str) =>
      AdFeedbackEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdFeedbackEndpoint.fromMap(Map<String, dynamic> json) =>
      AdFeedbackEndpoint(
        content: json["content"] == null
            ? null
            : AdFeedbackEndpointContent.fromMap(json["content"]),
      );

  Map<String, dynamic> toMap() => {
        "content": content == null ? null : content.toMap(),
      };
}

class FluffyNavigationEndpoint {
  FluffyNavigationEndpoint({
    this.clickTrackingParams,
    this.loggingUrls,
    this.adFeedbackEndpoint,
  });

  String clickTrackingParams;
  List<PtrackingUrl> loggingUrls;
  AdFeedbackEndpoint adFeedbackEndpoint;

  factory FluffyNavigationEndpoint.fromJson(String str) =>
      FluffyNavigationEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffyNavigationEndpoint.fromMap(Map<String, dynamic> json) =>
      FluffyNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        loggingUrls: json["loggingUrls"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["loggingUrls"].map((x) => PtrackingUrl.fromMap(x))),
        adFeedbackEndpoint: json["adFeedbackEndpoint"] == null
            ? null
            : AdFeedbackEndpoint.fromMap(json["adFeedbackEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "loggingUrls": loggingUrls == null
            ? null
            : List<dynamic>.from(loggingUrls.map((x) => x.toMap())),
        "adFeedbackEndpoint":
            adFeedbackEndpoint == null ? null : adFeedbackEndpoint.toMap(),
      };
}

class MuteAdRendererButtonRenderer {
  MuteAdRendererButtonRenderer({
    this.style,
    this.text,
    this.icon,
    this.navigationEndpoint,
    this.trackingParams,
  });

  Style style;
  MessageTitle text;
  ButtonRendererIcon icon;
  FluffyNavigationEndpoint navigationEndpoint;
  String trackingParams;

  factory MuteAdRendererButtonRenderer.fromJson(String str) =>
      MuteAdRendererButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MuteAdRendererButtonRenderer.fromMap(Map<String, dynamic> json) =>
      MuteAdRendererButtonRenderer(
        style: json["style"] == null ? null : styleValues.map[json["style"]],
        text: json["text"] == null ? null : MessageTitle.fromMap(json["text"]),
        icon: json["icon"] == null
            ? null
            : ButtonRendererIcon.fromMap(json["icon"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : FluffyNavigationEndpoint.fromMap(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "style": style == null ? null : styleValues.reverse[style],
        "text": text == null ? null : text.toMap(),
        "icon": icon == null ? null : icon.toMap(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class MuteAdRenderer {
  MuteAdRenderer({
    this.buttonRenderer,
  });

  MuteAdRendererButtonRenderer buttonRenderer;

  factory MuteAdRenderer.fromJson(String str) =>
      MuteAdRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MuteAdRenderer.fromMap(Map<String, dynamic> json) => MuteAdRenderer(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : MuteAdRendererButtonRenderer.fromMap(json["buttonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toMap(),
      };
}

class AdInfoDialogRenderer {
  AdInfoDialogRenderer({
    this.dialogMessage,
    this.muteAdRenderer,
    this.confirmLabel,
    this.confirmServiceEndpoint,
    this.trackingParams,
    this.title,
    this.adReasons,
    this.impressionEndpoints,
    this.closeOverlayRenderer,
  });

  DialogMessage dialogMessage;
  MuteAdRenderer muteAdRenderer;
  HeaderText confirmLabel;
  ImpressionCommand confirmServiceEndpoint;
  String trackingParams;
  HeaderText title;
  List<HeaderText> adReasons;
  List<ImpressionCommand> impressionEndpoints;
  Button closeOverlayRenderer;

  factory AdInfoDialogRenderer.fromJson(String str) =>
      AdInfoDialogRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdInfoDialogRenderer.fromMap(Map<String, dynamic> json) =>
      AdInfoDialogRenderer(
        dialogMessage: json["dialogMessage"] == null
            ? null
            : DialogMessage.fromMap(json["dialogMessage"]),
        muteAdRenderer: json["muteAdRenderer"] == null
            ? null
            : MuteAdRenderer.fromMap(json["muteAdRenderer"]),
        confirmLabel: json["confirmLabel"] == null
            ? null
            : HeaderText.fromMap(json["confirmLabel"]),
        confirmServiceEndpoint: json["confirmServiceEndpoint"] == null
            ? null
            : ImpressionCommand.fromMap(json["confirmServiceEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        title: json["title"] == null ? null : HeaderText.fromMap(json["title"]),
        adReasons: json["adReasons"] == null
            ? null
            : List<HeaderText>.from(
                json["adReasons"].map((x) => HeaderText.fromMap(x))),
        impressionEndpoints: json["impressionEndpoints"] == null
            ? null
            : List<ImpressionCommand>.from(json["impressionEndpoints"]
                .map((x) => ImpressionCommand.fromMap(x))),
        closeOverlayRenderer: json["closeOverlayRenderer"] == null
            ? null
            : Button.fromMap(json["closeOverlayRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "dialogMessage": dialogMessage == null ? null : dialogMessage.toMap(),
        "muteAdRenderer":
            muteAdRenderer == null ? null : muteAdRenderer.toMap(),
        "confirmLabel": confirmLabel == null ? null : confirmLabel.toMap(),
        "confirmServiceEndpoint": confirmServiceEndpoint == null
            ? null
            : confirmServiceEndpoint.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "title": title == null ? null : title.toMap(),
        "adReasons": adReasons == null
            ? null
            : List<dynamic>.from(adReasons.map((x) => x.toMap())),
        "impressionEndpoints": impressionEndpoints == null
            ? null
            : List<dynamic>.from(impressionEndpoints.map((x) => x.toMap())),
        "closeOverlayRenderer":
            closeOverlayRenderer == null ? null : closeOverlayRenderer.toMap(),
      };
}

class Dialog {
  Dialog({
    this.adInfoDialogRenderer,
  });

  AdInfoDialogRenderer adInfoDialogRenderer;

  factory Dialog.fromJson(String str) => Dialog.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Dialog.fromMap(Map<String, dynamic> json) => Dialog(
        adInfoDialogRenderer: json["adInfoDialogRenderer"] == null
            ? null
            : AdInfoDialogRenderer.fromMap(json["adInfoDialogRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "adInfoDialogRenderer":
            adInfoDialogRenderer == null ? null : adInfoDialogRenderer.toMap(),
      };
}

class AdInfoDialogEndpoint {
  AdInfoDialogEndpoint({
    this.dialog,
  });

  Dialog dialog;

  factory AdInfoDialogEndpoint.fromJson(String str) =>
      AdInfoDialogEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdInfoDialogEndpoint.fromMap(Map<String, dynamic> json) =>
      AdInfoDialogEndpoint(
        dialog: json["dialog"] == null ? null : Dialog.fromMap(json["dialog"]),
      );

  Map<String, dynamic> toMap() => {
        "dialog": dialog == null ? null : dialog.toMap(),
      };
}

class PurpleNavigationEndpoint {
  PurpleNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.adInfoDialogEndpoint,
  });

  String clickTrackingParams;
  PurpleCommandMetadata commandMetadata;
  AdInfoDialogEndpoint adInfoDialogEndpoint;

  factory PurpleNavigationEndpoint.fromJson(String str) =>
      PurpleNavigationEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleNavigationEndpoint.fromMap(Map<String, dynamic> json) =>
      PurpleNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : PurpleCommandMetadata.fromMap(json["commandMetadata"]),
        adInfoDialogEndpoint: json["adInfoDialogEndpoint"] == null
            ? null
            : AdInfoDialogEndpoint.fromMap(json["adInfoDialogEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "adInfoDialogEndpoint":
            adInfoDialogEndpoint == null ? null : adInfoDialogEndpoint.toMap(),
      };
}

class ButtonButtonRenderer {
  ButtonButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.icon,
    this.navigationEndpoint,
    this.trackingParams,
    this.serviceEndpoint,
  });

  Style style;
  Size size;
  bool isDisabled;
  ButtonRendererIcon icon;
  PurpleNavigationEndpoint navigationEndpoint;
  String trackingParams;
  ServiceEndpoint serviceEndpoint;

  factory ButtonButtonRenderer.fromJson(String str) =>
      ButtonButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ButtonButtonRenderer.fromMap(Map<String, dynamic> json) =>
      ButtonButtonRenderer(
        style: json["style"] == null ? null : styleValues.map[json["style"]],
        size: json["size"] == null ? null : sizeValues.map[json["size"]],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        icon: json["icon"] == null
            ? null
            : ButtonRendererIcon.fromMap(json["icon"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : PurpleNavigationEndpoint.fromMap(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : ServiceEndpoint.fromMap(json["serviceEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "style": style == null ? null : styleValues.reverse[style],
        "size": size == null ? null : sizeValues.reverse[size],
        "isDisabled": isDisabled == null ? null : isDisabled,
        "icon": icon == null ? null : icon.toMap(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toMap(),
      };
}

class Button {
  Button({
    this.buttonRenderer,
  });

  ButtonButtonRenderer buttonRenderer;

  factory Button.fromJson(String str) => Button.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Button.fromMap(Map<String, dynamic> json) => Button(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : ButtonButtonRenderer.fromMap(json["buttonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toMap(),
      };
}

class PurpleCommandMetadata {
  PurpleCommandMetadata({
    this.webCommandMetadata,
  });

  TentacledWebCommandMetadata webCommandMetadata;

  factory PurpleCommandMetadata.fromJson(String str) =>
      PurpleCommandMetadata.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleCommandMetadata.fromMap(Map<String, dynamic> json) =>
      PurpleCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : TentacledWebCommandMetadata.fromMap(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toMap() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toMap(),
      };
}

class TentacledWebCommandMetadata {
  TentacledWebCommandMetadata({
    this.ignoreNavigation,
  });

  bool ignoreNavigation;

  factory TentacledWebCommandMetadata.fromJson(String str) =>
      TentacledWebCommandMetadata.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TentacledWebCommandMetadata.fromMap(Map<String, dynamic> json) =>
      TentacledWebCommandMetadata(
        ignoreNavigation:
            json["ignoreNavigation"] == null ? null : json["ignoreNavigation"],
      );

  Map<String, dynamic> toMap() => {
        "ignoreNavigation": ignoreNavigation == null ? null : ignoreNavigation,
      };
}

class DismissStrategy {
  DismissStrategy({
    this.type,
  });

  Type type;

  factory DismissStrategy.fromJson(String str) =>
      DismissStrategy.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DismissStrategy.fromMap(Map<String, dynamic> json) => DismissStrategy(
        type: json["type"] == null ? null : typeValues.map[json["type"]],
      );

  Map<String, dynamic> toMap() => {
        "type": type == null ? null : typeValues.reverse[type],
      };
}

enum Type {
  SKIP,
  HIDE,
  UNDO,
  TOOLTIP_DISMISS_TYPE_TAP_ANYWHERE,
  TOOLTIP_POSITION_TYPE_ABOVE_START
}

final typeValues = EnumValues({
  "HIDE": Type.HIDE,
  "SKIP": Type.SKIP,
  "TOOLTIP_DISMISS_TYPE_TAP_ANYWHERE": Type.TOOLTIP_DISMISS_TYPE_TAP_ANYWHERE,
  "TOOLTIP_POSITION_TYPE_ABOVE_START": Type.TOOLTIP_POSITION_TYPE_ABOVE_START,
  "UNDO": Type.UNDO
});

class PingingEndpoint {
  PingingEndpoint({
    this.hack,
  });

  bool hack;

  factory PingingEndpoint.fromJson(String str) =>
      PingingEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PingingEndpoint.fromMap(Map<String, dynamic> json) => PingingEndpoint(
        hack: json["hack"] == null ? null : json["hack"],
      );

  Map<String, dynamic> toMap() => {
        "hack": hack == null ? null : hack,
      };
}

class ServiceEndpointClass {
  ServiceEndpointClass({
    this.clickTrackingParams,
    this.muteAdEndpoint,
  });

  String clickTrackingParams;
  DismissStrategy muteAdEndpoint;

  factory ServiceEndpointClass.fromJson(String str) =>
      ServiceEndpointClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ServiceEndpointClass.fromMap(Map<String, dynamic> json) =>
      ServiceEndpointClass(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        muteAdEndpoint: json["muteAdEndpoint"] == null
            ? null
            : DismissStrategy.fromMap(json["muteAdEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "muteAdEndpoint":
            muteAdEndpoint == null ? null : muteAdEndpoint.toMap(),
      };
}

class MessageTitle {
  MessageTitle({
    this.runs,
  });

  List<MessageTitleRun> runs;

  factory MessageTitle.fromJson(String str) =>
      MessageTitle.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MessageTitle.fromMap(Map<String, dynamic> json) => MessageTitle(
        runs: json["runs"] == null
            ? null
            : List<MessageTitleRun>.from(
                json["runs"].map((x) => MessageTitleRun.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toMap())),
      };
}

class MessageTitleRun {
  MessageTitleRun({
    this.text,
  });

  String text;

  factory MessageTitleRun.fromJson(String str) =>
      MessageTitleRun.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MessageTitleRun.fromMap(Map<String, dynamic> json) => MessageTitleRun(
        text: json["text"] == null ? null : json["text"],
      );

  Map<String, dynamic> toMap() => {
        "text": text == null ? null : text,
      };
}

class Reason {
  Reason({
    this.reason,
    this.endpoint,
  });

  MessageTitle reason;
  ReasonEndpoint endpoint;

  factory Reason.fromJson(String str) => Reason.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Reason.fromMap(Map<String, dynamic> json) => Reason(
        reason: json["reason"] == null
            ? null
            : MessageTitle.fromMap(json["reason"]),
        endpoint: json["endpoint"] == null
            ? null
            : ReasonEndpoint.fromMap(json["endpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "reason": reason == null ? null : reason.toMap(),
        "endpoint": endpoint == null ? null : endpoint.toMap(),
      };
}

class ReasonEndpoint {
  ReasonEndpoint({
    this.clickTrackingParams,
    this.loggingUrls,
    this.muteAdEndpoint,
  });

  String clickTrackingParams;
  List<PtrackingUrl> loggingUrls;
  DismissStrategy muteAdEndpoint;

  factory ReasonEndpoint.fromJson(String str) =>
      ReasonEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ReasonEndpoint.fromMap(Map<String, dynamic> json) => ReasonEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        loggingUrls: json["loggingUrls"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["loggingUrls"].map((x) => PtrackingUrl.fromMap(x))),
        muteAdEndpoint: json["muteAdEndpoint"] == null
            ? null
            : DismissStrategy.fromMap(json["muteAdEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "loggingUrls": loggingUrls == null
            ? null
            : List<dynamic>.from(loggingUrls.map((x) => x.toMap())),
        "muteAdEndpoint":
            muteAdEndpoint == null ? null : muteAdEndpoint.toMap(),
      };
}

class AcceptButton {
  AcceptButton({
    this.buttonRenderer,
  });

  AcceptButtonButtonRenderer buttonRenderer;

  factory AcceptButton.fromJson(String str) =>
      AcceptButton.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AcceptButton.fromMap(Map<String, dynamic> json) => AcceptButton(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : AcceptButtonButtonRenderer.fromMap(json["buttonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toMap(),
      };
}

class AcceptButtonButtonRenderer {
  AcceptButtonButtonRenderer({
    this.style,
    this.size,
    this.text,
    this.serviceEndpoint,
    this.trackingParams,
    this.command,
  });

  String style;
  Size size;
  MessageTitle text;
  ServiceEndpointClass serviceEndpoint;
  String trackingParams;
  ImpressionEndpoint command;

  factory AcceptButtonButtonRenderer.fromJson(String str) =>
      AcceptButtonButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AcceptButtonButtonRenderer.fromMap(Map<String, dynamic> json) =>
      AcceptButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : sizeValues.map[json["size"]],
        text: json["text"] == null ? null : MessageTitle.fromMap(json["text"]),
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : ServiceEndpointClass.fromMap(json["serviceEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        command: json["command"] == null
            ? null
            : ImpressionEndpoint.fromMap(json["command"]),
      );

  Map<String, dynamic> toMap() => {
        "style": style == null ? null : style,
        "size": size == null ? null : sizeValues.reverse[size],
        "text": text == null ? null : text.toMap(),
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "command": command == null ? null : command.toMap(),
      };
}

class ImpressionEndpoint {
  ImpressionEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.feedbackEndpoint,
  });

  String clickTrackingParams;
  ImpressionEndpointCommandMetadata commandMetadata;
  FeedbackEndpoint feedbackEndpoint;

  factory ImpressionEndpoint.fromJson(String str) =>
      ImpressionEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ImpressionEndpoint.fromMap(Map<String, dynamic> json) =>
      ImpressionEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ImpressionEndpointCommandMetadata.fromMap(
                json["commandMetadata"]),
        feedbackEndpoint: json["feedbackEndpoint"] == null
            ? null
            : FeedbackEndpoint.fromMap(json["feedbackEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "feedbackEndpoint":
            feedbackEndpoint == null ? null : feedbackEndpoint.toMap(),
      };
}

class ImpressionEndpointCommandMetadata {
  ImpressionEndpointCommandMetadata({
    this.webCommandMetadata,
  });

  FluffyWebCommandMetadata webCommandMetadata;

  factory ImpressionEndpointCommandMetadata.fromJson(String str) =>
      ImpressionEndpointCommandMetadata.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ImpressionEndpointCommandMetadata.fromMap(
          Map<String, dynamic> json) =>
      ImpressionEndpointCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : FluffyWebCommandMetadata.fromMap(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toMap() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toMap(),
      };
}

class FluffyWebCommandMetadata {
  FluffyWebCommandMetadata({
    this.sendPost,
    this.apiUrl,
  });

  bool sendPost;
  String apiUrl;

  factory FluffyWebCommandMetadata.fromJson(String str) =>
      FluffyWebCommandMetadata.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffyWebCommandMetadata.fromMap(Map<String, dynamic> json) =>
      FluffyWebCommandMetadata(
        sendPost: json["sendPost"] == null ? null : json["sendPost"],
        apiUrl: json["apiUrl"] == null ? null : json["apiUrl"],
      );

  Map<String, dynamic> toMap() => {
        "sendPost": sendPost == null ? null : sendPost,
        "apiUrl": apiUrl == null ? null : apiUrl,
      };
}

class FeedbackEndpoint {
  FeedbackEndpoint({
    this.feedbackToken,
    this.uiActions,
  });

  String feedbackToken;
  UiActions uiActions;

  factory FeedbackEndpoint.fromJson(String str) =>
      FeedbackEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FeedbackEndpoint.fromMap(Map<String, dynamic> json) =>
      FeedbackEndpoint(
        feedbackToken:
            json["feedbackToken"] == null ? null : json["feedbackToken"],
        uiActions: json["uiActions"] == null
            ? null
            : UiActions.fromMap(json["uiActions"]),
      );

  Map<String, dynamic> toMap() => {
        "feedbackToken": feedbackToken == null ? null : feedbackToken,
        "uiActions": uiActions == null ? null : uiActions.toMap(),
      };
}

class UiActions {
  UiActions({
    this.hideEnclosingContainer,
  });

  bool hideEnclosingContainer;

  factory UiActions.fromJson(String str) => UiActions.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UiActions.fromMap(Map<String, dynamic> json) => UiActions(
        hideEnclosingContainer: json["hideEnclosingContainer"] == null
            ? null
            : json["hideEnclosingContainer"],
      );

  Map<String, dynamic> toMap() => {
        "hideEnclosingContainer":
            hideEnclosingContainer == null ? null : hideEnclosingContainer,
      };
}

enum Size { SIZE_DEFAULT }

final sizeValues = EnumValues({"SIZE_DEFAULT": Size.SIZE_DEFAULT});

class ButtonRendererIcon {
  ButtonRendererIcon({
    this.iconType,
  });

  IconType iconType;

  factory ButtonRendererIcon.fromJson(String str) =>
      ButtonRendererIcon.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ButtonRendererIcon.fromMap(Map<String, dynamic> json) =>
      ButtonRendererIcon(
        iconType: json["iconType"] == null
            ? null
            : iconTypeValues.map[json["iconType"]],
      );

  Map<String, dynamic> toMap() => {
        "iconType": iconType == null ? null : iconTypeValues.reverse[iconType],
      };
}

enum IconType { INFO_OUTLINE, REMOVE_CIRCLE, CLOSE, OPEN_IN_NEW }

final iconTypeValues = EnumValues({
  "CLOSE": IconType.CLOSE,
  "INFO_OUTLINE": IconType.INFO_OUTLINE,
  "OPEN_IN_NEW": IconType.OPEN_IN_NEW,
  "REMOVE_CIRCLE": IconType.REMOVE_CIRCLE
});

enum Style { STYLE_UNKNOWN }

final styleValues = EnumValues({"STYLE_UNKNOWN": Style.STYLE_UNKNOWN});

class ImpressionCommand {
  ImpressionCommand({
    this.clickTrackingParams,
    this.loggingUrls,
    this.pingingEndpoint,
    this.adLifecycleCommand,
  });

  String clickTrackingParams;
  List<PtrackingUrl> loggingUrls;
  PingingEndpoint pingingEndpoint;
  CommandAdLifecycleCommand adLifecycleCommand;

  factory ImpressionCommand.fromJson(String str) =>
      ImpressionCommand.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ImpressionCommand.fromMap(Map<String, dynamic> json) =>
      ImpressionCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        loggingUrls: json["loggingUrls"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["loggingUrls"].map((x) => PtrackingUrl.fromMap(x))),
        pingingEndpoint: json["pingingEndpoint"] == null
            ? null
            : PingingEndpoint.fromMap(json["pingingEndpoint"]),
        adLifecycleCommand: json["adLifecycleCommand"] == null
            ? null
            : CommandAdLifecycleCommand.fromMap(json["adLifecycleCommand"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "loggingUrls": loggingUrls == null
            ? null
            : List<dynamic>.from(loggingUrls.map((x) => x.toMap())),
        "pingingEndpoint":
            pingingEndpoint == null ? null : pingingEndpoint.toMap(),
        "adLifecycleCommand":
            adLifecycleCommand == null ? null : adLifecycleCommand.toMap(),
      };
}

class CommandAdLifecycleCommand {
  CommandAdLifecycleCommand({
    this.action,
  });

  String action;

  factory CommandAdLifecycleCommand.fromJson(String str) =>
      CommandAdLifecycleCommand.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CommandAdLifecycleCommand.fromMap(Map<String, dynamic> json) =>
      CommandAdLifecycleCommand(
        action: json["action"] == null ? null : json["action"],
      );

  Map<String, dynamic> toMap() => {
        "action": action == null ? null : action,
      };
}

class DialogMessage {
  DialogMessage({
    this.runs,
  });

  List<PurpleRun> runs;

  factory DialogMessage.fromJson(String str) =>
      DialogMessage.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DialogMessage.fromMap(Map<String, dynamic> json) => DialogMessage(
        runs: json["runs"] == null
            ? null
            : List<PurpleRun>.from(
                json["runs"].map((x) => PurpleRun.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "runs": runs == null
            ? null
            : List<dynamic>.from(runs.map((x) => x.toMap())),
      };
}

class PurpleRun {
  PurpleRun({
    this.text,
    this.navigationEndpoint,
  });

  String text;
  NavigationEndpointClass navigationEndpoint;

  factory PurpleRun.fromJson(String str) => PurpleRun.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleRun.fromMap(Map<String, dynamic> json) => PurpleRun(
        text: json["text"] == null ? null : json["text"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : NavigationEndpointClass.fromMap(json["navigationEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "text": text == null ? null : text,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
      };
}

class AdLayoutLoggingData {
  AdLayoutLoggingData({
    this.serializedAdServingDataEntry,
  });

  String serializedAdServingDataEntry;

  factory AdLayoutLoggingData.fromJson(String str) =>
      AdLayoutLoggingData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdLayoutLoggingData.fromMap(Map<String, dynamic> json) =>
      AdLayoutLoggingData(
        serializedAdServingDataEntry:
            json["serializedAdServingDataEntry"] == null
                ? null
                : json["serializedAdServingDataEntry"],
      );

  Map<String, dynamic> toMap() => {
        "serializedAdServingDataEntry": serializedAdServingDataEntry == null
            ? null
            : serializedAdServingDataEntry,
      };
}

class BannerImage {
  BannerImage({
    this.thumbnail,
    this.trackingParams,
  });

  IconClass thumbnail;
  String trackingParams;

  factory BannerImage.fromJson(String str) =>
      BannerImage.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BannerImage.fromMap(Map<String, dynamic> json) => BannerImage(
        thumbnail: json["thumbnail"] == null
            ? null
            : IconClass.fromMap(json["thumbnail"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "thumbnail": thumbnail == null ? null : thumbnail.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class IconClass {
  IconClass({
    this.thumbnails,
  });

  List<WatermarkThumbnail> thumbnails;

  factory IconClass.fromJson(String str) => IconClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory IconClass.fromMap(Map<String, dynamic> json) => IconClass(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<WatermarkThumbnail>.from(
                json["thumbnails"].map((x) => WatermarkThumbnail.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toMap())),
      };
}

class WatermarkThumbnail {
  WatermarkThumbnail({
    this.url,
    this.width,
    this.height,
  });

  String url;
  int width;
  int height;

  factory WatermarkThumbnail.fromJson(String str) =>
      WatermarkThumbnail.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WatermarkThumbnail.fromMap(Map<String, dynamic> json) =>
      WatermarkThumbnail(
        url: json["url"] == null ? null : json["url"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
      );

  Map<String, dynamic> toMap() => {
        "url": url == null ? null : url,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
      };
}

class Description {
  Description({
    this.text,
    this.isTemplated,
    this.trackingParams,
  });

  String text;
  bool isTemplated;
  String trackingParams;

  factory Description.fromJson(String str) =>
      Description.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Description.fromMap(Map<String, dynamic> json) => Description(
        text: json["text"] == null ? null : json["text"],
        isTemplated: json["isTemplated"] == null ? null : json["isTemplated"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "text": text == null ? null : text,
        "isTemplated": isTemplated == null ? null : isTemplated,
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class AdBreakServiceRenderer {
  AdBreakServiceRenderer({
    this.prefetchMilliseconds,
    this.getAdBreakUrl,
  });

  String prefetchMilliseconds;
  String getAdBreakUrl;

  factory AdBreakServiceRenderer.fromJson(String str) =>
      AdBreakServiceRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdBreakServiceRenderer.fromMap(Map<String, dynamic> json) =>
      AdBreakServiceRenderer(
        prefetchMilliseconds: json["prefetchMilliseconds"] == null
            ? null
            : json["prefetchMilliseconds"],
        getAdBreakUrl:
            json["getAdBreakUrl"] == null ? null : json["getAdBreakUrl"],
      );

  Map<String, dynamic> toMap() => {
        "prefetchMilliseconds":
            prefetchMilliseconds == null ? null : prefetchMilliseconds,
        "getAdBreakUrl": getAdBreakUrl == null ? null : getAdBreakUrl,
      };
}

class LinearAdSequenceRenderer {
  LinearAdSequenceRenderer({
    this.linearAds,
  });

  List<LinearAd> linearAds;

  factory LinearAdSequenceRenderer.fromJson(String str) =>
      LinearAdSequenceRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LinearAdSequenceRenderer.fromMap(Map<String, dynamic> json) =>
      LinearAdSequenceRenderer(
        linearAds: json["linearAds"] == null
            ? null
            : List<LinearAd>.from(
                json["linearAds"].map((x) => LinearAd.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "linearAds": linearAds == null
            ? null
            : List<dynamic>.from(linearAds.map((x) => x.toMap())),
      };
}

class LinearAd {
  LinearAd({
    this.instreamVideoAdRenderer,
    this.adActionInterstitialRenderer,
  });

  InstreamVideoAdRenderer instreamVideoAdRenderer;
  AdActionInterstitialRenderer adActionInterstitialRenderer;

  factory LinearAd.fromJson(String str) => LinearAd.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LinearAd.fromMap(Map<String, dynamic> json) => LinearAd(
        instreamVideoAdRenderer: json["instreamVideoAdRenderer"] == null
            ? null
            : InstreamVideoAdRenderer.fromMap(json["instreamVideoAdRenderer"]),
        adActionInterstitialRenderer:
            json["adActionInterstitialRenderer"] == null
                ? null
                : AdActionInterstitialRenderer.fromMap(
                    json["adActionInterstitialRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "instreamVideoAdRenderer": instreamVideoAdRenderer == null
            ? null
            : instreamVideoAdRenderer.toMap(),
        "adActionInterstitialRenderer": adActionInterstitialRenderer == null
            ? null
            : adActionInterstitialRenderer.toMap(),
      };
}

class AdActionInterstitialRenderer {
  AdActionInterstitialRenderer({
    this.image,
    this.headline,
    this.description,
    this.actionButton,
    this.durationMilliseconds,
    this.countdownRenderer,
    this.background,
    this.completionCommands,
    this.navigationEndpoint,
    this.trackingParams,
    this.backgroundImage,
    this.abandonCommands,
    this.adRendererCommands,
    this.skipButton,
  });

  BannerImage image;
  Description headline;
  Description description;
  ActionButton actionButton;
  int durationMilliseconds;
  CountdownRenderer countdownRenderer;
  BackgroundClass background;
  List<CompletionCommand> completionCommands;
  NavigationEndpointClass navigationEndpoint;
  String trackingParams;
  BackgroundImage backgroundImage;
  AbandonCommands abandonCommands;
  AdActionInterstitialRendererAdRendererCommands adRendererCommands;
  Skip skipButton;

  factory AdActionInterstitialRenderer.fromJson(String str) =>
      AdActionInterstitialRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdActionInterstitialRenderer.fromMap(Map<String, dynamic> json) =>
      AdActionInterstitialRenderer(
        image:
            json["image"] == null ? null : BannerImage.fromMap(json["image"]),
        headline: json["headline"] == null
            ? null
            : Description.fromMap(json["headline"]),
        description: json["description"] == null
            ? null
            : Description.fromMap(json["description"]),
        actionButton: json["actionButton"] == null
            ? null
            : ActionButton.fromMap(json["actionButton"]),
        durationMilliseconds: json["durationMilliseconds"] == null
            ? null
            : json["durationMilliseconds"],
        countdownRenderer: json["countdownRenderer"] == null
            ? null
            : CountdownRenderer.fromMap(json["countdownRenderer"]),
        background: json["background"] == null
            ? null
            : BackgroundClass.fromMap(json["background"]),
        completionCommands: json["completionCommands"] == null
            ? null
            : List<CompletionCommand>.from(json["completionCommands"]
                .map((x) => CompletionCommand.fromMap(x))),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : NavigationEndpointClass.fromMap(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        backgroundImage: json["backgroundImage"] == null
            ? null
            : BackgroundImage.fromMap(json["backgroundImage"]),
        abandonCommands: json["abandonCommands"] == null
            ? null
            : AbandonCommands.fromMap(json["abandonCommands"]),
        adRendererCommands: json["adRendererCommands"] == null
            ? null
            : AdActionInterstitialRendererAdRendererCommands.fromMap(
                json["adRendererCommands"]),
        skipButton: json["skipButton"] == null
            ? null
            : Skip.fromMap(json["skipButton"]),
      );

  Map<String, dynamic> toMap() => {
        "image": image == null ? null : image.toMap(),
        "headline": headline == null ? null : headline.toMap(),
        "description": description == null ? null : description.toMap(),
        "actionButton": actionButton == null ? null : actionButton.toMap(),
        "durationMilliseconds":
            durationMilliseconds == null ? null : durationMilliseconds,
        "countdownRenderer":
            countdownRenderer == null ? null : countdownRenderer.toMap(),
        "background": background == null ? null : background.toMap(),
        "completionCommands": completionCommands == null
            ? null
            : List<dynamic>.from(completionCommands.map((x) => x.toMap())),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "backgroundImage":
            backgroundImage == null ? null : backgroundImage.toMap(),
        "abandonCommands":
            abandonCommands == null ? null : abandonCommands.toMap(),
        "adRendererCommands":
            adRendererCommands == null ? null : adRendererCommands.toMap(),
        "skipButton": skipButton == null ? null : skipButton.toMap(),
      };
}

class AbandonCommands {
  AbandonCommands({
    this.commands,
  });

  List<ImpressionCommand> commands;

  factory AbandonCommands.fromJson(String str) =>
      AbandonCommands.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AbandonCommands.fromMap(Map<String, dynamic> json) => AbandonCommands(
        commands: json["commands"] == null
            ? null
            : List<ImpressionCommand>.from(
                json["commands"].map((x) => ImpressionCommand.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "commands": commands == null
            ? null
            : List<dynamic>.from(commands.map((x) => x.toMap())),
      };
}

class AdActionInterstitialRendererAdRendererCommands {
  AdActionInterstitialRendererAdRendererCommands({
    this.impressionCommand,
  });

  ClickCommandClass impressionCommand;

  factory AdActionInterstitialRendererAdRendererCommands.fromJson(String str) =>
      AdActionInterstitialRendererAdRendererCommands.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdActionInterstitialRendererAdRendererCommands.fromMap(
          Map<String, dynamic> json) =>
      AdActionInterstitialRendererAdRendererCommands(
        impressionCommand: json["impressionCommand"] == null
            ? null
            : ClickCommandClass.fromMap(json["impressionCommand"]),
      );

  Map<String, dynamic> toMap() => {
        "impressionCommand":
            impressionCommand == null ? null : impressionCommand.toMap(),
      };
}

class ClickCommandClass {
  ClickCommandClass({
    this.clickTrackingParams,
    this.commandExecutorCommand,
  });

  String clickTrackingParams;
  AbandonCommands commandExecutorCommand;

  factory ClickCommandClass.fromJson(String str) =>
      ClickCommandClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ClickCommandClass.fromMap(Map<String, dynamic> json) =>
      ClickCommandClass(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandExecutorCommand: json["commandExecutorCommand"] == null
            ? null
            : AbandonCommands.fromMap(json["commandExecutorCommand"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandExecutorCommand": commandExecutorCommand == null
            ? null
            : commandExecutorCommand.toMap(),
      };
}

class BackgroundClass {
  BackgroundClass({
    this.thumbnails,
  });

  List<WebCommandMetadataElement> thumbnails;

  factory BackgroundClass.fromJson(String str) =>
      BackgroundClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BackgroundClass.fromMap(Map<String, dynamic> json) => BackgroundClass(
        thumbnails: json["thumbnails"] == null
            ? null
            : List<WebCommandMetadataElement>.from(json["thumbnails"]
                .map((x) => WebCommandMetadataElement.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "thumbnails": thumbnails == null
            ? null
            : List<dynamic>.from(thumbnails.map((x) => x.toMap())),
      };
}

class WebCommandMetadataElement {
  WebCommandMetadataElement({
    this.url,
  });

  String url;

  factory WebCommandMetadataElement.fromJson(String str) =>
      WebCommandMetadataElement.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WebCommandMetadataElement.fromMap(Map<String, dynamic> json) =>
      WebCommandMetadataElement(
        url: json["url"] == null ? null : json["url"],
      );

  Map<String, dynamic> toMap() => {
        "url": url == null ? null : url,
      };
}

class BackgroundImage {
  BackgroundImage({
    this.thumbnail,
    this.trackingParams,
  });

  BackgroundClass thumbnail;
  String trackingParams;

  factory BackgroundImage.fromJson(String str) =>
      BackgroundImage.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BackgroundImage.fromMap(Map<String, dynamic> json) => BackgroundImage(
        thumbnail: json["thumbnail"] == null
            ? null
            : BackgroundClass.fromMap(json["thumbnail"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "thumbnail": thumbnail == null ? null : thumbnail.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class CompletionCommand {
  CompletionCommand({
    this.clickTrackingParams,
    this.adLifecycleCommand,
  });

  String clickTrackingParams;
  CommandAdLifecycleCommand adLifecycleCommand;

  factory CompletionCommand.fromJson(String str) =>
      CompletionCommand.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompletionCommand.fromMap(Map<String, dynamic> json) =>
      CompletionCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        adLifecycleCommand: json["adLifecycleCommand"] == null
            ? null
            : CommandAdLifecycleCommand.fromMap(json["adLifecycleCommand"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "adLifecycleCommand":
            adLifecycleCommand == null ? null : adLifecycleCommand.toMap(),
      };
}

class CountdownRenderer {
  CountdownRenderer({
    this.timedPieCountdownRenderer,
  });

  NRenderer timedPieCountdownRenderer;

  factory CountdownRenderer.fromJson(String str) =>
      CountdownRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CountdownRenderer.fromMap(Map<String, dynamic> json) =>
      CountdownRenderer(
        timedPieCountdownRenderer: json["timedPieCountdownRenderer"] == null
            ? null
            : NRenderer.fromMap(json["timedPieCountdownRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "timedPieCountdownRenderer": timedPieCountdownRenderer == null
            ? null
            : timedPieCountdownRenderer.toMap(),
      };
}

class NRenderer {
  NRenderer({
    this.trackingParams,
  });

  String trackingParams;

  factory NRenderer.fromJson(String str) => NRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NRenderer.fromMap(Map<String, dynamic> json) => NRenderer(
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class Skip {
  Skip({
    this.skipButtonRenderer,
  });

  SkipButtonRenderer skipButtonRenderer;

  factory Skip.fromJson(String str) => Skip.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Skip.fromMap(Map<String, dynamic> json) => Skip(
        skipButtonRenderer: json["skipButtonRenderer"] == null
            ? null
            : SkipButtonRenderer.fromMap(json["skipButtonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "skipButtonRenderer":
            skipButtonRenderer == null ? null : skipButtonRenderer.toMap(),
      };
}

class SkipButtonRenderer {
  SkipButtonRenderer({
    this.message,
    this.trackingParams,
    this.adRendererCommands,
  });

  Description message;
  String trackingParams;
  SkipButtonRendererAdRendererCommands adRendererCommands;

  factory SkipButtonRenderer.fromJson(String str) =>
      SkipButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SkipButtonRenderer.fromMap(Map<String, dynamic> json) =>
      SkipButtonRenderer(
        message: json["message"] == null
            ? null
            : Description.fromMap(json["message"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        adRendererCommands: json["adRendererCommands"] == null
            ? null
            : SkipButtonRendererAdRendererCommands.fromMap(
                json["adRendererCommands"]),
      );

  Map<String, dynamic> toMap() => {
        "message": message == null ? null : message.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "adRendererCommands":
            adRendererCommands == null ? null : adRendererCommands.toMap(),
      };
}

class SkipButtonRendererAdRendererCommands {
  SkipButtonRendererAdRendererCommands({
    this.clickCommand,
  });

  ClickCommandClass clickCommand;

  factory SkipButtonRendererAdRendererCommands.fromJson(String str) =>
      SkipButtonRendererAdRendererCommands.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SkipButtonRendererAdRendererCommands.fromMap(
          Map<String, dynamic> json) =>
      SkipButtonRendererAdRendererCommands(
        clickCommand: json["clickCommand"] == null
            ? null
            : ClickCommandClass.fromMap(json["clickCommand"]),
      );

  Map<String, dynamic> toMap() => {
        "clickCommand": clickCommand == null ? null : clickCommand.toMap(),
      };
}

class InstreamVideoAdRenderer {
  InstreamVideoAdRenderer({
    this.skipOffsetMilliseconds,
    this.pings,
    this.clickthroughEndpoint,
    this.csiParameters,
    this.playerVars,
    this.playerOverlay,
    this.impressionCommands,
    this.elementId,
    this.trackingParams,
    this.legacyInfoCardVastExtension,
    this.sodarExtensionData,
    this.externalVideoId,
    this.adLayoutLoggingData,
    this.completeCommands,
  });

  int skipOffsetMilliseconds;
  Pings pings;
  NavigationEndpointClass clickthroughEndpoint;
  List<Param> csiParameters;
  String playerVars;
  PlayerOverlay playerOverlay;
  List<CompleteCommandElement> impressionCommands;
  String elementId;
  String trackingParams;
  String legacyInfoCardVastExtension;
  SodarExtensionData sodarExtensionData;
  String externalVideoId;
  AdLayoutLoggingData adLayoutLoggingData;
  List<CompleteCommandElement> completeCommands;

  factory InstreamVideoAdRenderer.fromJson(String str) =>
      InstreamVideoAdRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory InstreamVideoAdRenderer.fromMap(Map<String, dynamic> json) =>
      InstreamVideoAdRenderer(
        skipOffsetMilliseconds: json["skipOffsetMilliseconds"] == null
            ? null
            : json["skipOffsetMilliseconds"],
        pings: json["pings"] == null ? null : Pings.fromMap(json["pings"]),
        clickthroughEndpoint: json["clickthroughEndpoint"] == null
            ? null
            : NavigationEndpointClass.fromMap(json["clickthroughEndpoint"]),
        csiParameters: json["csiParameters"] == null
            ? null
            : List<Param>.from(
                json["csiParameters"].map((x) => Param.fromMap(x))),
        playerVars: json["playerVars"] == null ? null : json["playerVars"],
        playerOverlay: json["playerOverlay"] == null
            ? null
            : PlayerOverlay.fromMap(json["playerOverlay"]),
        impressionCommands: json["impressionCommands"] == null
            ? null
            : List<CompleteCommandElement>.from(json["impressionCommands"]
                .map((x) => CompleteCommandElement.fromMap(x))),
        elementId: json["elementId"] == null ? null : json["elementId"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        legacyInfoCardVastExtension: json["legacyInfoCardVastExtension"] == null
            ? null
            : json["legacyInfoCardVastExtension"],
        sodarExtensionData: json["sodarExtensionData"] == null
            ? null
            : SodarExtensionData.fromMap(json["sodarExtensionData"]),
        externalVideoId:
            json["externalVideoId"] == null ? null : json["externalVideoId"],
        adLayoutLoggingData: json["adLayoutLoggingData"] == null
            ? null
            : AdLayoutLoggingData.fromMap(json["adLayoutLoggingData"]),
        completeCommands: json["completeCommands"] == null
            ? null
            : List<CompleteCommandElement>.from(json["completeCommands"]
                .map((x) => CompleteCommandElement.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "skipOffsetMilliseconds":
            skipOffsetMilliseconds == null ? null : skipOffsetMilliseconds,
        "pings": pings == null ? null : pings.toMap(),
        "clickthroughEndpoint":
            clickthroughEndpoint == null ? null : clickthroughEndpoint.toMap(),
        "csiParameters": csiParameters == null
            ? null
            : List<dynamic>.from(csiParameters.map((x) => x.toMap())),
        "playerVars": playerVars == null ? null : playerVars,
        "playerOverlay": playerOverlay == null ? null : playerOverlay.toMap(),
        "impressionCommands": impressionCommands == null
            ? null
            : List<dynamic>.from(impressionCommands.map((x) => x.toMap())),
        "elementId": elementId == null ? null : elementId,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "legacyInfoCardVastExtension": legacyInfoCardVastExtension == null
            ? null
            : legacyInfoCardVastExtension,
        "sodarExtensionData":
            sodarExtensionData == null ? null : sodarExtensionData.toMap(),
        "externalVideoId": externalVideoId == null ? null : externalVideoId,
        "adLayoutLoggingData":
            adLayoutLoggingData == null ? null : adLayoutLoggingData.toMap(),
        "completeCommands": completeCommands == null
            ? null
            : List<dynamic>.from(completeCommands.map((x) => x.toMap())),
      };
}

class CompleteCommandElement {
  CompleteCommandElement({
    this.clickTrackingParams,
    this.adLifecycleCommand,
  });

  String clickTrackingParams;
  CompleteCommandAdLifecycleCommand adLifecycleCommand;

  factory CompleteCommandElement.fromJson(String str) =>
      CompleteCommandElement.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompleteCommandElement.fromMap(Map<String, dynamic> json) =>
      CompleteCommandElement(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        adLifecycleCommand: json["adLifecycleCommand"] == null
            ? null
            : CompleteCommandAdLifecycleCommand.fromMap(
                json["adLifecycleCommand"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "adLifecycleCommand":
            adLifecycleCommand == null ? null : adLifecycleCommand.toMap(),
      };
}

class CompleteCommandAdLifecycleCommand {
  CompleteCommandAdLifecycleCommand({
    this.action,
    this.elementId,
  });

  String action;
  String elementId;

  factory CompleteCommandAdLifecycleCommand.fromJson(String str) =>
      CompleteCommandAdLifecycleCommand.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CompleteCommandAdLifecycleCommand.fromMap(
          Map<String, dynamic> json) =>
      CompleteCommandAdLifecycleCommand(
        action: json["action"] == null ? null : json["action"],
        elementId: json["elementId"] == null ? null : json["elementId"],
      );

  Map<String, dynamic> toMap() => {
        "action": action == null ? null : action,
        "elementId": elementId == null ? null : elementId,
      };
}

class Param {
  Param({
    this.key,
    this.value,
  });

  String key;
  String value;

  factory Param.fromJson(String str) => Param.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Param.fromMap(Map<String, dynamic> json) => Param(
        key: json["key"] == null ? null : json["key"],
        value: json["value"] == null ? null : json["value"],
      );

  Map<String, dynamic> toMap() => {
        "key": key == null ? null : key,
        "value": value == null ? null : value,
      };
}

class Pings {
  Pings({
    this.impressionPings,
    this.errorPings,
    this.mutePings,
    this.unmutePings,
    this.pausePings,
    this.rewindPings,
    this.resumePings,
    this.skipPings,
    this.closePings,
    this.progressPings,
    this.clickthroughPings,
    this.fullscreenPings,
    this.activeViewViewablePings,
    this.endFullscreenPings,
    this.activeViewMeasurablePings,
    this.abandonPings,
    this.activeViewFullyViewableAudibleHalfDurationPings,
    this.startPings,
    this.firstQuartilePings,
    this.secondQuartilePings,
    this.thirdQuartilePings,
    this.completePings,
  });

  List<PtrackingUrl> impressionPings;
  List<PtrackingUrl> errorPings;
  List<PtrackingUrl> mutePings;
  List<PtrackingUrl> unmutePings;
  List<PtrackingUrl> pausePings;
  List<PtrackingUrl> rewindPings;
  List<PtrackingUrl> resumePings;
  List<PtrackingUrl> skipPings;
  List<PtrackingUrl> closePings;
  List<ProgressPing> progressPings;
  List<PtrackingUrl> clickthroughPings;
  List<PtrackingUrl> fullscreenPings;
  List<PtrackingUrl> activeViewViewablePings;
  List<PtrackingUrl> endFullscreenPings;
  List<PtrackingUrl> activeViewMeasurablePings;
  List<PtrackingUrl> abandonPings;
  List<PtrackingUrl> activeViewFullyViewableAudibleHalfDurationPings;
  List<PtrackingUrl> startPings;
  List<PtrackingUrl> firstQuartilePings;
  List<PtrackingUrl> secondQuartilePings;
  List<PtrackingUrl> thirdQuartilePings;
  List<PtrackingUrl> completePings;

  factory Pings.fromJson(String str) => Pings.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Pings.fromMap(Map<String, dynamic> json) => Pings(
        impressionPings: json["impressionPings"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["impressionPings"].map((x) => PtrackingUrl.fromMap(x))),
        errorPings: json["errorPings"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["errorPings"].map((x) => PtrackingUrl.fromMap(x))),
        mutePings: json["mutePings"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["mutePings"].map((x) => PtrackingUrl.fromMap(x))),
        unmutePings: json["unmutePings"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["unmutePings"].map((x) => PtrackingUrl.fromMap(x))),
        pausePings: json["pausePings"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["pausePings"].map((x) => PtrackingUrl.fromMap(x))),
        rewindPings: json["rewindPings"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["rewindPings"].map((x) => PtrackingUrl.fromMap(x))),
        resumePings: json["resumePings"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["resumePings"].map((x) => PtrackingUrl.fromMap(x))),
        skipPings: json["skipPings"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["skipPings"].map((x) => PtrackingUrl.fromMap(x))),
        closePings: json["closePings"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["closePings"].map((x) => PtrackingUrl.fromMap(x))),
        progressPings: json["progressPings"] == null
            ? null
            : List<ProgressPing>.from(
                json["progressPings"].map((x) => ProgressPing.fromMap(x))),
        clickthroughPings: json["clickthroughPings"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["clickthroughPings"].map((x) => PtrackingUrl.fromMap(x))),
        fullscreenPings: json["fullscreenPings"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["fullscreenPings"].map((x) => PtrackingUrl.fromMap(x))),
        activeViewViewablePings: json["activeViewViewablePings"] == null
            ? null
            : List<PtrackingUrl>.from(json["activeViewViewablePings"]
                .map((x) => PtrackingUrl.fromMap(x))),
        endFullscreenPings: json["endFullscreenPings"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["endFullscreenPings"].map((x) => PtrackingUrl.fromMap(x))),
        activeViewMeasurablePings: json["activeViewMeasurablePings"] == null
            ? null
            : List<PtrackingUrl>.from(json["activeViewMeasurablePings"]
                .map((x) => PtrackingUrl.fromMap(x))),
        abandonPings: json["abandonPings"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["abandonPings"].map((x) => PtrackingUrl.fromMap(x))),
        activeViewFullyViewableAudibleHalfDurationPings:
            json["activeViewFullyViewableAudibleHalfDurationPings"] == null
                ? null
                : List<PtrackingUrl>.from(
                    json["activeViewFullyViewableAudibleHalfDurationPings"]
                        .map((x) => PtrackingUrl.fromMap(x))),
        startPings: json["startPings"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["startPings"].map((x) => PtrackingUrl.fromMap(x))),
        firstQuartilePings: json["firstQuartilePings"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["firstQuartilePings"].map((x) => PtrackingUrl.fromMap(x))),
        secondQuartilePings: json["secondQuartilePings"] == null
            ? null
            : List<PtrackingUrl>.from(json["secondQuartilePings"]
                .map((x) => PtrackingUrl.fromMap(x))),
        thirdQuartilePings: json["thirdQuartilePings"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["thirdQuartilePings"].map((x) => PtrackingUrl.fromMap(x))),
        completePings: json["completePings"] == null
            ? null
            : List<PtrackingUrl>.from(
                json["completePings"].map((x) => PtrackingUrl.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "impressionPings": impressionPings == null
            ? null
            : List<dynamic>.from(impressionPings.map((x) => x.toMap())),
        "errorPings": errorPings == null
            ? null
            : List<dynamic>.from(errorPings.map((x) => x.toMap())),
        "mutePings": mutePings == null
            ? null
            : List<dynamic>.from(mutePings.map((x) => x.toMap())),
        "unmutePings": unmutePings == null
            ? null
            : List<dynamic>.from(unmutePings.map((x) => x.toMap())),
        "pausePings": pausePings == null
            ? null
            : List<dynamic>.from(pausePings.map((x) => x.toMap())),
        "rewindPings": rewindPings == null
            ? null
            : List<dynamic>.from(rewindPings.map((x) => x.toMap())),
        "resumePings": resumePings == null
            ? null
            : List<dynamic>.from(resumePings.map((x) => x.toMap())),
        "skipPings": skipPings == null
            ? null
            : List<dynamic>.from(skipPings.map((x) => x.toMap())),
        "closePings": closePings == null
            ? null
            : List<dynamic>.from(closePings.map((x) => x.toMap())),
        "progressPings": progressPings == null
            ? null
            : List<dynamic>.from(progressPings.map((x) => x.toMap())),
        "clickthroughPings": clickthroughPings == null
            ? null
            : List<dynamic>.from(clickthroughPings.map((x) => x.toMap())),
        "fullscreenPings": fullscreenPings == null
            ? null
            : List<dynamic>.from(fullscreenPings.map((x) => x.toMap())),
        "activeViewViewablePings": activeViewViewablePings == null
            ? null
            : List<dynamic>.from(activeViewViewablePings.map((x) => x.toMap())),
        "endFullscreenPings": endFullscreenPings == null
            ? null
            : List<dynamic>.from(endFullscreenPings.map((x) => x.toMap())),
        "activeViewMeasurablePings": activeViewMeasurablePings == null
            ? null
            : List<dynamic>.from(
                activeViewMeasurablePings.map((x) => x.toMap())),
        "abandonPings": abandonPings == null
            ? null
            : List<dynamic>.from(abandonPings.map((x) => x.toMap())),
        "activeViewFullyViewableAudibleHalfDurationPings":
            activeViewFullyViewableAudibleHalfDurationPings == null
                ? null
                : List<dynamic>.from(
                    activeViewFullyViewableAudibleHalfDurationPings
                        .map((x) => x.toMap())),
        "startPings": startPings == null
            ? null
            : List<dynamic>.from(startPings.map((x) => x.toMap())),
        "firstQuartilePings": firstQuartilePings == null
            ? null
            : List<dynamic>.from(firstQuartilePings.map((x) => x.toMap())),
        "secondQuartilePings": secondQuartilePings == null
            ? null
            : List<dynamic>.from(secondQuartilePings.map((x) => x.toMap())),
        "thirdQuartilePings": thirdQuartilePings == null
            ? null
            : List<dynamic>.from(thirdQuartilePings.map((x) => x.toMap())),
        "completePings": completePings == null
            ? null
            : List<dynamic>.from(completePings.map((x) => x.toMap())),
      };
}

class ProgressPing {
  ProgressPing({
    this.baseUrl,
    this.offsetMilliseconds,
  });

  String baseUrl;
  int offsetMilliseconds;

  factory ProgressPing.fromJson(String str) =>
      ProgressPing.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProgressPing.fromMap(Map<String, dynamic> json) => ProgressPing(
        baseUrl: json["baseUrl"] == null ? null : json["baseUrl"],
        offsetMilliseconds: json["offsetMilliseconds"] == null
            ? null
            : json["offsetMilliseconds"],
      );

  Map<String, dynamic> toMap() => {
        "baseUrl": baseUrl == null ? null : baseUrl,
        "offsetMilliseconds":
            offsetMilliseconds == null ? null : offsetMilliseconds,
      };
}

class PlayerOverlay {
  PlayerOverlay({
    this.instreamAdPlayerOverlayRenderer,
  });

  InstreamAdPlayerOverlayRenderer instreamAdPlayerOverlayRenderer;

  factory PlayerOverlay.fromJson(String str) =>
      PlayerOverlay.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PlayerOverlay.fromMap(Map<String, dynamic> json) => PlayerOverlay(
        instreamAdPlayerOverlayRenderer:
            json["instreamAdPlayerOverlayRenderer"] == null
                ? null
                : InstreamAdPlayerOverlayRenderer.fromMap(
                    json["instreamAdPlayerOverlayRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "instreamAdPlayerOverlayRenderer":
            instreamAdPlayerOverlayRenderer == null
                ? null
                : instreamAdPlayerOverlayRenderer.toMap(),
      };
}

class InstreamAdPlayerOverlayRenderer {
  InstreamAdPlayerOverlayRenderer({
    this.skipOrPreviewRenderer,
    this.trackingParams,
    this.visitAdvertiserRenderer,
    this.adBadgeRenderer,
    this.adDurationRemaining,
    this.adInfoRenderer,
    this.flyoutCtaRenderer,
    this.adLayoutLoggingData,
  });

  SkipOrPreviewRenderer skipOrPreviewRenderer;
  String trackingParams;
  VisitAdvertiserRenderer visitAdvertiserRenderer;
  AdBadgeRenderer adBadgeRenderer;
  AdDurationRemaining adDurationRemaining;
  AdInfoRenderer adInfoRenderer;
  InstreamAdPlayerOverlayRendererFlyoutCtaRenderer flyoutCtaRenderer;
  AdLayoutLoggingData adLayoutLoggingData;

  factory InstreamAdPlayerOverlayRenderer.fromJson(String str) =>
      InstreamAdPlayerOverlayRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory InstreamAdPlayerOverlayRenderer.fromMap(Map<String, dynamic> json) =>
      InstreamAdPlayerOverlayRenderer(
        skipOrPreviewRenderer: json["skipOrPreviewRenderer"] == null
            ? null
            : SkipOrPreviewRenderer.fromMap(json["skipOrPreviewRenderer"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        visitAdvertiserRenderer: json["visitAdvertiserRenderer"] == null
            ? null
            : VisitAdvertiserRenderer.fromMap(json["visitAdvertiserRenderer"]),
        adBadgeRenderer: json["adBadgeRenderer"] == null
            ? null
            : AdBadgeRenderer.fromMap(json["adBadgeRenderer"]),
        adDurationRemaining: json["adDurationRemaining"] == null
            ? null
            : AdDurationRemaining.fromMap(json["adDurationRemaining"]),
        adInfoRenderer: json["adInfoRenderer"] == null
            ? null
            : AdInfoRenderer.fromMap(json["adInfoRenderer"]),
        flyoutCtaRenderer: json["flyoutCtaRenderer"] == null
            ? null
            : InstreamAdPlayerOverlayRendererFlyoutCtaRenderer.fromMap(
                json["flyoutCtaRenderer"]),
        adLayoutLoggingData: json["adLayoutLoggingData"] == null
            ? null
            : AdLayoutLoggingData.fromMap(json["adLayoutLoggingData"]),
      );

  Map<String, dynamic> toMap() => {
        "skipOrPreviewRenderer": skipOrPreviewRenderer == null
            ? null
            : skipOrPreviewRenderer.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "visitAdvertiserRenderer": visitAdvertiserRenderer == null
            ? null
            : visitAdvertiserRenderer.toMap(),
        "adBadgeRenderer":
            adBadgeRenderer == null ? null : adBadgeRenderer.toMap(),
        "adDurationRemaining":
            adDurationRemaining == null ? null : adDurationRemaining.toMap(),
        "adInfoRenderer":
            adInfoRenderer == null ? null : adInfoRenderer.toMap(),
        "flyoutCtaRenderer":
            flyoutCtaRenderer == null ? null : flyoutCtaRenderer.toMap(),
        "adLayoutLoggingData":
            adLayoutLoggingData == null ? null : adLayoutLoggingData.toMap(),
      };
}

class AdBadgeRenderer {
  AdBadgeRenderer({
    this.simpleAdBadgeRenderer,
  });

  SimpleAdBadgeRenderer simpleAdBadgeRenderer;

  factory AdBadgeRenderer.fromJson(String str) =>
      AdBadgeRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdBadgeRenderer.fromMap(Map<String, dynamic> json) => AdBadgeRenderer(
        simpleAdBadgeRenderer: json["simpleAdBadgeRenderer"] == null
            ? null
            : SimpleAdBadgeRenderer.fromMap(json["simpleAdBadgeRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "simpleAdBadgeRenderer": simpleAdBadgeRenderer == null
            ? null
            : simpleAdBadgeRenderer.toMap(),
      };
}

class SimpleAdBadgeRenderer {
  SimpleAdBadgeRenderer({
    this.text,
    this.trackingParams,
  });

  Description text;
  String trackingParams;

  factory SimpleAdBadgeRenderer.fromJson(String str) =>
      SimpleAdBadgeRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SimpleAdBadgeRenderer.fromMap(Map<String, dynamic> json) =>
      SimpleAdBadgeRenderer(
        text: json["text"] == null ? null : Description.fromMap(json["text"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "text": text == null ? null : text.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class AdDurationRemaining {
  AdDurationRemaining({
    this.adDurationRemainingRenderer,
  });

  AdDurationRemainingRenderer adDurationRemainingRenderer;

  factory AdDurationRemaining.fromJson(String str) =>
      AdDurationRemaining.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdDurationRemaining.fromMap(Map<String, dynamic> json) =>
      AdDurationRemaining(
        adDurationRemainingRenderer: json["adDurationRemainingRenderer"] == null
            ? null
            : AdDurationRemainingRenderer.fromMap(
                json["adDurationRemainingRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "adDurationRemainingRenderer": adDurationRemainingRenderer == null
            ? null
            : adDurationRemainingRenderer.toMap(),
      };
}

class AdDurationRemainingRenderer {
  AdDurationRemainingRenderer({
    this.templatedCountdown,
    this.trackingParams,
  });

  TemplatedCountdown templatedCountdown;
  String trackingParams;

  factory AdDurationRemainingRenderer.fromJson(String str) =>
      AdDurationRemainingRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdDurationRemainingRenderer.fromMap(Map<String, dynamic> json) =>
      AdDurationRemainingRenderer(
        templatedCountdown: json["templatedCountdown"] == null
            ? null
            : TemplatedCountdown.fromMap(json["templatedCountdown"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "templatedCountdown":
            templatedCountdown == null ? null : templatedCountdown.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class TemplatedCountdown {
  TemplatedCountdown({
    this.templatedAdText,
  });

  Description templatedAdText;

  factory TemplatedCountdown.fromJson(String str) =>
      TemplatedCountdown.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TemplatedCountdown.fromMap(Map<String, dynamic> json) =>
      TemplatedCountdown(
        templatedAdText: json["templatedAdText"] == null
            ? null
            : Description.fromMap(json["templatedAdText"]),
      );

  Map<String, dynamic> toMap() => {
        "templatedAdText":
            templatedAdText == null ? null : templatedAdText.toMap(),
      };
}

class InstreamAdPlayerOverlayRendererFlyoutCtaRenderer {
  InstreamAdPlayerOverlayRendererFlyoutCtaRenderer({
    this.flyoutCtaRenderer,
  });

  FlyoutCtaRendererFlyoutCtaRenderer flyoutCtaRenderer;

  factory InstreamAdPlayerOverlayRendererFlyoutCtaRenderer.fromJson(
          String str) =>
      InstreamAdPlayerOverlayRendererFlyoutCtaRenderer.fromMap(
          json.decode(str));

  String toJson() => json.encode(toMap());

  factory InstreamAdPlayerOverlayRendererFlyoutCtaRenderer.fromMap(
          Map<String, dynamic> json) =>
      InstreamAdPlayerOverlayRendererFlyoutCtaRenderer(
        flyoutCtaRenderer: json["flyoutCtaRenderer"] == null
            ? null
            : FlyoutCtaRendererFlyoutCtaRenderer.fromMap(
                json["flyoutCtaRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "flyoutCtaRenderer":
            flyoutCtaRenderer == null ? null : flyoutCtaRenderer.toMap(),
      };
}

class FlyoutCtaRendererFlyoutCtaRenderer {
  FlyoutCtaRendererFlyoutCtaRenderer({
    this.image,
    this.headline,
    this.description,
    this.actionButton,
    this.startMs,
    this.trackingParams,
  });

  BannerImage image;
  Description headline;
  Description description;
  ActionButton actionButton;
  int startMs;
  String trackingParams;

  factory FlyoutCtaRendererFlyoutCtaRenderer.fromJson(String str) =>
      FlyoutCtaRendererFlyoutCtaRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FlyoutCtaRendererFlyoutCtaRenderer.fromMap(
          Map<String, dynamic> json) =>
      FlyoutCtaRendererFlyoutCtaRenderer(
        image:
            json["image"] == null ? null : BannerImage.fromMap(json["image"]),
        headline: json["headline"] == null
            ? null
            : Description.fromMap(json["headline"]),
        description: json["description"] == null
            ? null
            : Description.fromMap(json["description"]),
        actionButton: json["actionButton"] == null
            ? null
            : ActionButton.fromMap(json["actionButton"]),
        startMs: json["startMs"] == null ? null : json["startMs"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "image": image == null ? null : image.toMap(),
        "headline": headline == null ? null : headline.toMap(),
        "description": description == null ? null : description.toMap(),
        "actionButton": actionButton == null ? null : actionButton.toMap(),
        "startMs": startMs == null ? null : startMs,
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class SkipOrPreviewRenderer {
  SkipOrPreviewRenderer({
    this.skipAdRenderer,
  });

  SkipAdRenderer skipAdRenderer;

  factory SkipOrPreviewRenderer.fromJson(String str) =>
      SkipOrPreviewRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SkipOrPreviewRenderer.fromMap(Map<String, dynamic> json) =>
      SkipOrPreviewRenderer(
        skipAdRenderer: json["skipAdRenderer"] == null
            ? null
            : SkipAdRenderer.fromMap(json["skipAdRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "skipAdRenderer":
            skipAdRenderer == null ? null : skipAdRenderer.toMap(),
      };
}

class SkipAdRenderer {
  SkipAdRenderer({
    this.preskipRenderer,
    this.skippableRenderer,
    this.trackingParams,
    this.skipOffsetMilliseconds,
  });

  PreskipRenderer preskipRenderer;
  Skip skippableRenderer;
  String trackingParams;
  int skipOffsetMilliseconds;

  factory SkipAdRenderer.fromJson(String str) =>
      SkipAdRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SkipAdRenderer.fromMap(Map<String, dynamic> json) => SkipAdRenderer(
        preskipRenderer: json["preskipRenderer"] == null
            ? null
            : PreskipRenderer.fromMap(json["preskipRenderer"]),
        skippableRenderer: json["skippableRenderer"] == null
            ? null
            : Skip.fromMap(json["skippableRenderer"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        skipOffsetMilliseconds: json["skipOffsetMilliseconds"] == null
            ? null
            : json["skipOffsetMilliseconds"],
      );

  Map<String, dynamic> toMap() => {
        "preskipRenderer":
            preskipRenderer == null ? null : preskipRenderer.toMap(),
        "skippableRenderer":
            skippableRenderer == null ? null : skippableRenderer.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "skipOffsetMilliseconds":
            skipOffsetMilliseconds == null ? null : skipOffsetMilliseconds,
      };
}

class PreskipRenderer {
  PreskipRenderer({
    this.adPreviewRenderer,
  });

  AdPreviewRenderer adPreviewRenderer;

  factory PreskipRenderer.fromJson(String str) =>
      PreskipRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PreskipRenderer.fromMap(Map<String, dynamic> json) => PreskipRenderer(
        adPreviewRenderer: json["adPreviewRenderer"] == null
            ? null
            : AdPreviewRenderer.fromMap(json["adPreviewRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "adPreviewRenderer":
            adPreviewRenderer == null ? null : adPreviewRenderer.toMap(),
      };
}

class AdPreviewRenderer {
  AdPreviewRenderer({
    this.thumbnail,
    this.trackingParams,
    this.templatedCountdown,
    this.durationMilliseconds,
  });

  BannerImage thumbnail;
  String trackingParams;
  TemplatedCountdown templatedCountdown;
  int durationMilliseconds;

  factory AdPreviewRenderer.fromJson(String str) =>
      AdPreviewRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AdPreviewRenderer.fromMap(Map<String, dynamic> json) =>
      AdPreviewRenderer(
        thumbnail: json["thumbnail"] == null
            ? null
            : BannerImage.fromMap(json["thumbnail"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        templatedCountdown: json["templatedCountdown"] == null
            ? null
            : TemplatedCountdown.fromMap(json["templatedCountdown"]),
        durationMilliseconds: json["durationMilliseconds"] == null
            ? null
            : json["durationMilliseconds"],
      );

  Map<String, dynamic> toMap() => {
        "thumbnail": thumbnail == null ? null : thumbnail.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "templatedCountdown":
            templatedCountdown == null ? null : templatedCountdown.toMap(),
        "durationMilliseconds":
            durationMilliseconds == null ? null : durationMilliseconds,
      };
}

class VisitAdvertiserRenderer {
  VisitAdvertiserRenderer({
    this.buttonRenderer,
  });

  VisitAdvertiserRendererButtonRenderer buttonRenderer;

  factory VisitAdvertiserRenderer.fromJson(String str) =>
      VisitAdvertiserRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VisitAdvertiserRenderer.fromMap(Map<String, dynamic> json) =>
      VisitAdvertiserRenderer(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : VisitAdvertiserRendererButtonRenderer.fromMap(
                json["buttonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toMap(),
      };
}

class VisitAdvertiserRendererButtonRenderer {
  VisitAdvertiserRendererButtonRenderer({
    this.style,
    this.text,
    this.icon,
    this.navigationEndpoint,
    this.trackingParams,
  });

  Style style;
  MessageTitle text;
  ButtonRendererIcon icon;
  NavigationEndpointClass navigationEndpoint;
  String trackingParams;

  factory VisitAdvertiserRendererButtonRenderer.fromJson(String str) =>
      VisitAdvertiserRendererButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VisitAdvertiserRendererButtonRenderer.fromMap(
          Map<String, dynamic> json) =>
      VisitAdvertiserRendererButtonRenderer(
        style: json["style"] == null ? null : styleValues.map[json["style"]],
        text: json["text"] == null ? null : MessageTitle.fromMap(json["text"]),
        icon: json["icon"] == null
            ? null
            : ButtonRendererIcon.fromMap(json["icon"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : NavigationEndpointClass.fromMap(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "style": style == null ? null : styleValues.reverse[style],
        "text": text == null ? null : text.toMap(),
        "icon": icon == null ? null : icon.toMap(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class SodarExtensionData {
  SodarExtensionData({
    this.siub,
    this.bgub,
    this.scs,
    this.bgp,
  });

  String siub;
  String bgub;
  String scs;
  String bgp;

  factory SodarExtensionData.fromJson(String str) =>
      SodarExtensionData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SodarExtensionData.fromMap(Map<String, dynamic> json) =>
      SodarExtensionData(
        siub: json["siub"] == null ? null : json["siub"],
        bgub: json["bgub"] == null ? null : json["bgub"],
        scs: json["scs"] == null ? null : json["scs"],
        bgp: json["bgp"] == null ? null : json["bgp"],
      );

  Map<String, dynamic> toMap() => {
        "siub": siub == null ? null : siub,
        "bgub": bgub == null ? null : bgub,
        "scs": scs == null ? null : scs,
        "bgp": bgp == null ? null : bgp,
      };
}

class Annotation {
  Annotation({
    this.playerAnnotationsExpandedRenderer,
  });

  PlayerAnnotationsExpandedRenderer playerAnnotationsExpandedRenderer;

  factory Annotation.fromJson(String str) =>
      Annotation.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Annotation.fromMap(Map<String, dynamic> json) => Annotation(
        playerAnnotationsExpandedRenderer:
            json["playerAnnotationsExpandedRenderer"] == null
                ? null
                : PlayerAnnotationsExpandedRenderer.fromMap(
                    json["playerAnnotationsExpandedRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "playerAnnotationsExpandedRenderer":
            playerAnnotationsExpandedRenderer == null
                ? null
                : playerAnnotationsExpandedRenderer.toMap(),
      };
}

class PlayerAnnotationsExpandedRenderer {
  PlayerAnnotationsExpandedRenderer({
    this.featuredChannel,
    this.allowSwipeDismiss,
    this.annotationId,
  });

  FeaturedChannel featuredChannel;
  bool allowSwipeDismiss;
  String annotationId;

  factory PlayerAnnotationsExpandedRenderer.fromJson(String str) =>
      PlayerAnnotationsExpandedRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PlayerAnnotationsExpandedRenderer.fromMap(
          Map<String, dynamic> json) =>
      PlayerAnnotationsExpandedRenderer(
        featuredChannel: json["featuredChannel"] == null
            ? null
            : FeaturedChannel.fromMap(json["featuredChannel"]),
        allowSwipeDismiss: json["allowSwipeDismiss"] == null
            ? null
            : json["allowSwipeDismiss"],
        annotationId:
            json["annotationId"] == null ? null : json["annotationId"],
      );

  Map<String, dynamic> toMap() => {
        "featuredChannel":
            featuredChannel == null ? null : featuredChannel.toMap(),
        "allowSwipeDismiss":
            allowSwipeDismiss == null ? null : allowSwipeDismiss,
        "annotationId": annotationId == null ? null : annotationId,
      };
}

class FeaturedChannel {
  FeaturedChannel({
    this.startTimeMs,
    this.endTimeMs,
    this.watermark,
    this.trackingParams,
    this.navigationEndpoint,
    this.channelName,
    this.subscribeButton,
  });

  String startTimeMs;
  String endTimeMs;
  IconClass watermark;
  String trackingParams;
  FeaturedChannelNavigationEndpoint navigationEndpoint;
  String channelName;
  SubscribeButtonClass subscribeButton;

  factory FeaturedChannel.fromJson(String str) =>
      FeaturedChannel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FeaturedChannel.fromMap(Map<String, dynamic> json) => FeaturedChannel(
        startTimeMs: json["startTimeMs"] == null ? null : json["startTimeMs"],
        endTimeMs: json["endTimeMs"] == null ? null : json["endTimeMs"],
        watermark: json["watermark"] == null
            ? null
            : IconClass.fromMap(json["watermark"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : FeaturedChannelNavigationEndpoint.fromMap(
                json["navigationEndpoint"]),
        channelName: json["channelName"] == null ? null : json["channelName"],
        subscribeButton: json["subscribeButton"] == null
            ? null
            : SubscribeButtonClass.fromMap(json["subscribeButton"]),
      );

  Map<String, dynamic> toMap() => {
        "startTimeMs": startTimeMs == null ? null : startTimeMs,
        "endTimeMs": endTimeMs == null ? null : endTimeMs,
        "watermark": watermark == null ? null : watermark.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "channelName": channelName == null ? null : channelName,
        "subscribeButton":
            subscribeButton == null ? null : subscribeButton.toMap(),
      };
}

class FeaturedChannelNavigationEndpoint {
  FeaturedChannelNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  String clickTrackingParams;
  ClickthroughEndpointCommandMetadata commandMetadata;
  EndpointBrowseEndpoint browseEndpoint;

  factory FeaturedChannelNavigationEndpoint.fromJson(String str) =>
      FeaturedChannelNavigationEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FeaturedChannelNavigationEndpoint.fromMap(
          Map<String, dynamic> json) =>
      FeaturedChannelNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ClickthroughEndpointCommandMetadata.fromMap(
                json["commandMetadata"]),
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : EndpointBrowseEndpoint.fromMap(json["browseEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "browseEndpoint":
            browseEndpoint == null ? null : browseEndpoint.toMap(),
      };
}

class EndpointBrowseEndpoint {
  EndpointBrowseEndpoint({
    this.browseId,
  });

  String browseId;

  factory EndpointBrowseEndpoint.fromJson(String str) =>
      EndpointBrowseEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EndpointBrowseEndpoint.fromMap(Map<String, dynamic> json) =>
      EndpointBrowseEndpoint(
        browseId: json["browseId"] == null ? null : json["browseId"],
      );

  Map<String, dynamic> toMap() => {
        "browseId": browseId == null ? null : browseId,
      };
}

class SubscribeButtonClass {
  SubscribeButtonClass({
    this.subscribeButtonRenderer,
  });

  SubscribeButtonRenderer subscribeButtonRenderer;

  factory SubscribeButtonClass.fromJson(String str) =>
      SubscribeButtonClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SubscribeButtonClass.fromMap(Map<String, dynamic> json) =>
      SubscribeButtonClass(
        subscribeButtonRenderer: json["subscribeButtonRenderer"] == null
            ? null
            : SubscribeButtonRenderer.fromMap(json["subscribeButtonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "subscribeButtonRenderer": subscribeButtonRenderer == null
            ? null
            : subscribeButtonRenderer.toMap(),
      };
}

class SubscribeButtonRenderer {
  SubscribeButtonRenderer({
    this.buttonText,
    this.subscribed,
    this.enabled,
    this.type,
    this.channelId,
    this.showPreferences,
    this.subscribedButtonText,
    this.unsubscribedButtonText,
    this.trackingParams,
    this.unsubscribeButtonText,
    this.serviceEndpoints,
    this.subscribeAccessibility,
    this.unsubscribeAccessibility,
    this.signInEndpoint,
  });

  MessageTitle buttonText;
  bool subscribed;
  bool enabled;
  String type;
  String channelId;
  bool showPreferences;
  MessageTitle subscribedButtonText;
  MessageTitle unsubscribedButtonText;
  String trackingParams;
  MessageTitle unsubscribeButtonText;
  List<SubscribeCommand> serviceEndpoints;
  SubscribeAccessibilityClass subscribeAccessibility;
  SubscribeAccessibilityClass unsubscribeAccessibility;
  SignInEndpoint signInEndpoint;

  factory SubscribeButtonRenderer.fromJson(String str) =>
      SubscribeButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SubscribeButtonRenderer.fromMap(Map<String, dynamic> json) =>
      SubscribeButtonRenderer(
        buttonText: json["buttonText"] == null
            ? null
            : MessageTitle.fromMap(json["buttonText"]),
        subscribed: json["subscribed"] == null ? null : json["subscribed"],
        enabled: json["enabled"] == null ? null : json["enabled"],
        type: json["type"] == null ? null : json["type"],
        channelId: json["channelId"] == null ? null : json["channelId"],
        showPreferences:
            json["showPreferences"] == null ? null : json["showPreferences"],
        subscribedButtonText: json["subscribedButtonText"] == null
            ? null
            : MessageTitle.fromMap(json["subscribedButtonText"]),
        unsubscribedButtonText: json["unsubscribedButtonText"] == null
            ? null
            : MessageTitle.fromMap(json["unsubscribedButtonText"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        unsubscribeButtonText: json["unsubscribeButtonText"] == null
            ? null
            : MessageTitle.fromMap(json["unsubscribeButtonText"]),
        serviceEndpoints: json["serviceEndpoints"] == null
            ? null
            : List<SubscribeCommand>.from(json["serviceEndpoints"]
                .map((x) => SubscribeCommand.fromMap(x))),
        subscribeAccessibility: json["subscribeAccessibility"] == null
            ? null
            : SubscribeAccessibilityClass.fromMap(
                json["subscribeAccessibility"]),
        unsubscribeAccessibility: json["unsubscribeAccessibility"] == null
            ? null
            : SubscribeAccessibilityClass.fromMap(
                json["unsubscribeAccessibility"]),
        signInEndpoint: json["signInEndpoint"] == null
            ? null
            : SignInEndpoint.fromMap(json["signInEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "buttonText": buttonText == null ? null : buttonText.toMap(),
        "subscribed": subscribed == null ? null : subscribed,
        "enabled": enabled == null ? null : enabled,
        "type": type == null ? null : type,
        "channelId": channelId == null ? null : channelId,
        "showPreferences": showPreferences == null ? null : showPreferences,
        "subscribedButtonText":
            subscribedButtonText == null ? null : subscribedButtonText.toMap(),
        "unsubscribedButtonText": unsubscribedButtonText == null
            ? null
            : unsubscribedButtonText.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "unsubscribeButtonText": unsubscribeButtonText == null
            ? null
            : unsubscribeButtonText.toMap(),
        "serviceEndpoints": serviceEndpoints == null
            ? null
            : List<dynamic>.from(serviceEndpoints.map((x) => x.toMap())),
        "subscribeAccessibility": subscribeAccessibility == null
            ? null
            : subscribeAccessibility.toMap(),
        "unsubscribeAccessibility": unsubscribeAccessibility == null
            ? null
            : unsubscribeAccessibility.toMap(),
        "signInEndpoint":
            signInEndpoint == null ? null : signInEndpoint.toMap(),
      };
}

class SubscribeCommand {
  SubscribeCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.subscribeEndpoint,
    this.signalServiceEndpoint,
  });

  String clickTrackingParams;
  ImpressionEndpointCommandMetadata commandMetadata;
  SubscribeEndpoint subscribeEndpoint;
  SignalServiceEndpoint signalServiceEndpoint;

  factory SubscribeCommand.fromJson(String str) =>
      SubscribeCommand.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SubscribeCommand.fromMap(Map<String, dynamic> json) =>
      SubscribeCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ImpressionEndpointCommandMetadata.fromMap(
                json["commandMetadata"]),
        subscribeEndpoint: json["subscribeEndpoint"] == null
            ? null
            : SubscribeEndpoint.fromMap(json["subscribeEndpoint"]),
        signalServiceEndpoint: json["signalServiceEndpoint"] == null
            ? null
            : SignalServiceEndpoint.fromMap(json["signalServiceEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "subscribeEndpoint":
            subscribeEndpoint == null ? null : subscribeEndpoint.toMap(),
        "signalServiceEndpoint": signalServiceEndpoint == null
            ? null
            : signalServiceEndpoint.toMap(),
      };
}

class SignalServiceEndpoint {
  SignalServiceEndpoint({
    this.signal,
    this.actions,
  });

  String signal;
  List<SignalServiceEndpointAction> actions;

  factory SignalServiceEndpoint.fromJson(String str) =>
      SignalServiceEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SignalServiceEndpoint.fromMap(Map<String, dynamic> json) =>
      SignalServiceEndpoint(
        signal: json["signal"] == null ? null : json["signal"],
        actions: json["actions"] == null
            ? null
            : List<SignalServiceEndpointAction>.from(json["actions"]
                .map((x) => SignalServiceEndpointAction.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "signal": signal == null ? null : signal,
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toMap())),
      };
}

class SignalServiceEndpointAction {
  SignalServiceEndpointAction({
    this.clickTrackingParams,
    this.openPopupAction,
  });

  String clickTrackingParams;
  OpenPopupAction openPopupAction;

  factory SignalServiceEndpointAction.fromJson(String str) =>
      SignalServiceEndpointAction.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SignalServiceEndpointAction.fromMap(Map<String, dynamic> json) =>
      SignalServiceEndpointAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        openPopupAction: json["openPopupAction"] == null
            ? null
            : OpenPopupAction.fromMap(json["openPopupAction"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "openPopupAction":
            openPopupAction == null ? null : openPopupAction.toMap(),
      };
}

class OpenPopupAction {
  OpenPopupAction({
    this.popup,
    this.popupType,
  });

  Popup popup;
  String popupType;

  factory OpenPopupAction.fromJson(String str) =>
      OpenPopupAction.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OpenPopupAction.fromMap(Map<String, dynamic> json) => OpenPopupAction(
        popup: json["popup"] == null ? null : Popup.fromMap(json["popup"]),
        popupType: json["popupType"] == null ? null : json["popupType"],
      );

  Map<String, dynamic> toMap() => {
        "popup": popup == null ? null : popup.toMap(),
        "popupType": popupType == null ? null : popupType,
      };
}

class Popup {
  Popup({
    this.confirmDialogRenderer,
  });

  ConfirmDialogRenderer confirmDialogRenderer;

  factory Popup.fromJson(String str) => Popup.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Popup.fromMap(Map<String, dynamic> json) => Popup(
        confirmDialogRenderer: json["confirmDialogRenderer"] == null
            ? null
            : ConfirmDialogRenderer.fromMap(json["confirmDialogRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "confirmDialogRenderer": confirmDialogRenderer == null
            ? null
            : confirmDialogRenderer.toMap(),
      };
}

class ConfirmDialogRenderer {
  ConfirmDialogRenderer({
    this.trackingParams,
    this.dialogMessages,
    this.confirmButton,
    this.cancelButton,
    this.primaryIsCancel,
  });

  String trackingParams;
  List<MessageTitle> dialogMessages;
  CancelButtonClass confirmButton;
  CancelButtonClass cancelButton;
  bool primaryIsCancel;

  factory ConfirmDialogRenderer.fromJson(String str) =>
      ConfirmDialogRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ConfirmDialogRenderer.fromMap(Map<String, dynamic> json) =>
      ConfirmDialogRenderer(
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        dialogMessages: json["dialogMessages"] == null
            ? null
            : List<MessageTitle>.from(
                json["dialogMessages"].map((x) => MessageTitle.fromMap(x))),
        confirmButton: json["confirmButton"] == null
            ? null
            : CancelButtonClass.fromMap(json["confirmButton"]),
        cancelButton: json["cancelButton"] == null
            ? null
            : CancelButtonClass.fromMap(json["cancelButton"]),
        primaryIsCancel:
            json["primaryIsCancel"] == null ? null : json["primaryIsCancel"],
      );

  Map<String, dynamic> toMap() => {
        "trackingParams": trackingParams == null ? null : trackingParams,
        "dialogMessages": dialogMessages == null
            ? null
            : List<dynamic>.from(dialogMessages.map((x) => x.toMap())),
        "confirmButton": confirmButton == null ? null : confirmButton.toMap(),
        "cancelButton": cancelButton == null ? null : cancelButton.toMap(),
        "primaryIsCancel": primaryIsCancel == null ? null : primaryIsCancel,
      };
}

class CancelButtonClass {
  CancelButtonClass({
    this.buttonRenderer,
  });

  CancelButtonButtonRenderer buttonRenderer;

  factory CancelButtonClass.fromJson(String str) =>
      CancelButtonClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CancelButtonClass.fromMap(Map<String, dynamic> json) =>
      CancelButtonClass(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : CancelButtonButtonRenderer.fromMap(json["buttonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toMap(),
      };
}

class CancelButtonButtonRenderer {
  CancelButtonButtonRenderer({
    this.style,
    this.size,
    this.isDisabled,
    this.text,
    this.accessibility,
    this.trackingParams,
    this.serviceEndpoint,
  });

  String style;
  Size size;
  bool isDisabled;
  MessageTitle text;
  AccessibilityDataClass accessibility;
  String trackingParams;
  UnsubscribeCommand serviceEndpoint;

  factory CancelButtonButtonRenderer.fromJson(String str) =>
      CancelButtonButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CancelButtonButtonRenderer.fromMap(Map<String, dynamic> json) =>
      CancelButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : sizeValues.map[json["size"]],
        isDisabled: json["isDisabled"] == null ? null : json["isDisabled"],
        text: json["text"] == null ? null : MessageTitle.fromMap(json["text"]),
        accessibility: json["accessibility"] == null
            ? null
            : AccessibilityDataClass.fromMap(json["accessibility"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : UnsubscribeCommand.fromMap(json["serviceEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "style": style == null ? null : style,
        "size": size == null ? null : sizeValues.reverse[size],
        "isDisabled": isDisabled == null ? null : isDisabled,
        "text": text == null ? null : text.toMap(),
        "accessibility": accessibility == null ? null : accessibility.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toMap(),
      };
}

class AccessibilityDataClass {
  AccessibilityDataClass({
    this.label,
  });

  String label;

  factory AccessibilityDataClass.fromJson(String str) =>
      AccessibilityDataClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AccessibilityDataClass.fromMap(Map<String, dynamic> json) =>
      AccessibilityDataClass(
        label: json["label"] == null ? null : json["label"],
      );

  Map<String, dynamic> toMap() => {
        "label": label == null ? null : label,
      };
}

class UnsubscribeCommand {
  UnsubscribeCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.unsubscribeEndpoint,
  });

  String clickTrackingParams;
  ImpressionEndpointCommandMetadata commandMetadata;
  SubscribeEndpoint unsubscribeEndpoint;

  factory UnsubscribeCommand.fromJson(String str) =>
      UnsubscribeCommand.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UnsubscribeCommand.fromMap(Map<String, dynamic> json) =>
      UnsubscribeCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ImpressionEndpointCommandMetadata.fromMap(
                json["commandMetadata"]),
        unsubscribeEndpoint: json["unsubscribeEndpoint"] == null
            ? null
            : SubscribeEndpoint.fromMap(json["unsubscribeEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "unsubscribeEndpoint":
            unsubscribeEndpoint == null ? null : unsubscribeEndpoint.toMap(),
      };
}

class SubscribeEndpoint {
  SubscribeEndpoint({
    this.channelIds,
    this.params,
  });

  List<String> channelIds;
  String params;

  factory SubscribeEndpoint.fromJson(String str) =>
      SubscribeEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SubscribeEndpoint.fromMap(Map<String, dynamic> json) =>
      SubscribeEndpoint(
        channelIds: json["channelIds"] == null
            ? null
            : List<String>.from(json["channelIds"].map((x) => x)),
        params: json["params"] == null ? null : json["params"],
      );

  Map<String, dynamic> toMap() => {
        "channelIds": channelIds == null
            ? null
            : List<dynamic>.from(channelIds.map((x) => x)),
        "params": params == null ? null : params,
      };
}

class SignInEndpoint {
  SignInEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
  });

  String clickTrackingParams;
  SignInEndpointCommandMetadata commandMetadata;

  factory SignInEndpoint.fromJson(String str) =>
      SignInEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SignInEndpoint.fromMap(Map<String, dynamic> json) => SignInEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : SignInEndpointCommandMetadata.fromMap(json["commandMetadata"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
      };
}

class SignInEndpointCommandMetadata {
  SignInEndpointCommandMetadata({
    this.webCommandMetadata,
  });

  WebCommandMetadataElement webCommandMetadata;

  factory SignInEndpointCommandMetadata.fromJson(String str) =>
      SignInEndpointCommandMetadata.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SignInEndpointCommandMetadata.fromMap(Map<String, dynamic> json) =>
      SignInEndpointCommandMetadata(
        webCommandMetadata: json["webCommandMetadata"] == null
            ? null
            : WebCommandMetadataElement.fromMap(json["webCommandMetadata"]),
      );

  Map<String, dynamic> toMap() => {
        "webCommandMetadata":
            webCommandMetadata == null ? null : webCommandMetadata.toMap(),
      };
}

class SubscribeAccessibilityClass {
  SubscribeAccessibilityClass({
    this.accessibilityData,
  });

  AccessibilityDataClass accessibilityData;

  factory SubscribeAccessibilityClass.fromJson(String str) =>
      SubscribeAccessibilityClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SubscribeAccessibilityClass.fromMap(Map<String, dynamic> json) =>
      SubscribeAccessibilityClass(
        accessibilityData: json["accessibilityData"] == null
            ? null
            : AccessibilityDataClass.fromMap(json["accessibilityData"]),
      );

  Map<String, dynamic> toMap() => {
        "accessibilityData":
            accessibilityData == null ? null : accessibilityData.toMap(),
      };
}

class Attestation {
  Attestation({
    this.playerAttestationRenderer,
  });

  PlayerAttestationRenderer playerAttestationRenderer;

  factory Attestation.fromJson(String str) =>
      Attestation.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Attestation.fromMap(Map<String, dynamic> json) => Attestation(
        playerAttestationRenderer: json["playerAttestationRenderer"] == null
            ? null
            : PlayerAttestationRenderer.fromMap(
                json["playerAttestationRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "playerAttestationRenderer": playerAttestationRenderer == null
            ? null
            : playerAttestationRenderer.toMap(),
      };
}

class PlayerAttestationRenderer {
  PlayerAttestationRenderer({
    this.challenge,
    this.botguardData,
  });

  String challenge;
  BotguardData botguardData;

  factory PlayerAttestationRenderer.fromJson(String str) =>
      PlayerAttestationRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PlayerAttestationRenderer.fromMap(Map<String, dynamic> json) =>
      PlayerAttestationRenderer(
        challenge: json["challenge"] == null ? null : json["challenge"],
        botguardData: json["botguardData"] == null
            ? null
            : BotguardData.fromMap(json["botguardData"]),
      );

  Map<String, dynamic> toMap() => {
        "challenge": challenge == null ? null : challenge,
        "botguardData": botguardData == null ? null : botguardData.toMap(),
      };
}

class BotguardData {
  BotguardData({
    this.program,
    this.interpreterUrl,
  });

  String program;
  String interpreterUrl;

  factory BotguardData.fromJson(String str) =>
      BotguardData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BotguardData.fromMap(Map<String, dynamic> json) => BotguardData(
        program: json["program"] == null ? null : json["program"],
        interpreterUrl:
            json["interpreterUrl"] == null ? null : json["interpreterUrl"],
      );

  Map<String, dynamic> toMap() => {
        "program": program == null ? null : program,
        "interpreterUrl": interpreterUrl == null ? null : interpreterUrl,
      };
}

class Captions {
  Captions({
    this.playerCaptionsRenderer,
    this.playerCaptionsTracklistRenderer,
  });

  PlayerCaptionsRenderer playerCaptionsRenderer;
  PlayerCaptionsTracklistRenderer playerCaptionsTracklistRenderer;

  factory Captions.fromJson(String str) => Captions.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Captions.fromMap(Map<String, dynamic> json) => Captions(
        playerCaptionsRenderer: json["playerCaptionsRenderer"] == null
            ? null
            : PlayerCaptionsRenderer.fromMap(json["playerCaptionsRenderer"]),
        playerCaptionsTracklistRenderer:
            json["playerCaptionsTracklistRenderer"] == null
                ? null
                : PlayerCaptionsTracklistRenderer.fromMap(
                    json["playerCaptionsTracklistRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "playerCaptionsRenderer": playerCaptionsRenderer == null
            ? null
            : playerCaptionsRenderer.toMap(),
        "playerCaptionsTracklistRenderer":
            playerCaptionsTracklistRenderer == null
                ? null
                : playerCaptionsTracklistRenderer.toMap(),
      };
}

class PlayerCaptionsRenderer {
  PlayerCaptionsRenderer({
    this.baseUrl,
    this.visibility,
  });

  String baseUrl;
  String visibility;

  factory PlayerCaptionsRenderer.fromJson(String str) =>
      PlayerCaptionsRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PlayerCaptionsRenderer.fromMap(Map<String, dynamic> json) =>
      PlayerCaptionsRenderer(
        baseUrl: json["baseUrl"] == null ? null : json["baseUrl"],
        visibility: json["visibility"] == null ? null : json["visibility"],
      );

  Map<String, dynamic> toMap() => {
        "baseUrl": baseUrl == null ? null : baseUrl,
        "visibility": visibility == null ? null : visibility,
      };
}

class PlayerCaptionsTracklistRenderer {
  PlayerCaptionsTracklistRenderer({
    this.captionTracks,
    this.audioTracks,
    this.translationLanguages,
    this.defaultAudioTrackIndex,
  });

  List<CaptionTrack> captionTracks;
  List<AudioTrack> audioTracks;
  List<TranslationLanguage> translationLanguages;
  int defaultAudioTrackIndex;

  factory PlayerCaptionsTracklistRenderer.fromJson(String str) =>
      PlayerCaptionsTracklistRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PlayerCaptionsTracklistRenderer.fromMap(Map<String, dynamic> json) =>
      PlayerCaptionsTracklistRenderer(
        captionTracks: json["captionTracks"] == null
            ? null
            : List<CaptionTrack>.from(
                json["captionTracks"].map((x) => CaptionTrack.fromMap(x))),
        audioTracks: json["audioTracks"] == null
            ? null
            : List<AudioTrack>.from(
                json["audioTracks"].map((x) => AudioTrack.fromMap(x))),
        translationLanguages: json["translationLanguages"] == null
            ? null
            : List<TranslationLanguage>.from(json["translationLanguages"]
                .map((x) => TranslationLanguage.fromMap(x))),
        defaultAudioTrackIndex: json["defaultAudioTrackIndex"] == null
            ? null
            : json["defaultAudioTrackIndex"],
      );

  Map<String, dynamic> toMap() => {
        "captionTracks": captionTracks == null
            ? null
            : List<dynamic>.from(captionTracks.map((x) => x.toMap())),
        "audioTracks": audioTracks == null
            ? null
            : List<dynamic>.from(audioTracks.map((x) => x.toMap())),
        "translationLanguages": translationLanguages == null
            ? null
            : List<dynamic>.from(translationLanguages.map((x) => x.toMap())),
        "defaultAudioTrackIndex":
            defaultAudioTrackIndex == null ? null : defaultAudioTrackIndex,
      };
}

class AudioTrack {
  AudioTrack({
    this.captionTrackIndices,
  });

  List<int> captionTrackIndices;

  factory AudioTrack.fromJson(String str) =>
      AudioTrack.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AudioTrack.fromMap(Map<String, dynamic> json) => AudioTrack(
        captionTrackIndices: json["captionTrackIndices"] == null
            ? null
            : List<int>.from(json["captionTrackIndices"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "captionTrackIndices": captionTrackIndices == null
            ? null
            : List<dynamic>.from(captionTrackIndices.map((x) => x)),
      };
}

class CaptionTrack {
  CaptionTrack({
    this.baseUrl,
    this.name,
    this.vssId,
    this.languageCode,
    this.kind,
    this.isTranslatable,
  });

  String baseUrl;
  HeaderText name;
  String vssId;
  String languageCode;
  String kind;
  bool isTranslatable;

  factory CaptionTrack.fromJson(String str) =>
      CaptionTrack.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CaptionTrack.fromMap(Map<String, dynamic> json) => CaptionTrack(
        baseUrl: json["baseUrl"] == null ? null : json["baseUrl"],
        name: json["name"] == null ? null : HeaderText.fromMap(json["name"]),
        vssId: json["vssId"] == null ? null : json["vssId"],
        languageCode:
            json["languageCode"] == null ? null : json["languageCode"],
        kind: json["kind"] == null ? null : json["kind"],
        isTranslatable:
            json["isTranslatable"] == null ? null : json["isTranslatable"],
      );

  Map<String, dynamic> toMap() => {
        "baseUrl": baseUrl == null ? null : baseUrl,
        "name": name == null ? null : name.toMap(),
        "vssId": vssId == null ? null : vssId,
        "languageCode": languageCode == null ? null : languageCode,
        "kind": kind == null ? null : kind,
        "isTranslatable": isTranslatable == null ? null : isTranslatable,
      };
}

class TranslationLanguage {
  TranslationLanguage({
    this.languageCode,
    this.languageName,
  });

  String languageCode;
  HeaderText languageName;

  factory TranslationLanguage.fromJson(String str) =>
      TranslationLanguage.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TranslationLanguage.fromMap(Map<String, dynamic> json) =>
      TranslationLanguage(
        languageCode:
            json["languageCode"] == null ? null : json["languageCode"],
        languageName: json["languageName"] == null
            ? null
            : HeaderText.fromMap(json["languageName"]),
      );

  Map<String, dynamic> toMap() => {
        "languageCode": languageCode == null ? null : languageCode,
        "languageName": languageName == null ? null : languageName.toMap(),
      };
}

class Cards {
  Cards({
    this.cardCollectionRenderer,
  });

  CardCollectionRenderer cardCollectionRenderer;

  factory Cards.fromJson(String str) => Cards.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Cards.fromMap(Map<String, dynamic> json) => Cards(
        cardCollectionRenderer: json["cardCollectionRenderer"] == null
            ? null
            : CardCollectionRenderer.fromMap(json["cardCollectionRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "cardCollectionRenderer": cardCollectionRenderer == null
            ? null
            : cardCollectionRenderer.toMap(),
      };
}

class CardCollectionRenderer {
  CardCollectionRenderer({
    this.cards,
    this.headerText,
    this.icon,
    this.closeButton,
    this.trackingParams,
    this.allowTeaserDismiss,
    this.logIconVisibilityUpdates,
  });

  List<Card> cards;
  HeaderText headerText;
  CloseButton icon;
  CloseButton closeButton;
  String trackingParams;
  bool allowTeaserDismiss;
  bool logIconVisibilityUpdates;

  factory CardCollectionRenderer.fromJson(String str) =>
      CardCollectionRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CardCollectionRenderer.fromMap(Map<String, dynamic> json) =>
      CardCollectionRenderer(
        cards: json["cards"] == null
            ? null
            : List<Card>.from(json["cards"].map((x) => Card.fromMap(x))),
        headerText: json["headerText"] == null
            ? null
            : HeaderText.fromMap(json["headerText"]),
        icon: json["icon"] == null ? null : CloseButton.fromMap(json["icon"]),
        closeButton: json["closeButton"] == null
            ? null
            : CloseButton.fromMap(json["closeButton"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        allowTeaserDismiss: json["allowTeaserDismiss"] == null
            ? null
            : json["allowTeaserDismiss"],
        logIconVisibilityUpdates: json["logIconVisibilityUpdates"] == null
            ? null
            : json["logIconVisibilityUpdates"],
      );

  Map<String, dynamic> toMap() => {
        "cards": cards == null
            ? null
            : List<dynamic>.from(cards.map((x) => x.toMap())),
        "headerText": headerText == null ? null : headerText.toMap(),
        "icon": icon == null ? null : icon.toMap(),
        "closeButton": closeButton == null ? null : closeButton.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "allowTeaserDismiss":
            allowTeaserDismiss == null ? null : allowTeaserDismiss,
        "logIconVisibilityUpdates":
            logIconVisibilityUpdates == null ? null : logIconVisibilityUpdates,
      };
}

class Card {
  Card({
    this.cardRenderer,
  });

  CardRenderer cardRenderer;

  factory Card.fromJson(String str) => Card.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Card.fromMap(Map<String, dynamic> json) => Card(
        cardRenderer: json["cardRenderer"] == null
            ? null
            : CardRenderer.fromMap(json["cardRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "cardRenderer": cardRenderer == null ? null : cardRenderer.toMap(),
      };
}

class CardRenderer {
  CardRenderer({
    this.teaser,
    this.content,
    this.cueRanges,
    this.icon,
    this.trackingParams,
    this.cardId,
    this.feature,
  });

  Teaser teaser;
  CardRendererContent content;
  List<CueRange> cueRanges;
  CloseButton icon;
  String trackingParams;
  String cardId;
  String feature;

  factory CardRenderer.fromJson(String str) =>
      CardRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CardRenderer.fromMap(Map<String, dynamic> json) => CardRenderer(
        teaser: json["teaser"] == null ? null : Teaser.fromMap(json["teaser"]),
        content: json["content"] == null
            ? null
            : CardRendererContent.fromMap(json["content"]),
        cueRanges: json["cueRanges"] == null
            ? null
            : List<CueRange>.from(
                json["cueRanges"].map((x) => CueRange.fromMap(x))),
        icon: json["icon"] == null ? null : CloseButton.fromMap(json["icon"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        cardId: json["cardId"] == null ? null : json["cardId"],
        feature: json["feature"] == null ? null : json["feature"],
      );

  Map<String, dynamic> toMap() => {
        "teaser": teaser == null ? null : teaser.toMap(),
        "content": content == null ? null : content.toMap(),
        "cueRanges": cueRanges == null
            ? null
            : List<dynamic>.from(cueRanges.map((x) => x.toMap())),
        "icon": icon == null ? null : icon.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "cardId": cardId == null ? null : cardId,
        "feature": feature == null ? null : feature,
      };
}

class CardRendererContent {
  CardRendererContent({
    this.videoInfoCardContentRenderer,
  });

  VideoInfoCardContentRenderer videoInfoCardContentRenderer;

  factory CardRendererContent.fromJson(String str) =>
      CardRendererContent.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CardRendererContent.fromMap(Map<String, dynamic> json) =>
      CardRendererContent(
        videoInfoCardContentRenderer:
            json["videoInfoCardContentRenderer"] == null
                ? null
                : VideoInfoCardContentRenderer.fromMap(
                    json["videoInfoCardContentRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "videoInfoCardContentRenderer": videoInfoCardContentRenderer == null
            ? null
            : videoInfoCardContentRenderer.toMap(),
      };
}

class VideoInfoCardContentRenderer {
  VideoInfoCardContentRenderer({
    this.videoThumbnail,
    this.lengthString,
    this.videoTitle,
    this.channelName,
    this.viewCountText,
    this.action,
    this.trackingParams,
  });

  IconClass videoThumbnail;
  Metadata lengthString;
  HeaderText videoTitle;
  HeaderText channelName;
  HeaderText viewCountText;
  VideoInfoCardContentRendererAction action;
  String trackingParams;

  factory VideoInfoCardContentRenderer.fromJson(String str) =>
      VideoInfoCardContentRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VideoInfoCardContentRenderer.fromMap(Map<String, dynamic> json) =>
      VideoInfoCardContentRenderer(
        videoThumbnail: json["videoThumbnail"] == null
            ? null
            : IconClass.fromMap(json["videoThumbnail"]),
        lengthString: json["lengthString"] == null
            ? null
            : Metadata.fromMap(json["lengthString"]),
        videoTitle: json["videoTitle"] == null
            ? null
            : HeaderText.fromMap(json["videoTitle"]),
        channelName: json["channelName"] == null
            ? null
            : HeaderText.fromMap(json["channelName"]),
        viewCountText: json["viewCountText"] == null
            ? null
            : HeaderText.fromMap(json["viewCountText"]),
        action: json["action"] == null
            ? null
            : VideoInfoCardContentRendererAction.fromMap(json["action"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "videoThumbnail":
            videoThumbnail == null ? null : videoThumbnail.toMap(),
        "lengthString": lengthString == null ? null : lengthString.toMap(),
        "videoTitle": videoTitle == null ? null : videoTitle.toMap(),
        "channelName": channelName == null ? null : channelName.toMap(),
        "viewCountText": viewCountText == null ? null : viewCountText.toMap(),
        "action": action == null ? null : action.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class VideoInfoCardContentRendererAction {
  VideoInfoCardContentRendererAction({
    this.clickTrackingParams,
    this.commandMetadata,
    this.watchEndpoint,
  });

  String clickTrackingParams;
  ClickthroughEndpointCommandMetadata commandMetadata;
  WatchEndpoint watchEndpoint;

  factory VideoInfoCardContentRendererAction.fromJson(String str) =>
      VideoInfoCardContentRendererAction.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VideoInfoCardContentRendererAction.fromMap(
          Map<String, dynamic> json) =>
      VideoInfoCardContentRendererAction(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ClickthroughEndpointCommandMetadata.fromMap(
                json["commandMetadata"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : WatchEndpoint.fromMap(json["watchEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toMap(),
      };
}

class WatchEndpoint {
  WatchEndpoint({
    this.videoId,
  });

  String videoId;

  factory WatchEndpoint.fromJson(String str) =>
      WatchEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WatchEndpoint.fromMap(Map<String, dynamic> json) => WatchEndpoint(
        videoId: json["videoId"] == null ? null : json["videoId"],
      );

  Map<String, dynamic> toMap() => {
        "videoId": videoId == null ? null : videoId,
      };
}

class Metadata {
  Metadata({
    this.accessibility,
    this.simpleText,
  });

  SubscribeAccessibilityClass accessibility;
  String simpleText;

  factory Metadata.fromJson(String str) => Metadata.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Metadata.fromMap(Map<String, dynamic> json) => Metadata(
        accessibility: json["accessibility"] == null
            ? null
            : SubscribeAccessibilityClass.fromMap(json["accessibility"]),
        simpleText: json["simpleText"] == null ? null : json["simpleText"],
      );

  Map<String, dynamic> toMap() => {
        "accessibility": accessibility == null ? null : accessibility.toMap(),
        "simpleText": simpleText == null ? null : simpleText,
      };
}

class CueRange {
  CueRange({
    this.startCardActiveMs,
    this.endCardActiveMs,
    this.teaserDurationMs,
    this.iconAfterTeaserMs,
  });

  String startCardActiveMs;
  String endCardActiveMs;
  String teaserDurationMs;
  String iconAfterTeaserMs;

  factory CueRange.fromJson(String str) => CueRange.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CueRange.fromMap(Map<String, dynamic> json) => CueRange(
        startCardActiveMs: json["startCardActiveMs"] == null
            ? null
            : json["startCardActiveMs"],
        endCardActiveMs:
            json["endCardActiveMs"] == null ? null : json["endCardActiveMs"],
        teaserDurationMs:
            json["teaserDurationMs"] == null ? null : json["teaserDurationMs"],
        iconAfterTeaserMs: json["iconAfterTeaserMs"] == null
            ? null
            : json["iconAfterTeaserMs"],
      );

  Map<String, dynamic> toMap() => {
        "startCardActiveMs":
            startCardActiveMs == null ? null : startCardActiveMs,
        "endCardActiveMs": endCardActiveMs == null ? null : endCardActiveMs,
        "teaserDurationMs": teaserDurationMs == null ? null : teaserDurationMs,
        "iconAfterTeaserMs":
            iconAfterTeaserMs == null ? null : iconAfterTeaserMs,
      };
}

class CloseButton {
  CloseButton({
    this.infoCardIconRenderer,
  });

  NRenderer infoCardIconRenderer;

  factory CloseButton.fromJson(String str) =>
      CloseButton.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CloseButton.fromMap(Map<String, dynamic> json) => CloseButton(
        infoCardIconRenderer: json["infoCardIconRenderer"] == null
            ? null
            : NRenderer.fromMap(json["infoCardIconRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "infoCardIconRenderer":
            infoCardIconRenderer == null ? null : infoCardIconRenderer.toMap(),
      };
}

class Teaser {
  Teaser({
    this.simpleCardTeaserRenderer,
  });

  SimpleCardTeaserRenderer simpleCardTeaserRenderer;

  factory Teaser.fromJson(String str) => Teaser.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Teaser.fromMap(Map<String, dynamic> json) => Teaser(
        simpleCardTeaserRenderer: json["simpleCardTeaserRenderer"] == null
            ? null
            : SimpleCardTeaserRenderer.fromMap(
                json["simpleCardTeaserRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "simpleCardTeaserRenderer": simpleCardTeaserRenderer == null
            ? null
            : simpleCardTeaserRenderer.toMap(),
      };
}

class SimpleCardTeaserRenderer {
  SimpleCardTeaserRenderer({
    this.message,
    this.trackingParams,
    this.prominent,
    this.logVisibilityUpdates,
  });

  HeaderText message;
  String trackingParams;
  bool prominent;
  bool logVisibilityUpdates;

  factory SimpleCardTeaserRenderer.fromJson(String str) =>
      SimpleCardTeaserRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SimpleCardTeaserRenderer.fromMap(Map<String, dynamic> json) =>
      SimpleCardTeaserRenderer(
        message: json["message"] == null
            ? null
            : HeaderText.fromMap(json["message"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        prominent: json["prominent"] == null ? null : json["prominent"],
        logVisibilityUpdates: json["logVisibilityUpdates"] == null
            ? null
            : json["logVisibilityUpdates"],
      );

  Map<String, dynamic> toMap() => {
        "message": message == null ? null : message.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "prominent": prominent == null ? null : prominent,
        "logVisibilityUpdates":
            logVisibilityUpdates == null ? null : logVisibilityUpdates,
      };
}

class Endscreen {
  Endscreen({
    this.endscreenRenderer,
  });

  EndscreenRenderer endscreenRenderer;

  factory Endscreen.fromJson(String str) => Endscreen.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Endscreen.fromMap(Map<String, dynamic> json) => Endscreen(
        endscreenRenderer: json["endscreenRenderer"] == null
            ? null
            : EndscreenRenderer.fromMap(json["endscreenRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "endscreenRenderer":
            endscreenRenderer == null ? null : endscreenRenderer.toMap(),
      };
}

class EndscreenRenderer {
  EndscreenRenderer({
    this.elements,
    this.startMs,
    this.trackingParams,
  });

  List<Element> elements;
  String startMs;
  String trackingParams;

  factory EndscreenRenderer.fromJson(String str) =>
      EndscreenRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EndscreenRenderer.fromMap(Map<String, dynamic> json) =>
      EndscreenRenderer(
        elements: json["elements"] == null
            ? null
            : List<Element>.from(
                json["elements"].map((x) => Element.fromMap(x))),
        startMs: json["startMs"] == null ? null : json["startMs"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "elements": elements == null
            ? null
            : List<dynamic>.from(elements.map((x) => x.toMap())),
        "startMs": startMs == null ? null : startMs,
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class Element {
  Element({
    this.endscreenElementRenderer,
  });

  EndscreenElementRenderer endscreenElementRenderer;

  factory Element.fromJson(String str) => Element.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Element.fromMap(Map<String, dynamic> json) => Element(
        endscreenElementRenderer: json["endscreenElementRenderer"] == null
            ? null
            : EndscreenElementRenderer.fromMap(
                json["endscreenElementRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "endscreenElementRenderer": endscreenElementRenderer == null
            ? null
            : endscreenElementRenderer.toMap(),
      };
}

class EndscreenElementRenderer {
  EndscreenElementRenderer({
    this.style,
    this.image,
    this.icon,
    this.left,
    this.width,
    this.top,
    this.aspectRatio,
    this.startMs,
    this.endMs,
    this.title,
    this.metadata,
    this.callToAction,
    this.dismiss,
    this.endpoint,
    this.hovercardButton,
    this.trackingParams,
    this.isSubscribe,
    this.id,
    this.videoDuration,
  });

  String style;
  IconClass image;
  BackgroundClass icon;
  double left;
  double width;
  double top;
  double aspectRatio;
  String startMs;
  String endMs;
  Metadata title;
  Metadata metadata;
  HeaderText callToAction;
  HeaderText dismiss;
  EndscreenElementRendererEndpoint endpoint;
  SubscribeButtonClass hovercardButton;
  String trackingParams;
  bool isSubscribe;
  String id;
  HeaderText videoDuration;

  factory EndscreenElementRenderer.fromJson(String str) =>
      EndscreenElementRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EndscreenElementRenderer.fromMap(Map<String, dynamic> json) =>
      EndscreenElementRenderer(
        style: json["style"] == null ? null : json["style"],
        image: json["image"] == null ? null : IconClass.fromMap(json["image"]),
        icon:
            json["icon"] == null ? null : BackgroundClass.fromMap(json["icon"]),
        left: json["left"] == null ? null : json["left"].toDouble(),
        width: json["width"] == null ? null : json["width"].toDouble(),
        top: json["top"] == null ? null : json["top"].toDouble(),
        aspectRatio:
            json["aspectRatio"] == null ? null : json["aspectRatio"].toDouble(),
        startMs: json["startMs"] == null ? null : json["startMs"],
        endMs: json["endMs"] == null ? null : json["endMs"],
        title: json["title"] == null ? null : Metadata.fromMap(json["title"]),
        metadata: json["metadata"] == null
            ? null
            : Metadata.fromMap(json["metadata"]),
        callToAction: json["callToAction"] == null
            ? null
            : HeaderText.fromMap(json["callToAction"]),
        dismiss: json["dismiss"] == null
            ? null
            : HeaderText.fromMap(json["dismiss"]),
        endpoint: json["endpoint"] == null
            ? null
            : EndscreenElementRendererEndpoint.fromMap(json["endpoint"]),
        hovercardButton: json["hovercardButton"] == null
            ? null
            : SubscribeButtonClass.fromMap(json["hovercardButton"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        isSubscribe: json["isSubscribe"] == null ? null : json["isSubscribe"],
        id: json["id"] == null ? null : json["id"],
        videoDuration: json["videoDuration"] == null
            ? null
            : HeaderText.fromMap(json["videoDuration"]),
      );

  Map<String, dynamic> toMap() => {
        "style": style == null ? null : style,
        "image": image == null ? null : image.toMap(),
        "icon": icon == null ? null : icon.toMap(),
        "left": left == null ? null : left,
        "width": width == null ? null : width,
        "top": top == null ? null : top,
        "aspectRatio": aspectRatio == null ? null : aspectRatio,
        "startMs": startMs == null ? null : startMs,
        "endMs": endMs == null ? null : endMs,
        "title": title == null ? null : title.toMap(),
        "metadata": metadata == null ? null : metadata.toMap(),
        "callToAction": callToAction == null ? null : callToAction.toMap(),
        "dismiss": dismiss == null ? null : dismiss.toMap(),
        "endpoint": endpoint == null ? null : endpoint.toMap(),
        "hovercardButton":
            hovercardButton == null ? null : hovercardButton.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
        "isSubscribe": isSubscribe == null ? null : isSubscribe,
        "id": id == null ? null : id,
        "videoDuration": videoDuration == null ? null : videoDuration.toMap(),
      };
}

class EndscreenElementRendererEndpoint {
  EndscreenElementRendererEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
    this.watchEndpoint,
    this.urlEndpoint,
  });

  String clickTrackingParams;
  ClickthroughEndpointCommandMetadata commandMetadata;
  EndpointBrowseEndpoint browseEndpoint;
  WatchEndpoint watchEndpoint;
  UrlEndpoint urlEndpoint;

  factory EndscreenElementRendererEndpoint.fromJson(String str) =>
      EndscreenElementRendererEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EndscreenElementRendererEndpoint.fromMap(Map<String, dynamic> json) =>
      EndscreenElementRendererEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ClickthroughEndpointCommandMetadata.fromMap(
                json["commandMetadata"]),
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : EndpointBrowseEndpoint.fromMap(json["browseEndpoint"]),
        watchEndpoint: json["watchEndpoint"] == null
            ? null
            : WatchEndpoint.fromMap(json["watchEndpoint"]),
        urlEndpoint: json["urlEndpoint"] == null
            ? null
            : UrlEndpoint.fromMap(json["urlEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "browseEndpoint":
            browseEndpoint == null ? null : browseEndpoint.toMap(),
        "watchEndpoint": watchEndpoint == null ? null : watchEndpoint.toMap(),
        "urlEndpoint": urlEndpoint == null ? null : urlEndpoint.toMap(),
      };
}

class Message {
  Message({
    this.mealbarPromoRenderer,
    this.tooltipRenderer,
  });

  MealbarPromoRenderer mealbarPromoRenderer;
  TooltipRenderer tooltipRenderer;

  factory Message.fromJson(String str) => Message.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Message.fromMap(Map<String, dynamic> json) => Message(
        mealbarPromoRenderer: json["mealbarPromoRenderer"] == null
            ? null
            : MealbarPromoRenderer.fromMap(json["mealbarPromoRenderer"]),
        tooltipRenderer: json["tooltipRenderer"] == null
            ? null
            : TooltipRenderer.fromMap(json["tooltipRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "mealbarPromoRenderer":
            mealbarPromoRenderer == null ? null : mealbarPromoRenderer.toMap(),
        "tooltipRenderer":
            tooltipRenderer == null ? null : tooltipRenderer.toMap(),
      };
}

class MealbarPromoRenderer {
  MealbarPromoRenderer({
    this.icon,
    this.messageTexts,
    this.actionButton,
    this.dismissButton,
    this.triggerCondition,
    this.style,
    this.trackingParams,
    this.impressionEndpoints,
    this.isVisible,
    this.messageTitle,
  });

  IconClass icon;
  List<MessageTitle> messageTexts;
  ActionButtonClass actionButton;
  ActionButtonClass dismissButton;
  String triggerCondition;
  String style;
  String trackingParams;
  List<ImpressionEndpoint> impressionEndpoints;
  bool isVisible;
  MessageTitle messageTitle;

  factory MealbarPromoRenderer.fromJson(String str) =>
      MealbarPromoRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MealbarPromoRenderer.fromMap(Map<String, dynamic> json) =>
      MealbarPromoRenderer(
        icon: json["icon"] == null ? null : IconClass.fromMap(json["icon"]),
        messageTexts: json["messageTexts"] == null
            ? null
            : List<MessageTitle>.from(
                json["messageTexts"].map((x) => MessageTitle.fromMap(x))),
        actionButton: json["actionButton"] == null
            ? null
            : ActionButtonClass.fromMap(json["actionButton"]),
        dismissButton: json["dismissButton"] == null
            ? null
            : ActionButtonClass.fromMap(json["dismissButton"]),
        triggerCondition:
            json["triggerCondition"] == null ? null : json["triggerCondition"],
        style: json["style"] == null ? null : json["style"],
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
        impressionEndpoints: json["impressionEndpoints"] == null
            ? null
            : List<ImpressionEndpoint>.from(json["impressionEndpoints"]
                .map((x) => ImpressionEndpoint.fromMap(x))),
        isVisible: json["isVisible"] == null ? null : json["isVisible"],
        messageTitle: json["messageTitle"] == null
            ? null
            : MessageTitle.fromMap(json["messageTitle"]),
      );

  Map<String, dynamic> toMap() => {
        "icon": icon == null ? null : icon.toMap(),
        "messageTexts": messageTexts == null
            ? null
            : List<dynamic>.from(messageTexts.map((x) => x.toMap())),
        "actionButton": actionButton == null ? null : actionButton.toMap(),
        "dismissButton": dismissButton == null ? null : dismissButton.toMap(),
        "triggerCondition": triggerCondition == null ? null : triggerCondition,
        "style": style == null ? null : style,
        "trackingParams": trackingParams == null ? null : trackingParams,
        "impressionEndpoints": impressionEndpoints == null
            ? null
            : List<dynamic>.from(impressionEndpoints.map((x) => x.toMap())),
        "isVisible": isVisible == null ? null : isVisible,
        "messageTitle": messageTitle == null ? null : messageTitle.toMap(),
      };
}

class ActionButtonClass {
  ActionButtonClass({
    this.buttonRenderer,
  });

  DismissButtonButtonRenderer buttonRenderer;

  factory ActionButtonClass.fromJson(String str) =>
      ActionButtonClass.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ActionButtonClass.fromMap(Map<String, dynamic> json) =>
      ActionButtonClass(
        buttonRenderer: json["buttonRenderer"] == null
            ? null
            : DismissButtonButtonRenderer.fromMap(json["buttonRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "buttonRenderer":
            buttonRenderer == null ? null : buttonRenderer.toMap(),
      };
}

class DismissButtonButtonRenderer {
  DismissButtonButtonRenderer({
    this.style,
    this.size,
    this.text,
    this.serviceEndpoint,
    this.navigationEndpoint,
    this.trackingParams,
  });

  String style;
  Size size;
  MessageTitle text;
  ImpressionEndpoint serviceEndpoint;
  TentacledNavigationEndpoint navigationEndpoint;
  String trackingParams;

  factory DismissButtonButtonRenderer.fromJson(String str) =>
      DismissButtonButtonRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DismissButtonButtonRenderer.fromMap(Map<String, dynamic> json) =>
      DismissButtonButtonRenderer(
        style: json["style"] == null ? null : json["style"],
        size: json["size"] == null ? null : sizeValues.map[json["size"]],
        text: json["text"] == null ? null : MessageTitle.fromMap(json["text"]),
        serviceEndpoint: json["serviceEndpoint"] == null
            ? null
            : ImpressionEndpoint.fromMap(json["serviceEndpoint"]),
        navigationEndpoint: json["navigationEndpoint"] == null
            ? null
            : TentacledNavigationEndpoint.fromMap(json["navigationEndpoint"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "style": style == null ? null : style,
        "size": size == null ? null : sizeValues.reverse[size],
        "text": text == null ? null : text.toMap(),
        "serviceEndpoint":
            serviceEndpoint == null ? null : serviceEndpoint.toMap(),
        "navigationEndpoint":
            navigationEndpoint == null ? null : navigationEndpoint.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class TentacledNavigationEndpoint {
  TentacledNavigationEndpoint({
    this.clickTrackingParams,
    this.commandMetadata,
    this.browseEndpoint,
  });

  String clickTrackingParams;
  ClickthroughEndpointCommandMetadata commandMetadata;
  PurpleBrowseEndpoint browseEndpoint;

  factory TentacledNavigationEndpoint.fromJson(String str) =>
      TentacledNavigationEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TentacledNavigationEndpoint.fromMap(Map<String, dynamic> json) =>
      TentacledNavigationEndpoint(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ClickthroughEndpointCommandMetadata.fromMap(
                json["commandMetadata"]),
        browseEndpoint: json["browseEndpoint"] == null
            ? null
            : PurpleBrowseEndpoint.fromMap(json["browseEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "browseEndpoint":
            browseEndpoint == null ? null : browseEndpoint.toMap(),
      };
}

class PurpleBrowseEndpoint {
  PurpleBrowseEndpoint({
    this.browseId,
    this.params,
  });

  String browseId;
  String params;

  factory PurpleBrowseEndpoint.fromJson(String str) =>
      PurpleBrowseEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleBrowseEndpoint.fromMap(Map<String, dynamic> json) =>
      PurpleBrowseEndpoint(
        browseId: json["browseId"] == null ? null : json["browseId"],
        params: json["params"] == null ? null : json["params"],
      );

  Map<String, dynamic> toMap() => {
        "browseId": browseId == null ? null : browseId,
        "params": params == null ? null : params,
      };
}

class TooltipRenderer {
  TooltipRenderer({
    this.promoConfig,
    this.targetId,
    this.text,
    this.detailsText,
    this.acceptButton,
    this.suggestedPosition,
    this.dismissStrategy,
    this.trackingParams,
  });

  PromoConfig promoConfig;
  String targetId;
  MessageTitle text;
  MessageTitle detailsText;
  AcceptButton acceptButton;
  DismissStrategy suggestedPosition;
  DismissStrategy dismissStrategy;
  String trackingParams;

  factory TooltipRenderer.fromJson(String str) =>
      TooltipRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TooltipRenderer.fromMap(Map<String, dynamic> json) => TooltipRenderer(
        promoConfig: json["promoConfig"] == null
            ? null
            : PromoConfig.fromMap(json["promoConfig"]),
        targetId: json["targetId"] == null ? null : json["targetId"],
        text: json["text"] == null ? null : MessageTitle.fromMap(json["text"]),
        detailsText: json["detailsText"] == null
            ? null
            : MessageTitle.fromMap(json["detailsText"]),
        acceptButton: json["acceptButton"] == null
            ? null
            : AcceptButton.fromMap(json["acceptButton"]),
        suggestedPosition: json["suggestedPosition"] == null
            ? null
            : DismissStrategy.fromMap(json["suggestedPosition"]),
        dismissStrategy: json["dismissStrategy"] == null
            ? null
            : DismissStrategy.fromMap(json["dismissStrategy"]),
        trackingParams:
            json["trackingParams"] == null ? null : json["trackingParams"],
      );

  Map<String, dynamic> toMap() => {
        "promoConfig": promoConfig == null ? null : promoConfig.toMap(),
        "targetId": targetId == null ? null : targetId,
        "text": text == null ? null : text.toMap(),
        "detailsText": detailsText == null ? null : detailsText.toMap(),
        "acceptButton": acceptButton == null ? null : acceptButton.toMap(),
        "suggestedPosition":
            suggestedPosition == null ? null : suggestedPosition.toMap(),
        "dismissStrategy":
            dismissStrategy == null ? null : dismissStrategy.toMap(),
        "trackingParams": trackingParams == null ? null : trackingParams,
      };
}

class PromoConfig {
  PromoConfig({
    this.promoId,
    this.impressionEndpoints,
    this.acceptCommand,
    this.dismissCommand,
  });

  String promoId;
  List<ImpressionEndpoint> impressionEndpoints;
  ImpressionEndpoint acceptCommand;
  ImpressionEndpoint dismissCommand;

  factory PromoConfig.fromJson(String str) =>
      PromoConfig.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PromoConfig.fromMap(Map<String, dynamic> json) => PromoConfig(
        promoId: json["promoId"] == null ? null : json["promoId"],
        impressionEndpoints: json["impressionEndpoints"] == null
            ? null
            : List<ImpressionEndpoint>.from(json["impressionEndpoints"]
                .map((x) => ImpressionEndpoint.fromMap(x))),
        acceptCommand: json["acceptCommand"] == null
            ? null
            : ImpressionEndpoint.fromMap(json["acceptCommand"]),
        dismissCommand: json["dismissCommand"] == null
            ? null
            : ImpressionEndpoint.fromMap(json["dismissCommand"]),
      );

  Map<String, dynamic> toMap() => {
        "promoId": promoId == null ? null : promoId,
        "impressionEndpoints": impressionEndpoints == null
            ? null
            : List<dynamic>.from(impressionEndpoints.map((x) => x.toMap())),
        "acceptCommand": acceptCommand == null ? null : acceptCommand.toMap(),
        "dismissCommand":
            dismissCommand == null ? null : dismissCommand.toMap(),
      };
}

class Microformat {
  Microformat({
    this.playerMicroformatRenderer,
  });

  PlayerMicroformatRenderer playerMicroformatRenderer;

  factory Microformat.fromJson(String str) =>
      Microformat.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Microformat.fromMap(Map<String, dynamic> json) => Microformat(
        playerMicroformatRenderer: json["playerMicroformatRenderer"] == null
            ? null
            : PlayerMicroformatRenderer.fromMap(
                json["playerMicroformatRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "playerMicroformatRenderer": playerMicroformatRenderer == null
            ? null
            : playerMicroformatRenderer.toMap(),
      };
}

class PlayerMicroformatRenderer {
  PlayerMicroformatRenderer({
    this.thumbnail,
    this.embed,
    this.title,
    this.description,
    this.lengthSeconds,
    this.ownerProfileUrl,
    this.externalChannelId,
    this.isFamilySafe,
    this.availableCountries,
    this.isUnlisted,
    this.hasYpcMetadata,
    this.viewCount,
    this.category,
    this.publishDate,
    this.ownerChannelName,
    this.uploadDate,
  });

  IconClass thumbnail;
  Embed embed;
  HeaderText title;
  HeaderText description;
  String lengthSeconds;
  String ownerProfileUrl;
  String externalChannelId;
  bool isFamilySafe;
  List<String> availableCountries;
  bool isUnlisted;
  bool hasYpcMetadata;
  String viewCount;
  String category;
  DateTime publishDate;
  String ownerChannelName;
  DateTime uploadDate;

  factory PlayerMicroformatRenderer.fromJson(String str) =>
      PlayerMicroformatRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PlayerMicroformatRenderer.fromMap(Map<String, dynamic> json) =>
      PlayerMicroformatRenderer(
        thumbnail: json["thumbnail"] == null
            ? null
            : IconClass.fromMap(json["thumbnail"]),
        embed: json["embed"] == null ? null : Embed.fromMap(json["embed"]),
        title: json["title"] == null ? null : HeaderText.fromMap(json["title"]),
        description: json["description"] == null
            ? null
            : HeaderText.fromMap(json["description"]),
        lengthSeconds:
            json["lengthSeconds"] == null ? null : json["lengthSeconds"],
        ownerProfileUrl:
            json["ownerProfileUrl"] == null ? null : json["ownerProfileUrl"],
        externalChannelId: json["externalChannelId"] == null
            ? null
            : json["externalChannelId"],
        isFamilySafe:
            json["isFamilySafe"] == null ? null : json["isFamilySafe"],
        availableCountries: json["availableCountries"] == null
            ? null
            : List<String>.from(json["availableCountries"].map((x) => x)),
        isUnlisted: json["isUnlisted"] == null ? null : json["isUnlisted"],
        hasYpcMetadata:
            json["hasYpcMetadata"] == null ? null : json["hasYpcMetadata"],
        viewCount: json["viewCount"] == null ? null : json["viewCount"],
        category: json["category"] == null ? null : json["category"],
        publishDate: json["publishDate"] == null
            ? null
            : DateTime.parse(json["publishDate"]),
        ownerChannelName:
            json["ownerChannelName"] == null ? null : json["ownerChannelName"],
        uploadDate: json["uploadDate"] == null
            ? null
            : DateTime.parse(json["uploadDate"]),
      );

  Map<String, dynamic> toMap() => {
        "thumbnail": thumbnail == null ? null : thumbnail.toMap(),
        "embed": embed == null ? null : embed.toMap(),
        "title": title == null ? null : title.toMap(),
        "description": description == null ? null : description.toMap(),
        "lengthSeconds": lengthSeconds == null ? null : lengthSeconds,
        "ownerProfileUrl": ownerProfileUrl == null ? null : ownerProfileUrl,
        "externalChannelId":
            externalChannelId == null ? null : externalChannelId,
        "isFamilySafe": isFamilySafe == null ? null : isFamilySafe,
        "availableCountries": availableCountries == null
            ? null
            : List<dynamic>.from(availableCountries.map((x) => x)),
        "isUnlisted": isUnlisted == null ? null : isUnlisted,
        "hasYpcMetadata": hasYpcMetadata == null ? null : hasYpcMetadata,
        "viewCount": viewCount == null ? null : viewCount,
        "category": category == null ? null : category,
        "publishDate": publishDate == null
            ? null
            : "${publishDate.year.toString().padLeft(4, '0')}-${publishDate.month.toString().padLeft(2, '0')}-${publishDate.day.toString().padLeft(2, '0')}",
        "ownerChannelName": ownerChannelName == null ? null : ownerChannelName,
        "uploadDate": uploadDate == null
            ? null
            : "${uploadDate.year.toString().padLeft(4, '0')}-${uploadDate.month.toString().padLeft(2, '0')}-${uploadDate.day.toString().padLeft(2, '0')}",
      };
}

class Embed {
  Embed({
    this.iframeUrl,
    this.flashUrl,
    this.width,
    this.height,
    this.flashSecureUrl,
  });

  String iframeUrl;
  String flashUrl;
  int width;
  int height;
  String flashSecureUrl;

  factory Embed.fromJson(String str) => Embed.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Embed.fromMap(Map<String, dynamic> json) => Embed(
        iframeUrl: json["iframeUrl"] == null ? null : json["iframeUrl"],
        flashUrl: json["flashUrl"] == null ? null : json["flashUrl"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
        flashSecureUrl:
            json["flashSecureUrl"] == null ? null : json["flashSecureUrl"],
      );

  Map<String, dynamic> toMap() => {
        "iframeUrl": iframeUrl == null ? null : iframeUrl,
        "flashUrl": flashUrl == null ? null : flashUrl,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "flashSecureUrl": flashSecureUrl == null ? null : flashSecureUrl,
      };
}

class PlayabilityStatus {
  PlayabilityStatus({
    this.status,
    this.playableInEmbed,
    this.miniplayer,
    this.contextParams,
  });

  String status;
  bool playableInEmbed;
  Miniplayer miniplayer;
  String contextParams;

  factory PlayabilityStatus.fromJson(String str) =>
      PlayabilityStatus.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PlayabilityStatus.fromMap(Map<String, dynamic> json) =>
      PlayabilityStatus(
        status: json["status"] == null ? null : json["status"],
        playableInEmbed:
            json["playableInEmbed"] == null ? null : json["playableInEmbed"],
        miniplayer: json["miniplayer"] == null
            ? null
            : Miniplayer.fromMap(json["miniplayer"]),
        contextParams:
            json["contextParams"] == null ? null : json["contextParams"],
      );

  Map<String, dynamic> toMap() => {
        "status": status == null ? null : status,
        "playableInEmbed": playableInEmbed == null ? null : playableInEmbed,
        "miniplayer": miniplayer == null ? null : miniplayer.toMap(),
        "contextParams": contextParams == null ? null : contextParams,
      };
}

class Miniplayer {
  Miniplayer({
    this.miniplayerRenderer,
  });

  MiniplayerRenderer miniplayerRenderer;

  factory Miniplayer.fromJson(String str) =>
      Miniplayer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Miniplayer.fromMap(Map<String, dynamic> json) => Miniplayer(
        miniplayerRenderer: json["miniplayerRenderer"] == null
            ? null
            : MiniplayerRenderer.fromMap(json["miniplayerRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "miniplayerRenderer":
            miniplayerRenderer == null ? null : miniplayerRenderer.toMap(),
      };
}

class MiniplayerRenderer {
  MiniplayerRenderer({
    this.playbackMode,
  });

  String playbackMode;

  factory MiniplayerRenderer.fromJson(String str) =>
      MiniplayerRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MiniplayerRenderer.fromMap(Map<String, dynamic> json) =>
      MiniplayerRenderer(
        playbackMode:
            json["playbackMode"] == null ? null : json["playbackMode"],
      );

  Map<String, dynamic> toMap() => {
        "playbackMode": playbackMode == null ? null : playbackMode,
      };
}

class PlaybackTracking {
  PlaybackTracking({
    this.videostatsPlaybackUrl,
    this.videostatsDelayplayUrl,
    this.videostatsWatchtimeUrl,
    this.ptrackingUrl,
    this.qoeUrl,
    this.setAwesomeUrl,
    this.atrUrl,
    this.youtubeRemarketingUrl,
    this.googleRemarketingUrl,
  });

  PtrackingUrl videostatsPlaybackUrl;
  PtrackingUrl videostatsDelayplayUrl;
  PtrackingUrl videostatsWatchtimeUrl;
  PtrackingUrl ptrackingUrl;
  PtrackingUrl qoeUrl;
  Url setAwesomeUrl;
  Url atrUrl;
  Url youtubeRemarketingUrl;
  Url googleRemarketingUrl;

  factory PlaybackTracking.fromJson(String str) =>
      PlaybackTracking.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PlaybackTracking.fromMap(Map<String, dynamic> json) =>
      PlaybackTracking(
        videostatsPlaybackUrl: json["videostatsPlaybackUrl"] == null
            ? null
            : PtrackingUrl.fromMap(json["videostatsPlaybackUrl"]),
        videostatsDelayplayUrl: json["videostatsDelayplayUrl"] == null
            ? null
            : PtrackingUrl.fromMap(json["videostatsDelayplayUrl"]),
        videostatsWatchtimeUrl: json["videostatsWatchtimeUrl"] == null
            ? null
            : PtrackingUrl.fromMap(json["videostatsWatchtimeUrl"]),
        ptrackingUrl: json["ptrackingUrl"] == null
            ? null
            : PtrackingUrl.fromMap(json["ptrackingUrl"]),
        qoeUrl: json["qoeUrl"] == null
            ? null
            : PtrackingUrl.fromMap(json["qoeUrl"]),
        setAwesomeUrl: json["setAwesomeUrl"] == null
            ? null
            : Url.fromMap(json["setAwesomeUrl"]),
        atrUrl: json["atrUrl"] == null ? null : Url.fromMap(json["atrUrl"]),
        youtubeRemarketingUrl: json["youtubeRemarketingUrl"] == null
            ? null
            : Url.fromMap(json["youtubeRemarketingUrl"]),
        googleRemarketingUrl: json["googleRemarketingUrl"] == null
            ? null
            : Url.fromMap(json["googleRemarketingUrl"]),
      );

  Map<String, dynamic> toMap() => {
        "videostatsPlaybackUrl": videostatsPlaybackUrl == null
            ? null
            : videostatsPlaybackUrl.toMap(),
        "videostatsDelayplayUrl": videostatsDelayplayUrl == null
            ? null
            : videostatsDelayplayUrl.toMap(),
        "videostatsWatchtimeUrl": videostatsWatchtimeUrl == null
            ? null
            : videostatsWatchtimeUrl.toMap(),
        "ptrackingUrl": ptrackingUrl == null ? null : ptrackingUrl.toMap(),
        "qoeUrl": qoeUrl == null ? null : qoeUrl.toMap(),
        "setAwesomeUrl": setAwesomeUrl == null ? null : setAwesomeUrl.toMap(),
        "atrUrl": atrUrl == null ? null : atrUrl.toMap(),
        "youtubeRemarketingUrl": youtubeRemarketingUrl == null
            ? null
            : youtubeRemarketingUrl.toMap(),
        "googleRemarketingUrl":
            googleRemarketingUrl == null ? null : googleRemarketingUrl.toMap(),
      };
}

class Url {
  Url({
    this.baseUrl,
    this.elapsedMediaTimeSeconds,
  });

  String baseUrl;
  int elapsedMediaTimeSeconds;

  factory Url.fromJson(String str) => Url.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Url.fromMap(Map<String, dynamic> json) => Url(
        baseUrl: json["baseUrl"] == null ? null : json["baseUrl"],
        elapsedMediaTimeSeconds: json["elapsedMediaTimeSeconds"] == null
            ? null
            : json["elapsedMediaTimeSeconds"],
      );

  Map<String, dynamic> toMap() => {
        "baseUrl": baseUrl == null ? null : baseUrl,
        "elapsedMediaTimeSeconds":
            elapsedMediaTimeSeconds == null ? null : elapsedMediaTimeSeconds,
      };
}

class PlayerAd {
  PlayerAd({
    this.playerLegacyDesktopWatchAdsRenderer,
  });

  PlayerLegacyDesktopWatchAdsRenderer playerLegacyDesktopWatchAdsRenderer;

  factory PlayerAd.fromJson(String str) => PlayerAd.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PlayerAd.fromMap(Map<String, dynamic> json) => PlayerAd(
        playerLegacyDesktopWatchAdsRenderer:
            json["playerLegacyDesktopWatchAdsRenderer"] == null
                ? null
                : PlayerLegacyDesktopWatchAdsRenderer.fromMap(
                    json["playerLegacyDesktopWatchAdsRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "playerLegacyDesktopWatchAdsRenderer":
            playerLegacyDesktopWatchAdsRenderer == null
                ? null
                : playerLegacyDesktopWatchAdsRenderer.toMap(),
      };
}

class PlayerLegacyDesktopWatchAdsRenderer {
  PlayerLegacyDesktopWatchAdsRenderer({
    this.playerAdParams,
    this.gutParams,
    this.showCompanion,
    this.showInstream,
    this.useGut,
  });

  PlayerAdParams playerAdParams;
  GutParams gutParams;
  bool showCompanion;
  bool showInstream;
  bool useGut;

  factory PlayerLegacyDesktopWatchAdsRenderer.fromJson(String str) =>
      PlayerLegacyDesktopWatchAdsRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PlayerLegacyDesktopWatchAdsRenderer.fromMap(
          Map<String, dynamic> json) =>
      PlayerLegacyDesktopWatchAdsRenderer(
        playerAdParams: json["playerAdParams"] == null
            ? null
            : PlayerAdParams.fromMap(json["playerAdParams"]),
        gutParams: json["gutParams"] == null
            ? null
            : GutParams.fromMap(json["gutParams"]),
        showCompanion:
            json["showCompanion"] == null ? null : json["showCompanion"],
        showInstream:
            json["showInstream"] == null ? null : json["showInstream"],
        useGut: json["useGut"] == null ? null : json["useGut"],
      );

  Map<String, dynamic> toMap() => {
        "playerAdParams":
            playerAdParams == null ? null : playerAdParams.toMap(),
        "gutParams": gutParams == null ? null : gutParams.toMap(),
        "showCompanion": showCompanion == null ? null : showCompanion,
        "showInstream": showInstream == null ? null : showInstream,
        "useGut": useGut == null ? null : useGut,
      };
}

class GutParams {
  GutParams({
    this.tag,
  });

  String tag;

  factory GutParams.fromJson(String str) => GutParams.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GutParams.fromMap(Map<String, dynamic> json) => GutParams(
        tag: json["tag"] == null ? null : json["tag"],
      );

  Map<String, dynamic> toMap() => {
        "tag": tag == null ? null : tag,
      };
}

class PlayerAdParams {
  PlayerAdParams({
    this.showContentThumbnail,
    this.enabledEngageTypes,
  });

  bool showContentThumbnail;
  String enabledEngageTypes;

  factory PlayerAdParams.fromJson(String str) =>
      PlayerAdParams.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PlayerAdParams.fromMap(Map<String, dynamic> json) => PlayerAdParams(
        showContentThumbnail: json["showContentThumbnail"] == null
            ? null
            : json["showContentThumbnail"],
        enabledEngageTypes: json["enabledEngageTypes"] == null
            ? null
            : json["enabledEngageTypes"],
      );

  Map<String, dynamic> toMap() => {
        "showContentThumbnail":
            showContentThumbnail == null ? null : showContentThumbnail,
        "enabledEngageTypes":
            enabledEngageTypes == null ? null : enabledEngageTypes,
      };
}

class PlayerConfig {
  PlayerConfig({
    this.audioConfig,
    this.streamSelectionConfig,
    this.daiConfig,
    this.mediaCommonConfig,
    this.webPlayerConfig,
  });

  AudioConfig audioConfig;
  StreamSelectionConfig streamSelectionConfig;
  DaiConfig daiConfig;
  MediaCommonConfig mediaCommonConfig;
  WebPlayerConfig webPlayerConfig;

  factory PlayerConfig.fromJson(String str) =>
      PlayerConfig.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PlayerConfig.fromMap(Map<String, dynamic> json) => PlayerConfig(
        audioConfig: json["audioConfig"] == null
            ? null
            : AudioConfig.fromMap(json["audioConfig"]),
        streamSelectionConfig: json["streamSelectionConfig"] == null
            ? null
            : StreamSelectionConfig.fromMap(json["streamSelectionConfig"]),
        daiConfig: json["daiConfig"] == null
            ? null
            : DaiConfig.fromMap(json["daiConfig"]),
        mediaCommonConfig: json["mediaCommonConfig"] == null
            ? null
            : MediaCommonConfig.fromMap(json["mediaCommonConfig"]),
        webPlayerConfig: json["webPlayerConfig"] == null
            ? null
            : WebPlayerConfig.fromMap(json["webPlayerConfig"]),
      );

  Map<String, dynamic> toMap() => {
        "audioConfig": audioConfig == null ? null : audioConfig.toMap(),
        "streamSelectionConfig": streamSelectionConfig == null
            ? null
            : streamSelectionConfig.toMap(),
        "daiConfig": daiConfig == null ? null : daiConfig.toMap(),
        "mediaCommonConfig":
            mediaCommonConfig == null ? null : mediaCommonConfig.toMap(),
        "webPlayerConfig":
            webPlayerConfig == null ? null : webPlayerConfig.toMap(),
      };
}

class AudioConfig {
  AudioConfig({
    this.loudnessDb,
    this.perceptualLoudnessDb,
    this.enablePerFormatLoudness,
  });

  double loudnessDb;
  double perceptualLoudnessDb;
  bool enablePerFormatLoudness;

  factory AudioConfig.fromJson(String str) =>
      AudioConfig.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AudioConfig.fromMap(Map<String, dynamic> json) => AudioConfig(
        loudnessDb:
            json["loudnessDb"] == null ? null : json["loudnessDb"].toDouble(),
        perceptualLoudnessDb: json["perceptualLoudnessDb"] == null
            ? null
            : json["perceptualLoudnessDb"].toDouble(),
        enablePerFormatLoudness: json["enablePerFormatLoudness"] == null
            ? null
            : json["enablePerFormatLoudness"],
      );

  Map<String, dynamic> toMap() => {
        "loudnessDb": loudnessDb == null ? null : loudnessDb,
        "perceptualLoudnessDb":
            perceptualLoudnessDb == null ? null : perceptualLoudnessDb,
        "enablePerFormatLoudness":
            enablePerFormatLoudness == null ? null : enablePerFormatLoudness,
      };
}

class DaiConfig {
  DaiConfig({
    this.enableServerStitchedDai,
  });

  bool enableServerStitchedDai;

  factory DaiConfig.fromJson(String str) => DaiConfig.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DaiConfig.fromMap(Map<String, dynamic> json) => DaiConfig(
        enableServerStitchedDai: json["enableServerStitchedDai"] == null
            ? null
            : json["enableServerStitchedDai"],
      );

  Map<String, dynamic> toMap() => {
        "enableServerStitchedDai":
            enableServerStitchedDai == null ? null : enableServerStitchedDai,
      };
}

class MediaCommonConfig {
  MediaCommonConfig({
    this.dynamicReadaheadConfig,
  });

  DynamicReadaheadConfig dynamicReadaheadConfig;

  factory MediaCommonConfig.fromJson(String str) =>
      MediaCommonConfig.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory MediaCommonConfig.fromMap(Map<String, dynamic> json) =>
      MediaCommonConfig(
        dynamicReadaheadConfig: json["dynamicReadaheadConfig"] == null
            ? null
            : DynamicReadaheadConfig.fromMap(json["dynamicReadaheadConfig"]),
      );

  Map<String, dynamic> toMap() => {
        "dynamicReadaheadConfig": dynamicReadaheadConfig == null
            ? null
            : dynamicReadaheadConfig.toMap(),
      };
}

class DynamicReadaheadConfig {
  DynamicReadaheadConfig({
    this.maxReadAheadMediaTimeMs,
    this.minReadAheadMediaTimeMs,
    this.readAheadGrowthRateMs,
  });

  int maxReadAheadMediaTimeMs;
  int minReadAheadMediaTimeMs;
  int readAheadGrowthRateMs;

  factory DynamicReadaheadConfig.fromJson(String str) =>
      DynamicReadaheadConfig.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DynamicReadaheadConfig.fromMap(Map<String, dynamic> json) =>
      DynamicReadaheadConfig(
        maxReadAheadMediaTimeMs: json["maxReadAheadMediaTimeMs"] == null
            ? null
            : json["maxReadAheadMediaTimeMs"],
        minReadAheadMediaTimeMs: json["minReadAheadMediaTimeMs"] == null
            ? null
            : json["minReadAheadMediaTimeMs"],
        readAheadGrowthRateMs: json["readAheadGrowthRateMs"] == null
            ? null
            : json["readAheadGrowthRateMs"],
      );

  Map<String, dynamic> toMap() => {
        "maxReadAheadMediaTimeMs":
            maxReadAheadMediaTimeMs == null ? null : maxReadAheadMediaTimeMs,
        "minReadAheadMediaTimeMs":
            minReadAheadMediaTimeMs == null ? null : minReadAheadMediaTimeMs,
        "readAheadGrowthRateMs":
            readAheadGrowthRateMs == null ? null : readAheadGrowthRateMs,
      };
}

class StreamSelectionConfig {
  StreamSelectionConfig({
    this.maxBitrate,
  });

  String maxBitrate;

  factory StreamSelectionConfig.fromJson(String str) =>
      StreamSelectionConfig.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StreamSelectionConfig.fromMap(Map<String, dynamic> json) =>
      StreamSelectionConfig(
        maxBitrate: json["maxBitrate"] == null ? null : json["maxBitrate"],
      );

  Map<String, dynamic> toMap() => {
        "maxBitrate": maxBitrate == null ? null : maxBitrate,
      };
}

class WebPlayerConfig {
  WebPlayerConfig({
    this.webPlayerActionsPorting,
  });

  WebPlayerActionsPorting webPlayerActionsPorting;

  factory WebPlayerConfig.fromJson(String str) =>
      WebPlayerConfig.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WebPlayerConfig.fromMap(Map<String, dynamic> json) => WebPlayerConfig(
        webPlayerActionsPorting: json["webPlayerActionsPorting"] == null
            ? null
            : WebPlayerActionsPorting.fromMap(json["webPlayerActionsPorting"]),
      );

  Map<String, dynamic> toMap() => {
        "webPlayerActionsPorting": webPlayerActionsPorting == null
            ? null
            : webPlayerActionsPorting.toMap(),
      };
}

class WebPlayerActionsPorting {
  WebPlayerActionsPorting({
    this.getSharePanelCommand,
    this.subscribeCommand,
    this.unsubscribeCommand,
    this.addToWatchLaterCommand,
    this.removeFromWatchLaterCommand,
  });

  GetSharePanelCommand getSharePanelCommand;
  SubscribeCommand subscribeCommand;
  UnsubscribeCommand unsubscribeCommand;
  AddToWatchLaterCommand addToWatchLaterCommand;
  RemoveFromWatchLaterCommand removeFromWatchLaterCommand;

  factory WebPlayerActionsPorting.fromJson(String str) =>
      WebPlayerActionsPorting.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WebPlayerActionsPorting.fromMap(Map<String, dynamic> json) =>
      WebPlayerActionsPorting(
        getSharePanelCommand: json["getSharePanelCommand"] == null
            ? null
            : GetSharePanelCommand.fromMap(json["getSharePanelCommand"]),
        subscribeCommand: json["subscribeCommand"] == null
            ? null
            : SubscribeCommand.fromMap(json["subscribeCommand"]),
        unsubscribeCommand: json["unsubscribeCommand"] == null
            ? null
            : UnsubscribeCommand.fromMap(json["unsubscribeCommand"]),
        addToWatchLaterCommand: json["addToWatchLaterCommand"] == null
            ? null
            : AddToWatchLaterCommand.fromMap(json["addToWatchLaterCommand"]),
        removeFromWatchLaterCommand: json["removeFromWatchLaterCommand"] == null
            ? null
            : RemoveFromWatchLaterCommand.fromMap(
                json["removeFromWatchLaterCommand"]),
      );

  Map<String, dynamic> toMap() => {
        "getSharePanelCommand":
            getSharePanelCommand == null ? null : getSharePanelCommand.toMap(),
        "subscribeCommand":
            subscribeCommand == null ? null : subscribeCommand.toMap(),
        "unsubscribeCommand":
            unsubscribeCommand == null ? null : unsubscribeCommand.toMap(),
        "addToWatchLaterCommand": addToWatchLaterCommand == null
            ? null
            : addToWatchLaterCommand.toMap(),
        "removeFromWatchLaterCommand": removeFromWatchLaterCommand == null
            ? null
            : removeFromWatchLaterCommand.toMap(),
      };
}

class AddToWatchLaterCommand {
  AddToWatchLaterCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.playlistEditEndpoint,
  });

  String clickTrackingParams;
  ImpressionEndpointCommandMetadata commandMetadata;
  AddToWatchLaterCommandPlaylistEditEndpoint playlistEditEndpoint;

  factory AddToWatchLaterCommand.fromJson(String str) =>
      AddToWatchLaterCommand.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddToWatchLaterCommand.fromMap(Map<String, dynamic> json) =>
      AddToWatchLaterCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ImpressionEndpointCommandMetadata.fromMap(
                json["commandMetadata"]),
        playlistEditEndpoint: json["playlistEditEndpoint"] == null
            ? null
            : AddToWatchLaterCommandPlaylistEditEndpoint.fromMap(
                json["playlistEditEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "playlistEditEndpoint":
            playlistEditEndpoint == null ? null : playlistEditEndpoint.toMap(),
      };
}

class AddToWatchLaterCommandPlaylistEditEndpoint {
  AddToWatchLaterCommandPlaylistEditEndpoint({
    this.playlistId,
    this.actions,
  });

  String playlistId;
  List<PurpleAction> actions;

  factory AddToWatchLaterCommandPlaylistEditEndpoint.fromJson(String str) =>
      AddToWatchLaterCommandPlaylistEditEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddToWatchLaterCommandPlaylistEditEndpoint.fromMap(
          Map<String, dynamic> json) =>
      AddToWatchLaterCommandPlaylistEditEndpoint(
        playlistId: json["playlistId"] == null ? null : json["playlistId"],
        actions: json["actions"] == null
            ? null
            : List<PurpleAction>.from(
                json["actions"].map((x) => PurpleAction.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "playlistId": playlistId == null ? null : playlistId,
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toMap())),
      };
}

class PurpleAction {
  PurpleAction({
    this.addedVideoId,
    this.action,
  });

  String addedVideoId;
  String action;

  factory PurpleAction.fromJson(String str) =>
      PurpleAction.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PurpleAction.fromMap(Map<String, dynamic> json) => PurpleAction(
        addedVideoId:
            json["addedVideoId"] == null ? null : json["addedVideoId"],
        action: json["action"] == null ? null : json["action"],
      );

  Map<String, dynamic> toMap() => {
        "addedVideoId": addedVideoId == null ? null : addedVideoId,
        "action": action == null ? null : action,
      };
}

class GetSharePanelCommand {
  GetSharePanelCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.webPlayerShareEntityServiceEndpoint,
  });

  String clickTrackingParams;
  ImpressionEndpointCommandMetadata commandMetadata;
  WebPlayerShareEntityServiceEndpoint webPlayerShareEntityServiceEndpoint;

  factory GetSharePanelCommand.fromJson(String str) =>
      GetSharePanelCommand.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GetSharePanelCommand.fromMap(Map<String, dynamic> json) =>
      GetSharePanelCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ImpressionEndpointCommandMetadata.fromMap(
                json["commandMetadata"]),
        webPlayerShareEntityServiceEndpoint:
            json["webPlayerShareEntityServiceEndpoint"] == null
                ? null
                : WebPlayerShareEntityServiceEndpoint.fromMap(
                    json["webPlayerShareEntityServiceEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "webPlayerShareEntityServiceEndpoint":
            webPlayerShareEntityServiceEndpoint == null
                ? null
                : webPlayerShareEntityServiceEndpoint.toMap(),
      };
}

class WebPlayerShareEntityServiceEndpoint {
  WebPlayerShareEntityServiceEndpoint({
    this.serializedShareEntity,
  });

  String serializedShareEntity;

  factory WebPlayerShareEntityServiceEndpoint.fromJson(String str) =>
      WebPlayerShareEntityServiceEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WebPlayerShareEntityServiceEndpoint.fromMap(
          Map<String, dynamic> json) =>
      WebPlayerShareEntityServiceEndpoint(
        serializedShareEntity: json["serializedShareEntity"] == null
            ? null
            : json["serializedShareEntity"],
      );

  Map<String, dynamic> toMap() => {
        "serializedShareEntity":
            serializedShareEntity == null ? null : serializedShareEntity,
      };
}

class RemoveFromWatchLaterCommand {
  RemoveFromWatchLaterCommand({
    this.clickTrackingParams,
    this.commandMetadata,
    this.playlistEditEndpoint,
  });

  String clickTrackingParams;
  ImpressionEndpointCommandMetadata commandMetadata;
  RemoveFromWatchLaterCommandPlaylistEditEndpoint playlistEditEndpoint;

  factory RemoveFromWatchLaterCommand.fromJson(String str) =>
      RemoveFromWatchLaterCommand.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RemoveFromWatchLaterCommand.fromMap(Map<String, dynamic> json) =>
      RemoveFromWatchLaterCommand(
        clickTrackingParams: json["clickTrackingParams"] == null
            ? null
            : json["clickTrackingParams"],
        commandMetadata: json["commandMetadata"] == null
            ? null
            : ImpressionEndpointCommandMetadata.fromMap(
                json["commandMetadata"]),
        playlistEditEndpoint: json["playlistEditEndpoint"] == null
            ? null
            : RemoveFromWatchLaterCommandPlaylistEditEndpoint.fromMap(
                json["playlistEditEndpoint"]),
      );

  Map<String, dynamic> toMap() => {
        "clickTrackingParams":
            clickTrackingParams == null ? null : clickTrackingParams,
        "commandMetadata":
            commandMetadata == null ? null : commandMetadata.toMap(),
        "playlistEditEndpoint":
            playlistEditEndpoint == null ? null : playlistEditEndpoint.toMap(),
      };
}

class RemoveFromWatchLaterCommandPlaylistEditEndpoint {
  RemoveFromWatchLaterCommandPlaylistEditEndpoint({
    this.playlistId,
    this.actions,
  });

  String playlistId;
  List<FluffyAction> actions;

  factory RemoveFromWatchLaterCommandPlaylistEditEndpoint.fromJson(
          String str) =>
      RemoveFromWatchLaterCommandPlaylistEditEndpoint.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RemoveFromWatchLaterCommandPlaylistEditEndpoint.fromMap(
          Map<String, dynamic> json) =>
      RemoveFromWatchLaterCommandPlaylistEditEndpoint(
        playlistId: json["playlistId"] == null ? null : json["playlistId"],
        actions: json["actions"] == null
            ? null
            : List<FluffyAction>.from(
                json["actions"].map((x) => FluffyAction.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "playlistId": playlistId == null ? null : playlistId,
        "actions": actions == null
            ? null
            : List<dynamic>.from(actions.map((x) => x.toMap())),
      };
}

class FluffyAction {
  FluffyAction({
    this.action,
    this.removedVideoId,
  });

  String action;
  String removedVideoId;

  factory FluffyAction.fromJson(String str) =>
      FluffyAction.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FluffyAction.fromMap(Map<String, dynamic> json) => FluffyAction(
        action: json["action"] == null ? null : json["action"],
        removedVideoId:
            json["removedVideoId"] == null ? null : json["removedVideoId"],
      );

  Map<String, dynamic> toMap() => {
        "action": action == null ? null : action,
        "removedVideoId": removedVideoId == null ? null : removedVideoId,
      };
}

class ResponseContext {
  ResponseContext({
    this.serviceTrackingParams,
    this.webResponseContextExtensionData,
  });

  List<ServiceTrackingParam> serviceTrackingParams;
  WebResponseContextExtensionData webResponseContextExtensionData;

  factory ResponseContext.fromJson(String str) =>
      ResponseContext.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ResponseContext.fromMap(Map<String, dynamic> json) => ResponseContext(
        serviceTrackingParams: json["serviceTrackingParams"] == null
            ? null
            : List<ServiceTrackingParam>.from(json["serviceTrackingParams"]
                .map((x) => ServiceTrackingParam.fromMap(x))),
        webResponseContextExtensionData:
            json["webResponseContextExtensionData"] == null
                ? null
                : WebResponseContextExtensionData.fromMap(
                    json["webResponseContextExtensionData"]),
      );

  Map<String, dynamic> toMap() => {
        "serviceTrackingParams": serviceTrackingParams == null
            ? null
            : List<dynamic>.from(serviceTrackingParams.map((x) => x.toMap())),
        "webResponseContextExtensionData":
            webResponseContextExtensionData == null
                ? null
                : webResponseContextExtensionData.toMap(),
      };
}

class ServiceTrackingParam {
  ServiceTrackingParam({
    this.service,
    this.params,
  });

  String service;
  List<Param> params;

  factory ServiceTrackingParam.fromJson(String str) =>
      ServiceTrackingParam.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ServiceTrackingParam.fromMap(Map<String, dynamic> json) =>
      ServiceTrackingParam(
        service: json["service"] == null ? null : json["service"],
        params: json["params"] == null
            ? null
            : List<Param>.from(json["params"].map((x) => Param.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "service": service == null ? null : service,
        "params": params == null
            ? null
            : List<dynamic>.from(params.map((x) => x.toMap())),
      };
}

class WebResponseContextExtensionData {
  WebResponseContextExtensionData({
    this.hasDecorated,
  });

  bool hasDecorated;

  factory WebResponseContextExtensionData.fromJson(String str) =>
      WebResponseContextExtensionData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory WebResponseContextExtensionData.fromMap(Map<String, dynamic> json) =>
      WebResponseContextExtensionData(
        hasDecorated:
            json["hasDecorated"] == null ? null : json["hasDecorated"],
      );

  Map<String, dynamic> toMap() => {
        "hasDecorated": hasDecorated == null ? null : hasDecorated,
      };
}

class Storyboards {
  Storyboards({
    this.playerStoryboardSpecRenderer,
  });

  PlayerStoryboardSpecRenderer playerStoryboardSpecRenderer;

  factory Storyboards.fromJson(String str) =>
      Storyboards.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Storyboards.fromMap(Map<String, dynamic> json) => Storyboards(
        playerStoryboardSpecRenderer:
            json["playerStoryboardSpecRenderer"] == null
                ? null
                : PlayerStoryboardSpecRenderer.fromMap(
                    json["playerStoryboardSpecRenderer"]),
      );

  Map<String, dynamic> toMap() => {
        "playerStoryboardSpecRenderer": playerStoryboardSpecRenderer == null
            ? null
            : playerStoryboardSpecRenderer.toMap(),
      };
}

class PlayerStoryboardSpecRenderer {
  PlayerStoryboardSpecRenderer({
    this.spec,
  });

  String spec;

  factory PlayerStoryboardSpecRenderer.fromJson(String str) =>
      PlayerStoryboardSpecRenderer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PlayerStoryboardSpecRenderer.fromMap(Map<String, dynamic> json) =>
      PlayerStoryboardSpecRenderer(
        spec: json["spec"] == null ? null : json["spec"],
      );

  Map<String, dynamic> toMap() => {
        "spec": spec == null ? null : spec,
      };
}

class StreamingData {
  StreamingData({
    this.expiresInSeconds,
    this.formats,
    this.adaptiveFormats,
  });

  String expiresInSeconds;
  List<Format> formats;
  List<Format> adaptiveFormats;

  factory StreamingData.fromJson(String str) =>
      StreamingData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StreamingData.fromMap(Map<String, dynamic> json) => StreamingData(
        expiresInSeconds:
            json["expiresInSeconds"] == null ? null : json["expiresInSeconds"],
        formats: json["formats"] == null
            ? null
            : List<Format>.from(json["formats"].map((x) => Format.fromMap(x))),
        adaptiveFormats: json["adaptiveFormats"] == null
            ? null
            : List<Format>.from(
                json["adaptiveFormats"].map((x) => Format.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "expiresInSeconds": expiresInSeconds == null ? null : expiresInSeconds,
        "formats": formats == null
            ? null
            : List<dynamic>.from(formats.map((x) => x.toMap())),
        "adaptiveFormats": adaptiveFormats == null
            ? null
            : List<dynamic>.from(adaptiveFormats.map((x) => x.toMap())),
      };
}

class Format {
  Format({
    this.itag,
    this.url,
    this.mimeType,
    this.bitrate,
    this.width,
    this.height,
    this.initRange,
    this.indexRange,
    this.lastModified,
    this.contentLength,
    this.quality,
    this.fps,
    this.qualityLabel,
    this.projectionType,
    this.averageBitrate,
    this.approxDurationMs,
    this.colorInfo,
    this.highReplication,
    this.audioQuality,
    this.audioSampleRate,
    this.audioChannels,
    this.loudnessDb,
  });

  int itag;
  String url;
  String mimeType;
  int bitrate;
  int width;
  int height;
  Range initRange;
  Range indexRange;
  String lastModified;
  String contentLength;
  String quality;
  int fps;
  String qualityLabel;
  ProjectionType projectionType;
  int averageBitrate;
  String approxDurationMs;
  ColorInfo colorInfo;
  bool highReplication;
  String audioQuality;
  String audioSampleRate;
  int audioChannels;
  double loudnessDb;

  factory Format.fromJson(String str) => Format.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Format.fromMap(Map<String, dynamic> json) => Format(
        itag: json["itag"] == null ? null : json["itag"],
        url: json["url"] == null ? null : json["url"],
        mimeType: json["mimeType"] == null ? null : json["mimeType"],
        bitrate: json["bitrate"] == null ? null : json["bitrate"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
        initRange:
            json["initRange"] == null ? null : Range.fromMap(json["initRange"]),
        indexRange: json["indexRange"] == null
            ? null
            : Range.fromMap(json["indexRange"]),
        lastModified:
            json["lastModified"] == null ? null : json["lastModified"],
        contentLength:
            json["contentLength"] == null ? null : json["contentLength"],
        quality: json["quality"] == null ? null : json["quality"],
        fps: json["fps"] == null ? null : json["fps"],
        qualityLabel:
            json["qualityLabel"] == null ? null : json["qualityLabel"],
        projectionType: json["projectionType"] == null
            ? null
            : projectionTypeValues.map[json["projectionType"]],
        averageBitrate:
            json["averageBitrate"] == null ? null : json["averageBitrate"],
        approxDurationMs:
            json["approxDurationMs"] == null ? null : json["approxDurationMs"],
        colorInfo: json["colorInfo"] == null
            ? null
            : ColorInfo.fromMap(json["colorInfo"]),
        highReplication:
            json["highReplication"] == null ? null : json["highReplication"],
        audioQuality:
            json["audioQuality"] == null ? null : json["audioQuality"],
        audioSampleRate:
            json["audioSampleRate"] == null ? null : json["audioSampleRate"],
        audioChannels:
            json["audioChannels"] == null ? null : json["audioChannels"],
        loudnessDb:
            json["loudnessDb"] == null ? null : json["loudnessDb"].toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "itag": itag == null ? null : itag,
        "url": url == null ? null : url,
        "mimeType": mimeType == null ? null : mimeType,
        "bitrate": bitrate == null ? null : bitrate,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "initRange": initRange == null ? null : initRange.toMap(),
        "indexRange": indexRange == null ? null : indexRange.toMap(),
        "lastModified": lastModified == null ? null : lastModified,
        "contentLength": contentLength == null ? null : contentLength,
        "quality": quality == null ? null : quality,
        "fps": fps == null ? null : fps,
        "qualityLabel": qualityLabel == null ? null : qualityLabel,
        "projectionType": projectionType == null
            ? null
            : projectionTypeValues.reverse[projectionType],
        "averageBitrate": averageBitrate == null ? null : averageBitrate,
        "approxDurationMs": approxDurationMs == null ? null : approxDurationMs,
        "colorInfo": colorInfo == null ? null : colorInfo.toMap(),
        "highReplication": highReplication == null ? null : highReplication,
        "audioQuality": audioQuality == null ? null : audioQuality,
        "audioSampleRate": audioSampleRate == null ? null : audioSampleRate,
        "audioChannels": audioChannels == null ? null : audioChannels,
        "loudnessDb": loudnessDb == null ? null : loudnessDb,
      };
}

class ColorInfo {
  ColorInfo({
    this.primaries,
    this.transferCharacteristics,
    this.matrixCoefficients,
  });

  Primaries primaries;
  TransferCharacteristics transferCharacteristics;
  MatrixCoefficients matrixCoefficients;

  factory ColorInfo.fromJson(String str) => ColorInfo.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ColorInfo.fromMap(Map<String, dynamic> json) => ColorInfo(
        primaries: json["primaries"] == null
            ? null
            : primariesValues.map[json["primaries"]],
        transferCharacteristics: json["transferCharacteristics"] == null
            ? null
            : transferCharacteristicsValues
                .map[json["transferCharacteristics"]],
        matrixCoefficients: json["matrixCoefficients"] == null
            ? null
            : matrixCoefficientsValues.map[json["matrixCoefficients"]],
      );

  Map<String, dynamic> toMap() => {
        "primaries":
            primaries == null ? null : primariesValues.reverse[primaries],
        "transferCharacteristics": transferCharacteristics == null
            ? null
            : transferCharacteristicsValues.reverse[transferCharacteristics],
        "matrixCoefficients": matrixCoefficients == null
            ? null
            : matrixCoefficientsValues.reverse[matrixCoefficients],
      };
}

enum MatrixCoefficients { COLOR_MATRIX_COEFFICIENTS_BT709 }

final matrixCoefficientsValues = EnumValues({
  "COLOR_MATRIX_COEFFICIENTS_BT709":
      MatrixCoefficients.COLOR_MATRIX_COEFFICIENTS_BT709
});

enum Primaries { COLOR_PRIMARIES_BT709 }

final primariesValues =
    EnumValues({"COLOR_PRIMARIES_BT709": Primaries.COLOR_PRIMARIES_BT709});

enum TransferCharacteristics { COLOR_TRANSFER_CHARACTERISTICS_BT709 }

final transferCharacteristicsValues = EnumValues({
  "COLOR_TRANSFER_CHARACTERISTICS_BT709":
      TransferCharacteristics.COLOR_TRANSFER_CHARACTERISTICS_BT709
});

class Range {
  Range({
    this.start,
    this.end,
  });

  String start;
  String end;

  factory Range.fromJson(String str) => Range.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Range.fromMap(Map<String, dynamic> json) => Range(
        start: json["start"] == null ? null : json["start"],
        end: json["end"] == null ? null : json["end"],
      );

  Map<String, dynamic> toMap() => {
        "start": start == null ? null : start,
        "end": end == null ? null : end,
      };
}

enum ProjectionType { RECTANGULAR }

final projectionTypeValues =
    EnumValues({"RECTANGULAR": ProjectionType.RECTANGULAR});

class VideoDetails {
  VideoDetails({
    this.videoId,
    this.title,
    this.lengthSeconds,
    this.keywords,
    this.channelId,
    this.isOwnerViewing,
    this.shortDescription,
    this.isCrawlable,
    this.thumbnail,
    this.averageRating,
    this.allowRatings,
    this.viewCount,
    this.author,
    this.isPrivate,
    this.isUnpluggedCorpus,
    this.isLiveContent,
  });

  String videoId;
  String title;
  String lengthSeconds;
  List<String> keywords;
  String channelId;
  bool isOwnerViewing;
  String shortDescription;
  bool isCrawlable;
  IconClass thumbnail;
  double averageRating;
  bool allowRatings;
  String viewCount;
  String author;
  bool isPrivate;
  bool isUnpluggedCorpus;
  bool isLiveContent;

  factory VideoDetails.fromJson(String str) =>
      VideoDetails.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VideoDetails.fromMap(Map<String, dynamic> json) => VideoDetails(
        videoId: json["videoId"] == null ? null : json["videoId"],
        title: json["title"] == null ? null : json["title"],
        lengthSeconds:
            json["lengthSeconds"] == null ? null : json["lengthSeconds"],
        keywords: json["keywords"] == null
            ? null
            : List<String>.from(json["keywords"].map((x) => x)),
        channelId: json["channelId"] == null ? null : json["channelId"],
        isOwnerViewing:
            json["isOwnerViewing"] == null ? null : json["isOwnerViewing"],
        shortDescription:
            json["shortDescription"] == null ? null : json["shortDescription"],
        isCrawlable: json["isCrawlable"] == null ? null : json["isCrawlable"],
        thumbnail: json["thumbnail"] == null
            ? null
            : IconClass.fromMap(json["thumbnail"]),
        averageRating: json["averageRating"] == null
            ? null
            : json["averageRating"].toDouble(),
        allowRatings:
            json["allowRatings"] == null ? null : json["allowRatings"],
        viewCount: json["viewCount"] == null ? null : json["viewCount"],
        author: json["author"] == null ? null : json["author"],
        isPrivate: json["isPrivate"] == null ? null : json["isPrivate"],
        isUnpluggedCorpus: json["isUnpluggedCorpus"] == null
            ? null
            : json["isUnpluggedCorpus"],
        isLiveContent:
            json["isLiveContent"] == null ? null : json["isLiveContent"],
      );

  Map<String, dynamic> toMap() => {
        "videoId": videoId == null ? null : videoId,
        "title": title == null ? null : title,
        "lengthSeconds": lengthSeconds == null ? null : lengthSeconds,
        "keywords": keywords == null
            ? null
            : List<dynamic>.from(keywords.map((x) => x)),
        "channelId": channelId == null ? null : channelId,
        "isOwnerViewing": isOwnerViewing == null ? null : isOwnerViewing,
        "shortDescription": shortDescription == null ? null : shortDescription,
        "isCrawlable": isCrawlable == null ? null : isCrawlable,
        "thumbnail": thumbnail == null ? null : thumbnail.toMap(),
        "averageRating": averageRating == null ? null : averageRating,
        "allowRatings": allowRatings == null ? null : allowRatings,
        "viewCount": viewCount == null ? null : viewCount,
        "author": author == null ? null : author,
        "isPrivate": isPrivate == null ? null : isPrivate,
        "isUnpluggedCorpus":
            isUnpluggedCorpus == null ? null : isUnpluggedCorpus,
        "isLiveContent": isLiveContent == null ? null : isLiveContent,
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
